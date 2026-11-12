// missing_sort.zig - Zig port of src/missing_sort.c
//
// Supplies the quadsort merge primitives that translate-c could not express:
// the goto-heavy cross_merge / partial_forward_merge / partial_backward_merge
// routines and quad_swap, in 32- and 64-bit flavours.  sort.zig declares the
// eight entry points below as `pub extern fn` and exports the helpers called
// here, so the two objects resolve against each other at link time exactly
// like the old C arrangement.
//
// The control flow mirrors the C original 1:1; the goto webs are replaced by
// labeled loops (for the bulk-copy drains) and a three-state machine in
// quad_swap (normal / ordered / reversed block scanning).  The C macros
// head_branchless_merge / tail_branchless_merge (non-clang variants, the ones
// gcc compiled) are expanded inline.

const std = @import("std");

pub const CMPFUNC = fn (a: ?*const anyopaque, b: ?*const anyopaque) callconv(.c) c_int;

const QUAD_CACHE = 262144;

// Helpers implemented in sort.zig.
pub extern fn quad_swap_merge32(array: [*c]c_int, swap: [*c]c_int, cmp: ?*const CMPFUNC) void;
pub extern fn quad_reversal32(pts: [*c]c_int, pta: [*c]c_int) void;
pub extern fn tail_swap32(pta: [*c]c_int, swap: [*c]c_int, nmemb: usize, cmp: ?*const CMPFUNC) void;
pub extern fn parity_merge32(dest: [*c]c_int, from: [*c]c_int, left: usize, right: usize, cmp: ?*const CMPFUNC) void;
pub extern fn tail_merge32(array: [*c]c_int, swap: [*c]c_int, swap_size: usize, nmemb: usize, block: usize, cmp: ?*const CMPFUNC) void;

pub extern fn quad_swap_merge64(array: [*c]c_longlong, swap: [*c]c_longlong, cmp: ?*const CMPFUNC) void;
pub extern fn quad_reversal64(pts: [*c]c_longlong, pta: [*c]c_longlong) void;
pub extern fn tail_swap64(pta: [*c]c_longlong, swap: [*c]c_longlong, nmemb: usize, cmp: ?*const CMPFUNC) void;
pub extern fn parity_merge64(dest: [*c]c_longlong, from: [*c]c_longlong, left: usize, right: usize, cmp: ?*const CMPFUNC) void;
pub extern fn tail_merge64(array: [*c]c_longlong, swap: [*c]c_longlong, swap_size: usize, nmemb: usize, block: usize, cmp: ?*const CMPFUNC) void;

// ---------------------------------------------------------------------------
// small utilities
// ---------------------------------------------------------------------------

// Invoke the comparator on two element pointers (CMPFUNC takes const void *).
inline fn cmpv(cmp: ?*const CMPFUNC, a: anytype, b: anytype) c_int {
    return cmp.?(@ptrCast(a), @ptrCast(b));
}

// C pointer orderings (both pointers belong to the same allocation).
inline fn pLE(a: anytype, b: @TypeOf(a)) bool {
    return @intFromPtr(a) <= @intFromPtr(b);
}
inline fn pLT(a: anytype, b: @TypeOf(a)) bool {
    return @intFromPtr(a) < @intFromPtr(b);
}
inline fn pGE(a: anytype, b: @TypeOf(a)) bool {
    return @intFromPtr(a) >= @intFromPtr(b);
}
inline fn pGT(a: anytype, b: @TypeOf(a)) bool {
    return @intFromPtr(a) > @intFromPtr(b);
}

// Element distance a - b for pointers into the same array.
inline fn pDiff(comptime T: type, a: [*c]T, b: [*c]T) isize {
    return @divExact(@as(isize, @bitCast(@intFromPtr(a) -% @intFromPtr(b))), @as(isize, @sizeOf(T)));
}

inline fn copyN(comptime T: type, dest: [*c]T, src: [*c]T, n: usize) void {
    @memcpy(@as([*]T, @ptrCast(dest))[0..n], @as([*]T, @ptrCast(src))[0..n]);
}

// The C `x = !vN; tmp = pta[x]; pta[0] = pta[vN]; pta[1] = tmp;` sequence:
// swap the pair iff vN == 1, leave it alone otherwise.  quad_swap uses this
// with descending-pair indicators (normal blocks) and ascending-pair
// indicators (blocks found inside a reversed run) - the swap condition is
// simply "the pair is out of order for the run being built".
inline fn quadPairSwap(comptime T: type, pta: [*c]T, v1: u8, v2: u8, v3: u8, v4: u8) void {
    if (v1 != 0) {
        const tmp = pta[0];
        pta[0] = pta[1];
        pta[1] = tmp;
    }
    if (v2 != 0) {
        const tmp = pta[2];
        pta[2] = pta[3];
        pta[3] = tmp;
    }
    if (v3 != 0) {
        const tmp = pta[4];
        pta[4] = pta[5];
        pta[5] = tmp;
    }
    if (v4 != 0) {
        const tmp = pta[6];
        pta[6] = pta[7];
        pta[7] = tmp;
    }
}

// ---------------------------------------------------------------------------
// 32-bit merges
// ---------------------------------------------------------------------------

pub export fn cross_merge32(arg_dest: [*c]c_int, arg_from: [*c]c_int, arg_left: usize, arg_right: usize, arg_cmp: ?*const CMPFUNC) void {
    const dest = arg_dest;
    const from = arg_from;
    const left = arg_left;
    const right = arg_right;
    const cmp = arg_cmp;

    var ptl: [*c]c_int = from;
    var ptr: [*c]c_int = from + left;
    var tpl: [*c]c_int = ptr - 1;
    var tpr: [*c]c_int = tpl + right;

    if (left + 1 >= right and right >= left and left >= 32) {
        if (cmpv(cmp, ptl + 15, ptr) > 0 and cmpv(cmp, ptl, ptr + 15) <= 0 and cmpv(cmp, tpl, tpr - 15) > 0 and cmpv(cmp, tpl - 15, tpr) <= 0) {
            parity_merge32(dest, from, left, right, cmp);
            return;
        }
    }

    var ptd: [*c]c_int = dest;
    var tpd: [*c]c_int = dest + (left + right) - 1;

    main_loop: while (true) {
        if (pDiff(c_int, tpl, ptl) > 8) {
            // ptl8_ptr: left run wins in bulk from the front
            while (cmpv(cmp, ptl + 7, ptr) <= 0) {
                copyN(c_int, ptd, ptl, 8);
                ptd += 8;
                ptl += 8;
                if (pDiff(c_int, tpl, ptl) <= 8) continue :main_loop;
            }
            // tpl8_tpr: left run wins in bulk from the back
            while (cmpv(cmp, tpl - 7, tpr) > 0) {
                tpd -= 7;
                tpl -= 7;
                copyN(c_int, tpd, tpl, 8);
                tpd -= 1;
                tpl -= 1;
                if (pDiff(c_int, tpl, ptl) <= 8) continue :main_loop;
            }
        }

        if (pDiff(c_int, tpr, ptr) > 8) {
            // ptl_ptr8: right run wins in bulk from the front
            while (cmpv(cmp, ptl, ptr + 7) > 0) {
                copyN(c_int, ptd, ptr, 8);
                ptd += 8;
                ptr += 8;
                if (pDiff(c_int, tpr, ptr) <= 8) continue :main_loop;
            }
            // tpl_tpr8: right run wins in bulk from the back
            while (cmpv(cmp, tpl, tpr - 7) <= 0) {
                tpd -= 7;
                tpr -= 7;
                copyN(c_int, tpd, tpr, 8);
                tpd -= 1;
                tpr -= 1;
                if (pDiff(c_int, tpr, ptr) <= 8) continue :main_loop;
            }
        }

        if (pDiff(c_int, tpd, ptd) < 16) break;

        if (left > QUAD_CACHE) {
            // cache-sensitive branching merge
            var loop: usize = 8;
            while (true) {
                if (cmpv(cmp, ptl, ptr) <= 0) {
                    ptd.* = ptl.*;
                    ptl += 1;
                } else {
                    ptd.* = ptr.*;
                    ptr += 1;
                }
                ptd += 1;
                if (cmpv(cmp, tpl, tpr) > 0) {
                    tpd.* = tpl.*;
                    tpl -= 1;
                } else {
                    tpd.* = tpr.*;
                    tpr -= 1;
                }
                tpd -= 1;
                loop -= 1;
                if (loop == 0) break;
            }
        } else {
            // head_branchless_merge / tail_branchless_merge
            var loop: usize = 8;
            while (true) {
                const x: usize = @intFromBool(cmpv(cmp, ptl, ptr) <= 0);
                ptd.* = ptl.*;
                ptl += x;
                ptd[x] = ptr.*;
                ptr += @intFromBool(x == 0);
                ptd += 1;

                const y: usize = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
                tpd.* = tpl.*;
                tpl -= @intFromBool(y == 0);
                tpd -= 1;
                tpd[y] = tpr.*;
                tpr -= y;

                loop -= 1;
                if (loop == 0) break;
            }
        }
    }

    while (pLE(ptl, tpl) and pLE(ptr, tpr)) {
        if (cmpv(cmp, ptl, ptr) <= 0) {
            ptd.* = ptl.*;
            ptl += 1;
        } else {
            ptd.* = ptr.*;
            ptr += 1;
        }
        ptd += 1;
    }
    while (pLE(ptl, tpl)) {
        ptd.* = ptl.*;
        ptl += 1;
        ptd += 1;
    }
    while (pLE(ptr, tpr)) {
        ptd.* = ptr.*;
        ptr += 1;
        ptd += 1;
    }
}

pub export fn partial_forward_merge32(arg_array: [*c]c_int, arg_swap: [*c]c_int, arg_swap_size: usize, arg_nmemb: usize, arg_block: usize, arg_cmp: ?*const CMPFUNC) void {
    var array = arg_array;
    const swap = arg_swap;
    _ = arg_swap_size;
    const nmemb = arg_nmemb;
    const block = arg_block;
    const cmp = arg_cmp;

    if (nmemb == block) {
        return;
    }

    var ptr: [*c]c_int = array + block;
    const tpr: [*c]c_int = array + nmemb - 1;

    if (cmpv(cmp, ptr - 1, ptr) <= 0) {
        return;
    }

    copyN(c_int, swap, array, block);

    var ptl: [*c]c_int = swap;
    const tpl: [*c]c_int = swap + block - 1;

    outer: while (pLT(ptl, tpl - 1) and pLT(ptr, tpr - 1)) {
        // ptr2: drain the right run two at a time
        while (cmpv(cmp, ptl, ptr + 1) > 0) {
            array.* = ptr.*;
            array += 1;
            ptr += 1;
            array.* = ptr.*;
            array += 1;
            ptr += 1;
            if (!pLT(ptr, tpr - 1)) break :outer;
        }

        if (cmpv(cmp, ptl + 1, ptr) <= 0) {
            // one-shot ptl advance, then fall into the ptl2 drain
            array.* = ptl.*;
            array += 1;
            ptl += 1;
            array.* = ptl.*;
            array += 1;
            ptl += 1;
            if (!pLT(ptl, tpl - 1)) break :outer;

            // ptl2: drain the left run two at a time
            while (cmpv(cmp, ptl + 1, ptr) <= 0) {
                array.* = ptl.*;
                array += 1;
                ptl += 1;
                array.* = ptl.*;
                array += 1;
                ptl += 1;
                if (!pLT(ptl, tpl - 1)) break :outer;
            }

            // drain the right run again; while there is margin a `goto
            // ptr2` restarts the whole loop body (the ptr2 label sits at
            // its top), so the ptl branch below is re-evaluated as well
            while (cmpv(cmp, ptl, ptr + 1) > 0) {
                array.* = ptr.*;
                array += 1;
                ptr += 1;
                array.* = ptr.*;
                array += 1;
                ptr += 1;
                if (pLT(ptr, tpr - 1)) continue :outer;
                break :outer;
            }
        }

        // cross_swap + head_branchless_merge
        var x: usize = @intFromBool(cmpv(cmp, ptl, ptr) <= 0);
        array[x] = ptr.*;
        ptr += 1;
        array[@intFromBool(x == 0)] = ptl.*;
        ptl += 1;
        array += 2;

        x = @intFromBool(cmpv(cmp, ptl, ptr) <= 0);
        array.* = ptl.*;
        ptl += x;
        array[x] = ptr.*;
        ptr += @intFromBool(x == 0);
        array += 1;
    }

    while (pLE(ptl, tpl) and pLE(ptr, tpr)) {
        if (cmpv(cmp, ptl, ptr) <= 0) {
            array.* = ptl.*;
            ptl += 1;
        } else {
            array.* = ptr.*;
            ptr += 1;
        }
        array += 1;
    }
    while (pLE(ptl, tpl)) {
        array.* = ptl.*;
        ptl += 1;
        array += 1;
    }
}

pub export fn partial_backward_merge32(arg_array: [*c]c_int, arg_swap: [*c]c_int, arg_swap_size: usize, arg_nmemb: usize, arg_block: usize, arg_cmp: ?*const CMPFUNC) void {
    const array = arg_array;
    const swap = arg_swap;
    const swap_size = arg_swap_size;
    const nmemb = arg_nmemb;
    const block = arg_block;
    const cmp = arg_cmp;

    if (nmemb == block) {
        return;
    }

    var tpl: [*c]c_int = array + block - 1;
    var tpa: [*c]c_int = array + nmemb - 1;

    if (cmpv(cmp, tpl, tpl + 1) <= 0) {
        return;
    }

    const right = nmemb - block;

    if (nmemb <= swap_size and right >= 64) {
        cross_merge32(swap, array, block, right, cmp);
        copyN(c_int, array, swap, nmemb);
        return;
    }

    copyN(c_int, swap, array + block, right);

    var tpr: [*c]c_int = swap + right - 1;

    big: while (pGT(tpl, array + 16) and pGT(tpr, swap + 16)) {
        // tpl_tpr16: right run tails in bulk
        while (cmpv(cmp, tpl, tpr - 15) <= 0) {
            var loop: usize = 16;
            while (true) {
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                loop -= 1;
                if (loop == 0) break;
            }
            if (!pGT(tpr, swap + 16)) break :big;
        }

        // tpl16_tpr: left run tails in bulk
        while (cmpv(cmp, tpl - 15, tpr) > 0) {
            var loop: usize = 16;
            while (true) {
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                loop -= 1;
                if (loop == 0) break;
            }
            if (!pGT(tpl, array + 16)) break :big;
        }

        var loop: usize = 8;
        while (true) {
            if (cmpv(cmp, tpl, tpr - 1) <= 0) {
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
            } else if (cmpv(cmp, tpl - 1, tpr) > 0) {
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
            } else {
                var x: usize = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
                tpa -= 1;
                tpa[x] = tpr.*;
                tpr -= 1;
                tpa[@intFromBool(x == 0)] = tpl.*;
                tpl -= 1;
                tpa -= 1;

                // tail_branchless_merge
                x = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
                tpa.* = tpl.*;
                tpl -= @intFromBool(x == 0);
                tpa -= 1;
                tpa[x] = tpr.*;
                tpr -= x;
            }
            loop -= 1;
            if (loop == 0) break;
        }
    }

    small: while (pGT(tpr, swap + 1) and pGT(tpl, array + 1)) {
        // tpr2: drain right-run tails two at a time
        while (cmpv(cmp, tpl, tpr - 1) <= 0) {
            tpa.* = tpr.*;
            tpa -= 1;
            tpr -= 1;
            tpa.* = tpr.*;
            tpa -= 1;
            tpr -= 1;
            if (!pGT(tpr, swap + 1)) break :small;
        }

        if (cmpv(cmp, tpl - 1, tpr) > 0) {
            // one-shot tpl advance, then fall into the tpl2 drain
            tpa.* = tpl.*;
            tpa -= 1;
            tpl -= 1;
            tpa.* = tpl.*;
            tpa -= 1;
            tpl -= 1;
            if (!pGT(tpl, array + 1)) break :small;

            // tpl2: drain left-run tails two at a time
            while (cmpv(cmp, tpl - 1, tpr) > 0) {
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                if (!pGT(tpl, array + 1)) break :small;
            }

            // drain right-run tails again; while there is margin a
            // `goto tpr2` restarts the whole loop body (the tpr2 label
            // sits at its top), so the tpl branch above is re-evaluated
            while (cmpv(cmp, tpl, tpr - 1) <= 0) {
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                if (pGT(tpr, swap + 1)) continue :small;
                break :small;
            }
        }

        // cross_swap + tail_branchless_merge
        var x: usize = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
        tpa -= 1;
        tpa[x] = tpr.*;
        tpr -= 1;
        tpa[@intFromBool(x == 0)] = tpl.*;
        tpl -= 1;
        tpa -= 1;

        x = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
        tpa.* = tpl.*;
        tpl -= @intFromBool(x == 0);
        tpa -= 1;
        tpa[x] = tpr.*;
        tpr -= x;
    }

    while (pGE(tpr, swap) and pGE(tpl, array)) {
        if (cmpv(cmp, tpl, tpr) > 0) {
            tpa.* = tpl.*;
            tpl -= 1;
        } else {
            tpa.* = tpr.*;
            tpr -= 1;
        }
        tpa -= 1;
    }
    while (pGE(tpr, swap)) {
        tpa.* = tpr.*;
        tpr -= 1;
        tpa -= 1;
    }
}

pub export fn quad_swap32(arg_array: [*c]c_int, arg_nmemb: usize, arg_cmp: ?*const CMPFUNC) usize {
    const array = arg_array;
    const nmemb = arg_nmemb;
    const cmp = arg_cmp;

    var swap: [32]c_int = undefined;
    const swap_ptr: [*c]c_int = @ptrCast(&swap);

    var count: usize = nmemb / 8;
    var pta: [*c]c_int = array;
    var pts: [*c]c_int = undefined;
    var v1: u8 = undefined;
    var v2: u8 = undefined;
    var v3: u8 = undefined;
    var v4: u8 = undefined;

    // The C routine jumps between three block-scanning fast paths
    // (ordered / reversed) and the regular per-block analysis.  In C,
    // `goto ordered` / `goto reversed` first advance pta by 8 at the
    // target label and then consume one more unit of `count`; the
    // transitions below perform that advance inline.
    const Mode = enum { normal, ordered, reversed };
    var mode: Mode = .normal;
    var skip_tail_swap = false;

    outer: while (true) {
        switch (mode) {
            .normal => {
                if (count == 0) break :outer;
                count -= 1;

                v1 = @intFromBool(cmpv(cmp, pta + 0, pta + 1) > 0);
                v2 = @intFromBool(cmpv(cmp, pta + 2, pta + 3) > 0);
                v3 = @intFromBool(cmpv(cmp, pta + 4, pta + 5) > 0);
                v4 = @intFromBool(cmpv(cmp, pta + 6, pta + 7) > 0);

                switch (v1 + v2 * 2 + v3 * 4 + v4 * 8) {
                    0 => {
                        if (cmpv(cmp, pta + 1, pta + 2) <= 0 and cmpv(cmp, pta + 3, pta + 4) <= 0 and cmpv(cmp, pta + 5, pta + 6) <= 0) {
                            pta += 8;
                            mode = .ordered;
                            continue :outer;
                        }
                        quad_swap_merge32(pta, swap_ptr, cmp);
                    },
                    15 => {
                        if (cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                            pts = pta;
                            pta += 8;
                            mode = .reversed;
                            continue :outer;
                        }
                        // case 15 falls through to not_ordered
                        quadPairSwap(c_int, pta, v1, v2, v3, v4);
                        quad_swap_merge32(pta, swap_ptr, cmp);
                    },
                    else => {
                        // not_ordered
                        quadPairSwap(c_int, pta, v1, v2, v3, v4);
                        quad_swap_merge32(pta, swap_ptr, cmp);
                    },
                }
                pta += 8;
            },
            .ordered => {
                if (count == 0) break :outer;
                count -= 1;

                v1 = @intFromBool(cmpv(cmp, pta + 0, pta + 1) > 0);
                v2 = @intFromBool(cmpv(cmp, pta + 2, pta + 3) > 0);
                v3 = @intFromBool(cmpv(cmp, pta + 4, pta + 5) > 0);
                v4 = @intFromBool(cmpv(cmp, pta + 6, pta + 7) > 0);

                if ((v1 | v2 | v3 | v4) != 0) {
                    if (v1 + v2 + v3 + v4 == 4 and cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                        pts = pta;
                        pta += 8;
                        mode = .reversed;
                        continue :outer;
                    }
                    // goto not_ordered
                    quadPairSwap(c_int, pta, v1, v2, v3, v4);
                    quad_swap_merge32(pta, swap_ptr, cmp);
                    pta += 8;
                    mode = .normal;
                    continue :outer;
                }

                if (cmpv(cmp, pta + 1, pta + 2) <= 0 and cmpv(cmp, pta + 3, pta + 4) <= 0 and cmpv(cmp, pta + 5, pta + 6) <= 0) {
                    pta += 8;
                    continue :outer; // still ordered
                }

                quad_swap_merge32(pta, swap_ptr, cmp);
                pta += 8;
                mode = .normal;
            },
            .reversed => {
                if (count == 0) {
                    // Count exhausted: finish the reversed run.  The C
                    // cascading switch checks that the remaining tail
                    // (nmemb % 8 elements) keeps descending all the way
                    // from pts; case k examines (pta + k - 2, pta + k - 1).
                    const r = nmemb % 8;
                    var fully_descending = true;
                    var k: usize = r;
                    while (k > 0) : (k -= 1) {
                        const hi = pta + (k - 1);
                        const lo = if (k >= 2) pta + (k - 2) else pta - 1;
                        if (cmpv(cmp, lo, hi) <= 0) {
                            fully_descending = false;
                            break;
                        }
                    }

                    if (fully_descending) {
                        quad_reversal32(pts, pta + r - 1);
                        if (pts == array) {
                            return 1;
                        }
                        skip_tail_swap = true; // goto reverse_end
                    } else {
                        quad_reversal32(pts, pta - 1);
                    }
                    break :outer;
                }
                count -= 1;

                v1 = @intFromBool(cmpv(cmp, pta + 0, pta + 1) <= 0);
                v2 = @intFromBool(cmpv(cmp, pta + 2, pta + 3) <= 0);
                v3 = @intFromBool(cmpv(cmp, pta + 4, pta + 5) <= 0);
                v4 = @intFromBool(cmpv(cmp, pta + 6, pta + 7) <= 0);

                if ((v1 | v2 | v3 | v4) == 0) {
                    if (cmpv(cmp, pta - 1, pta) > 0 and cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                        pta += 8;
                        continue :outer; // still reversed
                    }
                }

                quad_reversal32(pts, pta - 1);

                if (v1 + v2 + v3 + v4 == 4 and cmpv(cmp, pta + 1, pta + 2) <= 0 and cmpv(cmp, pta + 3, pta + 4) <= 0 and cmpv(cmp, pta + 5, pta + 6) <= 0) {
                    pta += 8;
                    mode = .ordered;
                    continue :outer;
                }
                if (v1 + v2 + v3 + v4 == 0 and cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                    pts = pta;
                    pta += 8;
                    continue :outer; // new reversed run
                }

                quadPairSwap(c_int, pta, v1, v2, v3, v4);
                if (cmpv(cmp, pta + 1, pta + 2) > 0 or cmpv(cmp, pta + 3, pta + 4) > 0 or cmpv(cmp, pta + 5, pta + 6) > 0) {
                    quad_swap_merge32(pta, swap_ptr, cmp);
                }
                pta += 8;
                mode = .normal;
            },
        }
    }

    if (!skip_tail_swap) {
        tail_swap32(pta, swap_ptr, nmemb % 8, cmp);
    }

    // reverse_end: merge the sorted 32-blocks
    pta = array;
    count = nmemb / 32;
    while (count != 0) : ({
        count -= 1;
        pta += 32;
    }) {
        if (cmpv(cmp, pta + 7, pta + 8) <= 0 and cmpv(cmp, pta + 15, pta + 16) <= 0 and cmpv(cmp, pta + 23, pta + 24) <= 0) {
            continue;
        }
        parity_merge32(swap_ptr, pta, 8, 8, cmp);
        parity_merge32(swap_ptr + 16, pta + 16, 8, 8, cmp);
        parity_merge32(pta, swap_ptr, 16, 16, cmp);
    }

    if (nmemb % 32 > 8) {
        tail_merge32(pta, swap_ptr, 32, nmemb % 32, 8, cmp);
    }
    return 0;
}

// ---------------------------------------------------------------------------
// 64-bit merges
// ---------------------------------------------------------------------------

pub export fn cross_merge64(arg_dest: [*c]c_longlong, arg_from: [*c]c_longlong, arg_left: usize, arg_right: usize, arg_cmp: ?*const CMPFUNC) void {
    const dest = arg_dest;
    const from = arg_from;
    const left = arg_left;
    const right = arg_right;
    const cmp = arg_cmp;

    var ptl: [*c]c_longlong = from;
    var ptr: [*c]c_longlong = from + left;
    var tpl: [*c]c_longlong = ptr - 1;
    var tpr: [*c]c_longlong = tpl + right;

    if (left + 1 >= right and right >= left and left >= 32) {
        if (cmpv(cmp, ptl + 15, ptr) > 0 and cmpv(cmp, ptl, ptr + 15) <= 0 and cmpv(cmp, tpl, tpr - 15) > 0 and cmpv(cmp, tpl - 15, tpr) <= 0) {
            parity_merge64(dest, from, left, right, cmp);
            return;
        }
    }

    var ptd: [*c]c_longlong = dest;
    var tpd: [*c]c_longlong = dest + (left + right) - 1;

    main_loop: while (true) {
        if (pDiff(c_longlong, tpl, ptl) > 8) {
            // ptl8_ptr: left run wins in bulk from the front
            while (cmpv(cmp, ptl + 7, ptr) <= 0) {
                copyN(c_longlong, ptd, ptl, 8);
                ptd += 8;
                ptl += 8;
                if (pDiff(c_longlong, tpl, ptl) <= 8) continue :main_loop;
            }
            // tpl8_tpr: left run wins in bulk from the back
            while (cmpv(cmp, tpl - 7, tpr) > 0) {
                tpd -= 7;
                tpl -= 7;
                copyN(c_longlong, tpd, tpl, 8);
                tpd -= 1;
                tpl -= 1;
                if (pDiff(c_longlong, tpl, ptl) <= 8) continue :main_loop;
            }
        }

        if (pDiff(c_longlong, tpr, ptr) > 8) {
            // ptl_ptr8: right run wins in bulk from the front
            while (cmpv(cmp, ptl, ptr + 7) > 0) {
                copyN(c_longlong, ptd, ptr, 8);
                ptd += 8;
                ptr += 8;
                if (pDiff(c_longlong, tpr, ptr) <= 8) continue :main_loop;
            }
            // tpl_tpr8: right run wins in bulk from the back
            while (cmpv(cmp, tpl, tpr - 7) <= 0) {
                tpd -= 7;
                tpr -= 7;
                copyN(c_longlong, tpd, tpr, 8);
                tpd -= 1;
                tpr -= 1;
                if (pDiff(c_longlong, tpr, ptr) <= 8) continue :main_loop;
            }
        }

        if (pDiff(c_longlong, tpd, ptd) < 16) break;

        if (left > QUAD_CACHE) {
            // cache-sensitive branching merge
            var loop: usize = 8;
            while (true) {
                if (cmpv(cmp, ptl, ptr) <= 0) {
                    ptd.* = ptl.*;
                    ptl += 1;
                } else {
                    ptd.* = ptr.*;
                    ptr += 1;
                }
                ptd += 1;
                if (cmpv(cmp, tpl, tpr) > 0) {
                    tpd.* = tpl.*;
                    tpl -= 1;
                } else {
                    tpd.* = tpr.*;
                    tpr -= 1;
                }
                tpd -= 1;
                loop -= 1;
                if (loop == 0) break;
            }
        } else {
            // head_branchless_merge / tail_branchless_merge
            var loop: usize = 8;
            while (true) {
                const x: usize = @intFromBool(cmpv(cmp, ptl, ptr) <= 0);
                ptd.* = ptl.*;
                ptl += x;
                ptd[x] = ptr.*;
                ptr += @intFromBool(x == 0);
                ptd += 1;

                const y: usize = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
                tpd.* = tpl.*;
                tpl -= @intFromBool(y == 0);
                tpd -= 1;
                tpd[y] = tpr.*;
                tpr -= y;

                loop -= 1;
                if (loop == 0) break;
            }
        }
    }

    while (pLE(ptl, tpl) and pLE(ptr, tpr)) {
        if (cmpv(cmp, ptl, ptr) <= 0) {
            ptd.* = ptl.*;
            ptl += 1;
        } else {
            ptd.* = ptr.*;
            ptr += 1;
        }
        ptd += 1;
    }
    while (pLE(ptl, tpl)) {
        ptd.* = ptl.*;
        ptl += 1;
        ptd += 1;
    }
    while (pLE(ptr, tpr)) {
        ptd.* = ptr.*;
        ptr += 1;
        ptd += 1;
    }
}

pub export fn partial_forward_merge64(arg_array: [*c]c_longlong, arg_swap: [*c]c_longlong, arg_swap_size: usize, arg_nmemb: usize, arg_block: usize, arg_cmp: ?*const CMPFUNC) void {
    var array = arg_array;
    const swap = arg_swap;
    _ = arg_swap_size;
    const nmemb = arg_nmemb;
    const block = arg_block;
    const cmp = arg_cmp;

    if (nmemb == block) {
        return;
    }

    var ptr: [*c]c_longlong = array + block;
    const tpr: [*c]c_longlong = array + nmemb - 1;

    if (cmpv(cmp, ptr - 1, ptr) <= 0) {
        return;
    }

    copyN(c_longlong, swap, array, block);

    var ptl: [*c]c_longlong = swap;
    const tpl: [*c]c_longlong = swap + block - 1;

    outer: while (pLT(ptl, tpl - 1) and pLT(ptr, tpr - 1)) {
        // ptr2: drain the right run two at a time
        while (cmpv(cmp, ptl, ptr + 1) > 0) {
            array.* = ptr.*;
            array += 1;
            ptr += 1;
            array.* = ptr.*;
            array += 1;
            ptr += 1;
            if (!pLT(ptr, tpr - 1)) break :outer;
        }

        if (cmpv(cmp, ptl + 1, ptr) <= 0) {
            // one-shot ptl advance, then fall into the ptl2 drain
            array.* = ptl.*;
            array += 1;
            ptl += 1;
            array.* = ptl.*;
            array += 1;
            ptl += 1;
            if (!pLT(ptl, tpl - 1)) break :outer;

            // ptl2: drain the left run two at a time
            while (cmpv(cmp, ptl + 1, ptr) <= 0) {
                array.* = ptl.*;
                array += 1;
                ptl += 1;
                array.* = ptl.*;
                array += 1;
                ptl += 1;
                if (!pLT(ptl, tpl - 1)) break :outer;
            }

            // drain the right run again; on margin, `goto ptr2` restarts
            // the whole loop body (see partial_forward_merge32)
            while (cmpv(cmp, ptl, ptr + 1) > 0) {
                array.* = ptr.*;
                array += 1;
                ptr += 1;
                array.* = ptr.*;
                array += 1;
                ptr += 1;
                if (pLT(ptr, tpr - 1)) continue :outer;
                break :outer;
            }
        }

        // cross_swap + head_branchless_merge
        var x: usize = @intFromBool(cmpv(cmp, ptl, ptr) <= 0);
        array[x] = ptr.*;
        ptr += 1;
        array[@intFromBool(x == 0)] = ptl.*;
        ptl += 1;
        array += 2;

        x = @intFromBool(cmpv(cmp, ptl, ptr) <= 0);
        array.* = ptl.*;
        ptl += x;
        array[x] = ptr.*;
        ptr += @intFromBool(x == 0);
        array += 1;
    }

    while (pLE(ptl, tpl) and pLE(ptr, tpr)) {
        if (cmpv(cmp, ptl, ptr) <= 0) {
            array.* = ptl.*;
            ptl += 1;
        } else {
            array.* = ptr.*;
            ptr += 1;
        }
        array += 1;
    }
    while (pLE(ptl, tpl)) {
        array.* = ptl.*;
        ptl += 1;
        array += 1;
    }
}

pub export fn partial_backward_merge64(arg_array: [*c]c_longlong, arg_swap: [*c]c_longlong, arg_swap_size: usize, arg_nmemb: usize, arg_block: usize, arg_cmp: ?*const CMPFUNC) void {
    const array = arg_array;
    const swap = arg_swap;
    const swap_size = arg_swap_size;
    const nmemb = arg_nmemb;
    const block = arg_block;
    const cmp = arg_cmp;

    if (nmemb == block) {
        return;
    }

    var tpl: [*c]c_longlong = array + block - 1;
    var tpa: [*c]c_longlong = array + nmemb - 1;

    if (cmpv(cmp, tpl, tpl + 1) <= 0) {
        return;
    }

    const right = nmemb - block;

    if (nmemb <= swap_size and right >= 64) {
        cross_merge64(swap, array, block, right, cmp);
        copyN(c_longlong, array, swap, nmemb);
        return;
    }

    copyN(c_longlong, swap, array + block, right);

    var tpr: [*c]c_longlong = swap + right - 1;

    big: while (pGT(tpl, array + 16) and pGT(tpr, swap + 16)) {
        // tpl_tpr16: right run tails in bulk
        while (cmpv(cmp, tpl, tpr - 15) <= 0) {
            var loop: usize = 16;
            while (true) {
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                loop -= 1;
                if (loop == 0) break;
            }
            if (!pGT(tpr, swap + 16)) break :big;
        }

        // tpl16_tpr: left run tails in bulk
        while (cmpv(cmp, tpl - 15, tpr) > 0) {
            var loop: usize = 16;
            while (true) {
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                loop -= 1;
                if (loop == 0) break;
            }
            if (!pGT(tpl, array + 16)) break :big;
        }

        var loop: usize = 8;
        while (true) {
            if (cmpv(cmp, tpl, tpr - 1) <= 0) {
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
            } else if (cmpv(cmp, tpl - 1, tpr) > 0) {
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
            } else {
                var x: usize = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
                tpa -= 1;
                tpa[x] = tpr.*;
                tpr -= 1;
                tpa[@intFromBool(x == 0)] = tpl.*;
                tpl -= 1;
                tpa -= 1;

                // tail_branchless_merge
                x = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
                tpa.* = tpl.*;
                tpl -= @intFromBool(x == 0);
                tpa -= 1;
                tpa[x] = tpr.*;
                tpr -= x;
            }
            loop -= 1;
            if (loop == 0) break;
        }
    }

    small: while (pGT(tpr, swap + 1) and pGT(tpl, array + 1)) {
        // tpr2: drain right-run tails two at a time
        while (cmpv(cmp, tpl, tpr - 1) <= 0) {
            tpa.* = tpr.*;
            tpa -= 1;
            tpr -= 1;
            tpa.* = tpr.*;
            tpa -= 1;
            tpr -= 1;
            if (!pGT(tpr, swap + 1)) break :small;
        }

        if (cmpv(cmp, tpl - 1, tpr) > 0) {
            // one-shot tpl advance, then fall into the tpl2 drain
            tpa.* = tpl.*;
            tpa -= 1;
            tpl -= 1;
            tpa.* = tpl.*;
            tpa -= 1;
            tpl -= 1;
            if (!pGT(tpl, array + 1)) break :small;

            // tpl2: drain left-run tails two at a time
            while (cmpv(cmp, tpl - 1, tpr) > 0) {
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                tpa.* = tpl.*;
                tpa -= 1;
                tpl -= 1;
                if (!pGT(tpl, array + 1)) break :small;
            }

            // drain right-run tails again; on margin, `goto tpr2` restarts
            // the whole loop body (see partial_backward_merge32)
            while (cmpv(cmp, tpl, tpr - 1) <= 0) {
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                tpa.* = tpr.*;
                tpa -= 1;
                tpr -= 1;
                if (pGT(tpr, swap + 1)) continue :small;
                break :small;
            }
        }

        // cross_swap + tail_branchless_merge
        var x: usize = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
        tpa -= 1;
        tpa[x] = tpr.*;
        tpr -= 1;
        tpa[@intFromBool(x == 0)] = tpl.*;
        tpl -= 1;
        tpa -= 1;

        x = @intFromBool(cmpv(cmp, tpl, tpr) <= 0);
        tpa.* = tpl.*;
        tpl -= @intFromBool(x == 0);
        tpa -= 1;
        tpa[x] = tpr.*;
        tpr -= x;
    }

    while (pGE(tpr, swap) and pGE(tpl, array)) {
        if (cmpv(cmp, tpl, tpr) > 0) {
            tpa.* = tpl.*;
            tpl -= 1;
        } else {
            tpa.* = tpr.*;
            tpr -= 1;
        }
        tpa -= 1;
    }
    while (pGE(tpr, swap)) {
        tpa.* = tpr.*;
        tpr -= 1;
        tpa -= 1;
    }
}

pub export fn quad_swap64(arg_array: [*c]c_longlong, arg_nmemb: usize, arg_cmp: ?*const CMPFUNC) usize {
    const array = arg_array;
    const nmemb = arg_nmemb;
    const cmp = arg_cmp;

    var swap: [32]c_longlong = undefined;
    const swap_ptr: [*c]c_longlong = @ptrCast(&swap);

    var count: usize = nmemb / 8;
    var pta: [*c]c_longlong = array;
    var pts: [*c]c_longlong = undefined;
    var v1: u8 = undefined;
    var v2: u8 = undefined;
    var v3: u8 = undefined;
    var v4: u8 = undefined;

    const Mode = enum { normal, ordered, reversed };
    var mode: Mode = .normal;
    var skip_tail_swap = false;

    outer: while (true) {
        switch (mode) {
            .normal => {
                if (count == 0) break :outer;
                count -= 1;

                v1 = @intFromBool(cmpv(cmp, pta + 0, pta + 1) > 0);
                v2 = @intFromBool(cmpv(cmp, pta + 2, pta + 3) > 0);
                v3 = @intFromBool(cmpv(cmp, pta + 4, pta + 5) > 0);
                v4 = @intFromBool(cmpv(cmp, pta + 6, pta + 7) > 0);

                switch (v1 + v2 * 2 + v3 * 4 + v4 * 8) {
                    0 => {
                        if (cmpv(cmp, pta + 1, pta + 2) <= 0 and cmpv(cmp, pta + 3, pta + 4) <= 0 and cmpv(cmp, pta + 5, pta + 6) <= 0) {
                            pta += 8;
                            mode = .ordered;
                            continue :outer;
                        }
                        quad_swap_merge64(pta, swap_ptr, cmp);
                    },
                    15 => {
                        if (cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                            pts = pta;
                            pta += 8;
                            mode = .reversed;
                            continue :outer;
                        }
                        // case 15 falls through to not_ordered
                        quadPairSwap(c_longlong, pta, v1, v2, v3, v4);
                        quad_swap_merge64(pta, swap_ptr, cmp);
                    },
                    else => {
                        // not_ordered
                        quadPairSwap(c_longlong, pta, v1, v2, v3, v4);
                        quad_swap_merge64(pta, swap_ptr, cmp);
                    },
                }
                pta += 8;
            },
            .ordered => {
                if (count == 0) break :outer;
                count -= 1;

                v1 = @intFromBool(cmpv(cmp, pta + 0, pta + 1) > 0);
                v2 = @intFromBool(cmpv(cmp, pta + 2, pta + 3) > 0);
                v3 = @intFromBool(cmpv(cmp, pta + 4, pta + 5) > 0);
                v4 = @intFromBool(cmpv(cmp, pta + 6, pta + 7) > 0);

                if ((v1 | v2 | v3 | v4) != 0) {
                    if (v1 + v2 + v3 + v4 == 4 and cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                        pts = pta;
                        pta += 8;
                        mode = .reversed;
                        continue :outer;
                    }
                    // goto not_ordered
                    quadPairSwap(c_longlong, pta, v1, v2, v3, v4);
                    quad_swap_merge64(pta, swap_ptr, cmp);
                    pta += 8;
                    mode = .normal;
                    continue :outer;
                }

                if (cmpv(cmp, pta + 1, pta + 2) <= 0 and cmpv(cmp, pta + 3, pta + 4) <= 0 and cmpv(cmp, pta + 5, pta + 6) <= 0) {
                    pta += 8;
                    continue :outer; // still ordered
                }

                quad_swap_merge64(pta, swap_ptr, cmp);
                pta += 8;
                mode = .normal;
            },
            .reversed => {
                if (count == 0) {
                    // Count exhausted: finish the reversed run (see the
                    // cascading switch in the C original).
                    const r = nmemb % 8;
                    var fully_descending = true;
                    var k: usize = r;
                    while (k > 0) : (k -= 1) {
                        const hi = pta + (k - 1);
                        const lo = if (k >= 2) pta + (k - 2) else pta - 1;
                        if (cmpv(cmp, lo, hi) <= 0) {
                            fully_descending = false;
                            break;
                        }
                    }

                    if (fully_descending) {
                        quad_reversal64(pts, pta + r - 1);
                        if (pts == array) {
                            return 1;
                        }
                        skip_tail_swap = true; // goto reverse_end
                    } else {
                        quad_reversal64(pts, pta - 1);
                    }
                    break :outer;
                }
                count -= 1;

                v1 = @intFromBool(cmpv(cmp, pta + 0, pta + 1) <= 0);
                v2 = @intFromBool(cmpv(cmp, pta + 2, pta + 3) <= 0);
                v3 = @intFromBool(cmpv(cmp, pta + 4, pta + 5) <= 0);
                v4 = @intFromBool(cmpv(cmp, pta + 6, pta + 7) <= 0);

                if ((v1 | v2 | v3 | v4) == 0) {
                    if (cmpv(cmp, pta - 1, pta) > 0 and cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                        pta += 8;
                        continue :outer; // still reversed
                    }
                }

                quad_reversal64(pts, pta - 1);

                if (v1 + v2 + v3 + v4 == 4 and cmpv(cmp, pta + 1, pta + 2) <= 0 and cmpv(cmp, pta + 3, pta + 4) <= 0 and cmpv(cmp, pta + 5, pta + 6) <= 0) {
                    pta += 8;
                    mode = .ordered;
                    continue :outer;
                }
                if (v1 + v2 + v3 + v4 == 0 and cmpv(cmp, pta + 1, pta + 2) > 0 and cmpv(cmp, pta + 3, pta + 4) > 0 and cmpv(cmp, pta + 5, pta + 6) > 0) {
                    pts = pta;
                    pta += 8;
                    continue :outer; // new reversed run
                }

                quadPairSwap(c_longlong, pta, v1, v2, v3, v4);
                if (cmpv(cmp, pta + 1, pta + 2) > 0 or cmpv(cmp, pta + 3, pta + 4) > 0 or cmpv(cmp, pta + 5, pta + 6) > 0) {
                    quad_swap_merge64(pta, swap_ptr, cmp);
                }
                pta += 8;
                mode = .normal;
            },
        }
    }

    if (!skip_tail_swap) {
        tail_swap64(pta, swap_ptr, nmemb % 8, cmp);
    }

    // reverse_end: merge the sorted 32-blocks
    pta = array;
    count = nmemb / 32;
    while (count != 0) : ({
        count -= 1;
        pta += 32;
    }) {
        if (cmpv(cmp, pta + 7, pta + 8) <= 0 and cmpv(cmp, pta + 15, pta + 16) <= 0 and cmpv(cmp, pta + 23, pta + 24) <= 0) {
            continue;
        }
        parity_merge64(swap_ptr, pta, 8, 8, cmp);
        parity_merge64(swap_ptr + 16, pta + 16, 8, 8, cmp);
        parity_merge64(pta, swap_ptr, 16, 16, cmp);
    }

    if (nmemb % 32 > 8) {
        tail_merge64(pta, swap_ptr, 32, nmemb % 32, 8, cmp);
    }
    return 0;
}

// ---------------------------------------------------------------------------
// unit tests - drive quadsort32/quadsort64 (sort.zig) across sizes and input
// patterns; the full pipeline exercises every routine above at both widths,
// including the partial merges and the reversed/ordered fast paths.
// ---------------------------------------------------------------------------

const testing = std.testing;

extern fn quadsort32(array: ?*anyopaque, nmemb: usize, cmp: ?*const CMPFUNC) void;
extern fn quadsort64(array: ?*anyopaque, nmemb: usize, cmp: ?*const CMPFUNC) void;

fn cmpInt32(a: ?*const anyopaque, b: ?*const anyopaque) callconv(.c) c_int {
    const x: *const c_int = @ptrCast(@alignCast(a));
    const y: *const c_int = @ptrCast(@alignCast(b));
    if (x.* < y.*) return -1;
    if (x.* > y.*) return 1;
    return 0;
}

fn cmpInt64(a: ?*const anyopaque, b: ?*const anyopaque) callconv(.c) c_int {
    const x: *const c_longlong = @ptrCast(@alignCast(a));
    const y: *const c_longlong = @ptrCast(@alignCast(b));
    if (x.* < y.*) return -1;
    if (x.* > y.*) return 1;
    return 0;
}

var lcg_state: u32 = 123456789;

fn lcg() u32 {
    lcg_state = lcg_state *% 1103515245 +% 12345;
    return lcg_state & 0x7FFFFFFF;
}

fn refSort(comptime T: type, a: []T) void {
    if (a.len < 2) return;
    var i: usize = 1;
    while (i < a.len) : (i += 1) {
        const v = a[i];
        var j: usize = i;
        while (j > 0 and a[j - 1] > v) : (j -= 1) {
            a[j] = a[j - 1];
        }
        a[j] = v;
    }
}

const Pattern = enum { random, sorted, reversed, organ, sawtooth };

fn fillPattern(comptime T: type, buf: []T, n: usize, pattern: Pattern) void {
    var i: usize = 0;
    while (i < n) : (i += 1) {
        const v: i64 = switch (pattern) {
            .random => @mod(@as(i64, lcg()), 1000),
            .sorted => @as(i64, @intCast(i)) * 3,
            .reversed => -@as(i64, @intCast(i)) * 3,
            .organ => if (i < n / 2) @as(i64, @intCast(i)) * 2 else @as(i64, @intCast(n - i)) * 2,
            .sawtooth => @mod(@as(i64, @intCast(i)), 33),
        };
        buf[i] = @intCast(v);
    }
}

const sort_sizes = [_]usize{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 15, 16, 17, 31, 32, 33, 40, 63, 64, 65, 96, 127, 128, 129, 160, 200, 256, 257, 300, 400, 512, 600 };

const pattern_names = [_][]const u8{ "random", "sorted", "reversed", "organ", "sawtooth" };

test "missing_sort quadsort32 primitives produce fully sorted arrays" {
    var buf: [600]c_int = undefined;
    var expect: [600]c_int = undefined;

    inline for (@typeInfo(Pattern).@"enum".fields, 0..) |f, fi| {
        for (sort_sizes) |n| {
            fillPattern(c_int, &buf, n, @field(Pattern, f.name));
            @memcpy(expect[0..n], buf[0..n]);
            refSort(c_int, expect[0..n]);

            quadsort32(@ptrCast(&buf), n, @ptrCast(&cmpInt32));

            if (!std.mem.eql(c_int, expect[0..n], buf[0..n])) {
                std.debug.print("32-bit MISMATCH pattern={s} n={d}\n", .{ pattern_names[fi], n });
            }
            try testing.expectEqualSlices(c_int, expect[0..n], buf[0..n]);
        }
    }

    // randomized soak: pseudo-random size and pattern combinations
    var trial: usize = 0;
    while (trial < 40) : (trial += 1) {
        const n: usize = @mod(lcg(), 600);
        const p: usize = @mod(lcg(), 5);
        const pattern: Pattern = @enumFromInt(p);
        fillPattern(c_int, &buf, n, pattern);
        @memcpy(expect[0..n], buf[0..n]);
        refSort(c_int, expect[0..n]);

        quadsort32(@ptrCast(&buf), n, @ptrCast(&cmpInt32));

        if (!std.mem.eql(c_int, expect[0..n], buf[0..n])) {
            std.debug.print("32-bit SOAK MISMATCH pattern={d} n={d}\n", .{ p, n });
        }
        try testing.expectEqualSlices(c_int, expect[0..n], buf[0..n]);
    }
}

test "missing_sort quadsort64 primitives produce fully sorted arrays" {
    var buf: [600]c_longlong = undefined;
    var expect: [600]c_longlong = undefined;

    inline for (@typeInfo(Pattern).@"enum".fields, 0..) |f, fi| {
        for (sort_sizes) |n| {
            fillPattern(c_longlong, &buf, n, @field(Pattern, f.name));
            @memcpy(expect[0..n], buf[0..n]);
            refSort(c_longlong, expect[0..n]);

            quadsort64(@ptrCast(&buf), n, @ptrCast(&cmpInt64));

            if (!std.mem.eql(c_longlong, expect[0..n], buf[0..n])) {
                std.debug.print("64-bit MISMATCH pattern={s} n={d}\n", .{ pattern_names[fi], n });
            }
            try testing.expectEqualSlices(c_longlong, expect[0..n], buf[0..n]);
        }
    }

    // randomized soak
    var trial: usize = 0;
    while (trial < 40) : (trial += 1) {
        const n: usize = @mod(lcg(), 600);
        const p: usize = @mod(lcg(), 5);
        const pattern: Pattern = @enumFromInt(p);
        fillPattern(c_longlong, &buf, n, pattern);
        @memcpy(expect[0..n], buf[0..n]);
        refSort(c_longlong, expect[0..n]);

        quadsort64(@ptrCast(&buf), n, @ptrCast(&cmpInt64));

        if (!std.mem.eql(c_longlong, expect[0..n], buf[0..n])) {
            std.debug.print("64-bit SOAK MISMATCH pattern={d} n={d}\n", .{ p, n });
        }
        try testing.expectEqualSlices(c_longlong, expect[0..n], buf[0..n]);
    }
}
