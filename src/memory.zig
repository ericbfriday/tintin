const std = @import("std");

pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

// --- TinTin++ struct type aliases ---
pub const struct_session = tintin_c.struct_session;
pub const struct_str_data = tintin_c.struct_str_data;
pub const struct_memory_data = tintin_c.struct_memory_data;
pub const struct_stack_data = tintin_c.struct_stack_data;

// --- C standard library function aliases ---
pub const calloc = tintin_c.calloc;
pub const realloc = tintin_c.realloc;
pub const free = tintin_c.free;
pub const strlen = tintin_c.strlen;
pub const strcpy = tintin_c.strcpy;
pub const strncpy = tintin_c.strncpy;
pub const strcat = tintin_c.strcat;
pub const strdup = tintin_c.strdup;
pub const strnlen = tintin_c.strnlen;
pub const memcpy = tintin_c.memcpy;
pub const printf = tintin_c.printf;

// --- TinTin++ function aliases ---
pub fn tintin_printf2(arg0: anytype, arg_format: [*c]const u8, args: anytype) void { @import("variadics.zig").tintin_printf2(arg0, arg_format, args); }
pub fn show_error(arg0: anytype, arg1: anytype, arg_format: [*c]const u8, args: anytype) void { @import("variadics.zig").show_error(arg0, arg1, arg_format, args); }
pub const dump_stack = tintin_c.dump_stack;

// --- TinTin++ constants ---
pub const BUFFER_SIZE: c_int = tintin_c.BUFFER_SIZE;
pub const STR_FLAG_STACK: c_int = tintin_c.STR_FLAG_STACK;
pub const STR_FLAG_LIST: c_int = tintin_c.STR_FLAG_LIST;
pub const STR_FLAG_FREE: c_int = tintin_c.STR_FLAG_FREE;
pub const LIST_COMMAND: c_int = tintin_c.LIST_COMMAND;

// --- TinTin++ globals ---
pub const gtd = &tintin_c.gtd;

// --- Helper macros ---
inline fn HAS_BIT(x: c_int, y: c_int) c_int {
    return x & y;
}

inline fn UMIN(a: c_int, b: c_int) c_int {
    return if (a < b) a else b;
}

// --- Pointer arithmetic helpers ---
const str_data_size: usize = @sizeOf(struct_str_data);

// ---------------------------------------------------------------------------
// restring — free old string, strdup new one (legacy C alloc)
// ---------------------------------------------------------------------------
pub export fn restring(arg_point: [*c]u8, arg_string: [*c]u8) [*c]u8 {
    if (arg_point != null) {
        free(@ptrCast(arg_point));
    }
    return strdup(arg_string);
}

// ---------------------------------------------------------------------------
// init_memory — initialize the memory management pools
// ---------------------------------------------------------------------------
pub export fn init_memory() void {
    gtd.*.*.memory = @ptrCast(@alignCast(calloc(1, @sizeOf(tintin_c.struct_memory_data))));

    gtd.*.*.memory.*.debug = @ptrCast(@alignCast(calloc(1, @sizeOf([*c]struct_stack_data))));

    gtd.*.*.memory.*.stack = @ptrCast(@alignCast(calloc(1, @sizeOf([*c]struct_str_data))));
    gtd.*.*.memory.*.stack_max = 1;

    gtd.*.*.memory.*.list = @ptrCast(@alignCast(calloc(1, @sizeOf([*c]struct_str_data))));
    gtd.*.*.memory.*.list_max = 1;

    gtd.*.*.memory.*.free = @ptrCast(@alignCast(calloc(1, @sizeOf(c_int))));
    gtd.*.*.memory.*.free_max = 1;
}

// ---------------------------------------------------------------------------
// get_str_ptr / get_str_str — pointer arithmetic between str_data and string
// ---------------------------------------------------------------------------
pub export fn get_str_ptr(arg_str: [*c]u8) [*c]struct_str_data {
    const addr = @intFromPtr(arg_str) - str_data_size;
    return @ptrFromInt(addr);
}

pub export fn get_str_str(arg_str_ptr: [*c]struct_str_data) [*c]u8 {
    const addr = @intFromPtr(arg_str_ptr) + str_data_size;
    return @ptrFromInt(addr);
}

// ---------------------------------------------------------------------------
// str_len / str_max — get length/capacity from the str_data header
// ---------------------------------------------------------------------------
pub export fn str_len(arg_str: [*c]u8) c_int {
    return get_str_ptr(arg_str).*.len;
}

pub export fn str_max(arg_str: [*c]u8) c_int {
    return get_str_ptr(arg_str).*.max;
}

// ---------------------------------------------------------------------------
// str_fix / str_fix_len — recalculate or set the length field
// ---------------------------------------------------------------------------
pub export fn str_fix(arg_original: [*c]u8) c_int {
    const str_ptr = get_str_ptr(arg_original);
    str_ptr.*.len = @intCast(strlen(arg_original));
    return str_ptr.*.len;
}

pub export fn str_fix_len(arg_original: [*c]u8, arg_len: c_int) c_int {
    const str_ptr = get_str_ptr(arg_original);
    str_ptr.*.len = arg_len;
    (arg_original + @as(usize, @intCast(arg_len))).* = 0;
    return str_ptr.*.len;
}

// ---------------------------------------------------------------------------
// str_ptr_alloc — allocate a new str_data + buffer (via str_alloc_list)
// ---------------------------------------------------------------------------
pub export fn str_ptr_alloc(arg_size: c_int) [*c]struct_str_data {
    return str_alloc_list(arg_size);
}

// ---------------------------------------------------------------------------
// str_ptr_realloc — reallocate a str_data to a new size
// ---------------------------------------------------------------------------
pub export fn str_ptr_realloc(arg_str_ptr: [*c]struct_str_data, arg_size: c_int) [*c]struct_str_data {
    var str_ptr = arg_str_ptr;
    const size = arg_size;

    if (size != str_ptr.*.max - 1) {
        const new_ptr: ?*anyopaque = realloc(@ptrCast(str_ptr), str_data_size + @as(usize, @intCast(size)) + 1);
        str_ptr = @ptrCast(@alignCast(new_ptr));

        switch (str_ptr.*.flags) {
            STR_FLAG_STACK => {
                const mem = gtd.*.*.memory;
                const idx: usize = @intCast(str_ptr.*.index);
                const stack_arr: [*c][*c]struct_str_data = mem.*.stack;
                stack_arr[idx] = str_ptr;
            },
            STR_FLAG_LIST => {
                const mem = gtd.*.*.memory;
                const idx: usize = @intCast(str_ptr.*.index);
                const list_arr: [*c][*c]struct_str_data = mem.*.list;
                list_arr[idx] = str_ptr;
            },
            else => {
                _ = printf("\x1b[1;35mstr_ptr_realloc: unknown memory type (%d)", str_ptr.*.flags);
            },
        }

        str_ptr.*.max = size + 1;
    } else {
        _ = printf("\x1b[1;35mstr_ptr_realloc: shrink error max=%d len=%d\n", str_ptr.*.max, str_ptr.*.len);
    }

    return str_ptr;
}

// ---------------------------------------------------------------------------
// str_alloc — allocate a string buffer, return pointer to string area
// ---------------------------------------------------------------------------
pub export fn str_alloc(arg_size: c_int) [*c]u8 {
    const str_ptr = str_ptr_alloc(arg_size);
    return get_str_str(str_ptr);
}

// ---------------------------------------------------------------------------
// str_ptr_resize — ensure str_ptr has room for 'add' more bytes
// ---------------------------------------------------------------------------
pub export fn str_ptr_resize(arg_str_ptr: [*c]struct_str_data, arg_add: c_int) [*c]struct_str_data {
    var str_ptr = arg_str_ptr;
    const len = str_ptr.*.len;

    if (str_ptr.*.max <= len + arg_add) {
        str_ptr = str_ptr_realloc(str_ptr, len + arg_add + 1);
    }
    return str_ptr;
}

// ---------------------------------------------------------------------------
// str_resize — resize via double pointer
// ---------------------------------------------------------------------------
pub export fn str_resize(arg_str: [*c][*c]u8, arg_add: c_int) [*c]u8 {
    var str_ptr = get_str_ptr(arg_str.*);
    str_ptr = str_ptr_resize(str_ptr, arg_add);
    arg_str.* = get_str_str(str_ptr);
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_free — free a managed string
// ---------------------------------------------------------------------------
pub export fn str_free(arg_str: [*c]u8) void {
    str_alloc_free(get_str_ptr(arg_str));
}

// ---------------------------------------------------------------------------
// str_mim — allocate empty string with same capacity as original
// ---------------------------------------------------------------------------
pub export fn str_mim(arg_original: [*c]u8) [*c]u8 {
    var string: [*c]u8 = str_alloc(@intCast(strlen(arg_original)));
    _ = str_cpy(&string, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))));
    return string;
}

// ---------------------------------------------------------------------------
// str_dup — duplicate a string into a managed buffer
// ---------------------------------------------------------------------------
pub export fn str_dup(arg_original: [*c]u8) [*c]u8 {
    if (arg_original.* == 0) {
        return str_alloc(0);
    }
    var dup: [*c]u8 = str_alloc(@intCast(strlen(arg_original)));
    _ = str_cpy(&dup, arg_original);
    return dup;
}

// ---------------------------------------------------------------------------
// str_dup_clone — duplicate preserving exact str_data length
// ---------------------------------------------------------------------------
pub export fn str_dup_clone(arg_original: [*c]u8) [*c]u8 {
    const len = str_len(arg_original);
    const dup: [*c]u8 = str_alloc(len);
    _ = memcpy(@ptrCast(dup), @as(?*const anyopaque, @ptrCast(arg_original)), @as(usize, @intCast(len)) + 1);
    get_str_ptr(dup).*.len = len;
    return dup;
}

// ---------------------------------------------------------------------------
// str_ndup — duplicate first N bytes
// ---------------------------------------------------------------------------
pub export fn str_ndup(arg_buf: [*c]u8, arg_len: c_int) [*c]u8 {
    var dup: [*c]u8 = str_alloc(arg_len + 1);
    _ = str_ncpy(&dup, arg_buf, arg_len);
    return dup;
}

// ---------------------------------------------------------------------------
// str_clone — ensure *clone has at least as much capacity as original
// ---------------------------------------------------------------------------
pub export fn str_clone(arg_clone: [*c][*c]u8, arg_original: [*c]u8) void {
    var clo_ptr = get_str_ptr(arg_clone.*);
    const len = str_len(arg_original);

    if (clo_ptr.*.max < len) {
        clo_ptr = str_ptr_realloc(clo_ptr, len * 2);
        arg_clone.* = get_str_str(clo_ptr);
    }
}

// ---------------------------------------------------------------------------
// str_cpy — copy buf into managed string
// ---------------------------------------------------------------------------
pub export fn str_cpy(arg_str: [*c][*c]u8, arg_buf: [*c]u8) [*c]u8 {
    const buf_len: c_int = @intCast(strlen(arg_buf));
    var str_ptr = get_str_ptr(arg_str.*);

    if (str_ptr.*.max <= buf_len) {
        str_ptr = str_ptr_realloc(str_ptr, buf_len);
        arg_str.* = get_str_str(str_ptr);
    }
    str_ptr.*.len = buf_len;
    _ = strcpy(arg_str.*, arg_buf);
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_ncpy — copy up to len bytes of buf
// ---------------------------------------------------------------------------
pub export fn str_ncpy(arg_str: [*c][*c]u8, arg_buf: [*c]u8, arg_len: c_int) [*c]u8 {
    const buf_len: c_int = @intCast(strnlen(arg_buf, @intCast(arg_len)));
    var str_ptr = get_str_ptr(arg_str.*);

    if (str_ptr.*.max <= buf_len) {
        str_ptr = str_ptr_realloc(str_ptr, arg_len);
        arg_str.* = get_str_str(str_ptr);
    }
    str_ptr.*.len = UMIN(buf_len, arg_len);
    _ = strncpy(arg_str.*, arg_buf, @intCast(arg_len));
    (arg_str.* + @as(usize, @intCast(arg_len))).* = 0;
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_cat_len — append known-length string
// ---------------------------------------------------------------------------
pub export fn str_cat_len(arg_str: [*c][*c]u8, arg_arg: [*c]u8, arg_len: c_int) [*c]u8 {
    var str_ptr = get_str_ptr(arg_str.*);

    if (str_ptr.*.max <= str_ptr.*.len + arg_len) {
        str_ptr = str_ptr_resize(str_ptr, arg_len);
        arg_str.* = get_str_str(str_ptr);
    }

    _ = strcpy(arg_str.* + @as(usize, @intCast(str_ptr.*.len)), arg_arg);
    str_ptr.*.len += arg_len;
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_cat — append string (computes length)
// ---------------------------------------------------------------------------
pub export fn str_cat(arg_str: [*c][*c]u8, arg_arg: [*c]u8) [*c]u8 {
    return str_cat_len(arg_str, arg_arg, @intCast(strlen(arg_arg)));
}

// ---------------------------------------------------------------------------
// str_cat_chr — append a single character
// ---------------------------------------------------------------------------
pub export fn str_cat_chr(arg_str: [*c][*c]u8, arg_chr: u8) [*c]u8 {
    var str_ptr = get_str_ptr(arg_str.*);

    if (str_ptr.*.max <= str_ptr.*.len + 1) {
        str_ptr = str_ptr_realloc(str_ptr, str_ptr.*.max + 10);
        arg_str.* = get_str_str(str_ptr);
    }

    const idx: usize = @intCast(str_ptr.*.len);
    (arg_str.* + idx).* = arg_chr;
    str_ptr.*.len += 1;
    (arg_str.* + @as(usize, @intCast(str_ptr.*.len))).* = 0;
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_cap — overwrite from index with buf
// ---------------------------------------------------------------------------
pub export fn str_cap(arg_str: [*c][*c]u8, arg_index_1: c_int, arg_buf: [*c]u8) [*c]u8 {
    const buf_len: c_int = @intCast(strlen(arg_buf));
    var str_ptr = get_str_ptr(arg_str.*);

    if (str_ptr.*.max <= arg_index_1 + buf_len) {
        str_ptr = str_ptr_resize(str_ptr, buf_len);
        arg_str.* = get_str_str(str_ptr);
    }

    if (arg_index_1 <= str_ptr.*.len) {
        _ = strcpy(arg_str.* + @as(usize, @intCast(arg_index_1)), arg_buf);
    } else {
        tintin_printf2(gtd.*.*.ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("debug: str_cap: index=%d str_len=%d cap=%s"))))))))), .{arg_index_1, str_ptr.*.len, arg_buf});
    }

    str_ptr.*.len = arg_index_1 + buf_len;
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_ins_len — insert buf_len bytes of buf at index
// ---------------------------------------------------------------------------
pub export fn str_ins_len(arg_str: [*c][*c]u8, arg_index_1: c_int, arg_buf: [*c]u8, arg_buf_len: c_int) [*c]u8 {
    var str_ptr = get_str_ptr(arg_str.*);

    if (str_ptr.*.max <= str_ptr.*.len + arg_buf_len) {
        str_ptr = str_ptr_resize(str_ptr, arg_buf_len);
        arg_str.* = get_str_str(str_ptr);
    }

    if (arg_index_1 >= str_ptr.*.len) {
        _ = strcpy(arg_str.* + @as(usize, @intCast(str_ptr.*.len)), arg_buf);
    } else {
        // Shift existing content right
        var cnt: c_int = 0;
        const str_len_val = str_ptr.*.len;
        while (cnt <= str_len_val - arg_index_1) : (cnt += 1) {
            const src_idx: usize = @intCast(str_len_val - cnt);
            const dst_idx: usize = @intCast(str_len_val + arg_buf_len - cnt);
            (arg_str.* + dst_idx).* = (arg_str.* + src_idx).*;
        }

        // Copy buf into the gap
        var bi: usize = 0;
        var di: usize = @intCast(arg_index_1);
        while ((arg_buf + bi).* != 0) {
            (arg_str.* + di).* = (arg_buf + bi).*;
            bi += 1;
            di += 1;
        }
    }

    str_ptr.*.len += arg_buf_len;
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_ins — insert at index (computes length)
// ---------------------------------------------------------------------------
pub export fn str_ins(arg_str: [*c][*c]u8, arg_index_1: c_int, arg_buf: [*c]u8) [*c]u8 {
    return str_ins_len(arg_str, arg_index_1, arg_buf, @intCast(strlen(arg_buf)));
}

// ---------------------------------------------------------------------------
// str_mov — move content from src position to dst position
// ---------------------------------------------------------------------------
pub export fn str_mov(arg_str: [*c][*c]u8, arg_dst: c_int, arg_src: c_int) [*c]u8 {
    if (arg_dst >= arg_src) {
        show_error(gtd.*.*.ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("str_mov: dst (%d) >= src (%d)"))))))))), .{arg_dst, arg_src});
        return arg_str.*;
    }

    const str_ptr = get_str_ptr(arg_str.*);

    if (arg_src > str_ptr.*.len) {
        show_error(gtd.*.*.ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("str_mov: src (%d) >= len (%d)"))))))))), .{arg_src, str_ptr.*.len});
        return arg_str.*;
    }

    var src_idx: usize = @intCast(arg_src);
    var dst_idx: usize = @intCast(arg_dst);

    str_ptr.*.len -= (arg_src - arg_dst);

    while ((arg_str.* + src_idx).* != 0) {
        (arg_str.* + dst_idx).* = (arg_str.* + src_idx).*;
        dst_idx += 1;
        src_idx += 1;
    }
    (arg_str.* + dst_idx).* = 0;

    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_alloc_stack — allocate a string on the stack pool (rotating buffer)
// ---------------------------------------------------------------------------
pub export fn str_alloc_stack(arg_size: c_int) [*c]u8 {
    var size = arg_size;
    if (size < BUFFER_SIZE) {
        size = BUFFER_SIZE;
    }

    const mem = gtd.*.*.memory;

    if (mem.*.stack_len == mem.*.stack_cap) {
        mem.*.stack_cap += 1;

        if (mem.*.stack_cap == mem.*.stack_max) {
            mem.*.stack_max *= 2;
            const new_stack: ?*anyopaque = realloc(@ptrCast(mem.*.stack), @as(usize, @intCast(mem.*.stack_max)) * @sizeOf([*c]struct_str_data));
            mem.*.stack = @ptrCast(@alignCast(new_stack));
        }

        const new_ptr: ?*anyopaque = calloc(1, str_data_size + @as(usize, @intCast(size)) + 1);
        const str_ptr: [*c]struct_str_data = @ptrCast(@alignCast(new_ptr));
        str_ptr.*.max = size + 1;
        str_ptr.*.flags = STR_FLAG_STACK;
        str_ptr.*.index = mem.*.stack_len;
        const stack_arr: [*c][*c]struct_str_data = mem.*.stack;
        stack_arr[@as(usize, @intCast(mem.*.stack_len))] = str_ptr;
        mem.*.stack_len += 1;

        return finish_stack_alloc(str_ptr, size);
    } else {
        const stack_arr: [*c][*c]struct_str_data = mem.*.stack;
        const str_ptr: [*c]struct_str_data = stack_arr[@as(usize, @intCast(mem.*.stack_len))];
        mem.*.stack_len += 1;

        return finish_stack_alloc(str_ptr, size);
    }
}

fn finish_stack_alloc(in_str_ptr: [*c]struct_str_data, size: c_int) [*c]u8 {
    var str_ptr = in_str_ptr;
    if (str_ptr.*.max < size) {
        str_ptr = str_ptr_realloc(str_ptr, size);
    }
    str_ptr.*.len = 0;
    const str: [*c]u8 = get_str_str(str_ptr);
    str.* = 0;
    return str;
}

// ---------------------------------------------------------------------------
// str_alloc_list — allocate from the list pool (or recycle from free list)
// ---------------------------------------------------------------------------
pub export fn str_alloc_list(arg_size: c_int) [*c]struct_str_data {
    var size = arg_size;
    const mem = gtd.*.*.memory;

    if (size < 0) {
        tintin_printf2(gtd.*.*.ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("str_alloc_list: negative size: %d"))))))))), .{size});
        dump_stack();
        size = BUFFER_SIZE;
    }

    if (mem.*.free_len != 0) {
        mem.*.free_len -= 1;
        const free_arr: [*c]c_int = mem.*.free;
        const index: usize = @intCast(free_arr[@as(usize, @intCast(mem.*.free_len))]);

        const list_arr: [*c][*c]struct_str_data = mem.*.list;
        var str_ptr: [*c]struct_str_data = list_arr[index];

        // DEL_BIT
        str_ptr.*.flags &= ~STR_FLAG_FREE;

        if (size != str_ptr.*.max - 1) {
            str_ptr = str_ptr_realloc(str_ptr, size);
        }
        str_ptr.*.len = 0;

        const str: [*c]u8 = get_str_str(str_ptr);
        str.* = 0;
        return str_ptr;
    } else {
        if (mem.*.list_len + 1 >= mem.*.list_max) {
            mem.*.list_max *= 2;
            const new_list: ?*anyopaque = realloc(@ptrCast(mem.*.list), @as(usize, @intCast(mem.*.list_max)) * @sizeOf([*c]struct_str_data));
            mem.*.list = @ptrCast(@alignCast(new_list));
        }

        const new_ptr: ?*anyopaque = calloc(1, str_data_size + @as(usize, @intCast(size)) + 1);
        const str_ptr: [*c]struct_str_data = @ptrCast(@alignCast(new_ptr));
        str_ptr.*.max = size + 1;
        str_ptr.*.flags = STR_FLAG_LIST;
        str_ptr.*.index = mem.*.list_len;

        const list_arr: [*c][*c]struct_str_data = mem.*.list;
        list_arr[@as(usize, @intCast(mem.*.list_len))] = str_ptr;
        mem.*.list_len += 1;

        const str: [*c]u8 = get_str_str(str_ptr);
        str.* = 0;
        return str_ptr;
    }
}

// ---------------------------------------------------------------------------
// str_alloc_free — return a list-allocated string to the free pool
// ---------------------------------------------------------------------------
pub export fn str_alloc_free(arg_str_ptr: [*c]struct_str_data) void {
    const str_ptr = arg_str_ptr;

    if (HAS_BIT(str_ptr.*.flags, STR_FLAG_STACK | STR_FLAG_FREE) != 0) {
        tintin_printf2(gtd.*.*.ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("\x1b[1;31mstr_alloc_free: trying to free invalid memory: %d"))))))))), .{str_ptr.*.flags});
        dump_stack();
        return;
    }

    const mem = gtd.*.*.memory;

    if (mem.*.free_len == mem.*.free_max) {
        mem.*.free_max *= 2;
        const new_free: ?*anyopaque = realloc(@ptrCast(mem.*.free), @as(usize, @intCast(mem.*.free_max)) * @sizeOf(c_int));
        mem.*.free = @ptrCast(@alignCast(new_free));
    }

    // SET_BIT
    str_ptr.*.flags |= STR_FLAG_FREE;

    const free_arr: [*c]c_int = mem.*.free;
    free_arr[@as(usize, @intCast(mem.*.free_len))] = str_ptr.*.index;
    mem.*.free_len += 1;
}

// ---------------------------------------------------------------------------
// restringf — format string into new duplicated memory
// ---------------------------------------------------------------------------
pub export fn restringf(arg_point: [*c]u8, arg_fmt: [*c]const u8, ...) [*c]u8 {
    var string: [8192]u8 = undefined;
    var args = @cVaStart();
    defer @cVaEnd(&args);

    _ = tintin_c.vsprintf(&string, arg_fmt, @ptrCast(&args));

    if (arg_point != null) {
        free(arg_point);
    }
    return strdup(&string);
}

// ---------------------------------------------------------------------------
// str_dup_printf — duplicate formatted string
// ---------------------------------------------------------------------------
pub export fn str_dup_printf(arg_fmt: [*c]const u8, ...) [*c]u8 {
    var ptv: [*c]u8 = null;
    var args = @cVaStart();
    defer @cVaEnd(&args);

    const len: c_int = @intCast(tintin_c.vasprintf(&ptv, arg_fmt, @ptrCast(&args)));

    const str = str_alloc(len);
    _ = memcpy(str, ptv, @as(usize, @intCast(len)) + 1);

    free(ptv);

    return str;
}

// ---------------------------------------------------------------------------
// str_cpy_printf — copy formatted string into managed string
// ---------------------------------------------------------------------------
pub export fn str_cpy_printf(arg_str: [*c][*c]u8, arg_fmt: [*c]const u8, ...) [*c]u8 {
    var ptv: [*c]u8 = null;
    var args = @cVaStart();
    defer @cVaEnd(&args);

    const len: c_int = @intCast(tintin_c.vasprintf(&ptv, arg_fmt, @ptrCast(&args)));

    var str_ptr = get_str_ptr(arg_str.*);
    if (str_ptr.*.max <= len) {
        str_ptr = str_ptr_realloc(str_ptr, len);
        arg_str.* = get_str_str(str_ptr);
    }

    _ = memcpy(arg_str.*, ptv, @as(usize, @intCast(len)) + 1);
    str_ptr.*.len = len;

    free(ptv);

    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_cat_printf — cat formatted string to managed string
// ---------------------------------------------------------------------------
pub export fn str_cat_printf(arg_str: [*c][*c]u8, arg_fmt: [*c]const u8, ...) [*c]u8 {
    var arg: [*c]u8 = null;
    var args = @cVaStart();
    defer @cVaEnd(&args);

    const len: c_int = @intCast(tintin_c.vasprintf(&arg, arg_fmt, @ptrCast(&args)));

    _ = str_cat_len(arg_str, arg, len);
    free(arg);
    return arg_str.*;
}

// ---------------------------------------------------------------------------
// str_ins_printf — insert formatted string into managed string
// ---------------------------------------------------------------------------
pub export fn str_ins_printf(arg_str: [*c][*c]u8, arg_index: c_int, arg_fmt: [*c]const u8, ...) [*c]u8 {
    var arg: [*c]u8 = null;
    var args = @cVaStart();
    defer @cVaEnd(&args);

    const len: c_int = @intCast(tintin_c.vasprintf(&arg, arg_fmt, @ptrCast(&args)));

    _ = str_ins_len(arg_str, arg_index, arg, len);
    free(arg);
    return arg_str.*;
}
