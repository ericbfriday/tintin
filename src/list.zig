const std = @import("std");

pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

// --- TinTin++ struct type aliases ---
pub const struct_session = tintin_c.struct_session;
pub const struct_listnode = tintin_c.struct_listnode;
pub const struct_listroot = tintin_c.struct_listroot;

// --- C standard library function aliases ---
pub const atoi = tintin_c.atoi;
pub const strcmp = tintin_c.strcmp;
pub const strstr = tintin_c.strstr;
pub const strlen = tintin_c.strlen;

// --- TinTin++ function aliases ---
pub const get_arg_in_braces = tintin_c.get_arg_in_braces;
pub const sub_arg_in_braces = tintin_c.sub_arg_in_braces;
pub const set_nest_node = tintin_c.set_nest_node;
pub const set_nest_node_ses = tintin_c.set_nest_node_ses;
pub const search_nest_node_ses = tintin_c.search_nest_node_ses;
pub const copy_nest_node = tintin_c.copy_nest_node;
pub const delete_index_list = tintin_c.delete_index_list;
pub const search_index_list = tintin_c.search_index_list;
pub const init_list = tintin_c.init_list;
pub const free_list = tintin_c.free_list;
pub const match = tintin_c.match;
pub const substitute = tintin_c.substitute;
pub const get_number = tintin_c.get_number;
pub const valid_variable = tintin_c.valid_variable;
pub const is_abbrev = tintin_c.is_abbrev;
pub const tintin_header = tintin_c.tintin_header;
pub const tintin_printf2 = tintin_c.tintin_printf2;
pub const show_error = tintin_c.show_error;
pub const ntos = tintin_c.ntos;
pub const str_cpy = tintin_c.str_cpy;
pub const str_cat = tintin_c.str_cat;
pub const str_cat_printf = tintin_c.str_cat_printf;
pub const str_cpy_printf = tintin_c.str_cpy_printf;
pub const str_alloc_stack = tintin_c.str_alloc_stack;
pub const generate_rand = tintin_c.generate_rand;
pub const malloc = tintin_c.malloc;
pub const free = tintin_c.free;
pub const quadsort = tintin_c.quadsort;
pub const cmp_num = tintin_c.cmp_num;
pub const cmp_str = tintin_c.cmp_str;
pub const str_len = tintin_c.str_len;
pub const str_resize = tintin_c.str_resize;
pub const hex_number_32bit = tintin_c.hex_number_32bit;
pub const is_hex = tintin_c.is_hex;
pub const sprintf = tintin_c.sprintf;
pub const strcpy = tintin_c.strcpy;
pub const is_euc_head = tintin_c.is_euc_head;
pub const get_euc_size = tintin_c.get_euc_size;
pub const is_utf8_head = tintin_c.is_utf8_head;
pub const get_utf8_size = tintin_c.get_utf8_size;

// --- TinTin++ constants ---
pub const GET_ONE: c_int = 0;
pub const GET_ALL: c_int = 1;
pub const GET_NST: c_int = 2;
pub const SUB_VAR: c_int = tintin_c.SUB_VAR;
pub const SUB_FUN: c_int = tintin_c.SUB_FUN;
pub const SUB_ESC: c_int = tintin_c.SUB_ESC;
pub const SUB_CMD: c_int = tintin_c.SUB_CMD;
pub const SUB_NONE: c_int = tintin_c.SUB_NONE;
pub const COMMAND_SEPARATOR: u8 = ';';
pub const LIST_COMMAND: c_int = tintin_c.LIST_COMMAND;
pub const LIST_VARIABLE: c_int = tintin_c.LIST_VARIABLE;
pub const LIST_SIZE: c_int = tintin_c.LIST_SIZE;
pub const BUFFER_SIZE: c_int = tintin_c.BUFFER_SIZE;

// --- TinTin++ globals ---
pub const gtd = &tintin_c.gtd;

// --- Helper macros ---
inline fn URANGE(a: c_int, b: c_int, c_arg: c_int) c_int {
    return if (b < a) a else if (b > c_arg) c_arg else b;
}

// --- ARRAY function pointer type (C calling convention) ---
pub const ARRAY = *const fn ([*c]struct_session, [*c]struct_listnode, [*c]u8, [*c]u8, [*c]u8, [*c]u8) callconv(.c) [*c]struct_session;

// --- Extern declarations for legacy C functions ---

// --- Dispatch table entry ---
const array_entry = struct {
    name: [*c]const u8,
    fun: ?ARRAY,
    desc: ?[*c]const u8,
};

fn S(comptime s: [:0]const u8) [*c]const u8 {
    return s.ptr;
}

// --- Dispatch table ---
const array_table = [_]array_entry{
    .{ .name = S("ADD"), .fun = &array_add, .desc = S("Add items to a list") },
    .{ .name = S("CLEAR"), .fun = &array_clear, .desc = S("Clear a list") },
    .{ .name = S("CLR"), .fun = &array_clear, .desc = null },
    .{ .name = S("COLLAPSE"), .fun = &array_collapse, .desc = S("Collapse the list into a variable") },
    .{ .name = S("COPY"), .fun = &array_copy, .desc = S("Copy a list to a list") },
    .{ .name = S("CREATE"), .fun = &array_create, .desc = S("Create a list with given items") },
    .{ .name = S("DELETE"), .fun = &array_delete, .desc = S("Delete a list item with given index") },
    .{ .name = S("EXPLODE"), .fun = &array_explode, .desc = S("Explode the variable into a list") },
    .{ .name = S("FILTER"), .fun = &array_filter, .desc = S("Filter a list with given regex") },
    .{ .name = S("FIND"), .fun = &array_find, .desc = S("Find a list item with given regex") },
    .{ .name = S("FND"), .fun = &array_find, .desc = null },
    .{ .name = S("GET"), .fun = &array_get, .desc = S("Retrieve a list item with given index") },
    .{ .name = S("INDEXATE"), .fun = &array_indexate, .desc = S("Indexate a list table for sorting") },
    .{ .name = S("INSERT"), .fun = &array_insert, .desc = S("Insert an item at given index") },
    .{ .name = S("NUMERATE"), .fun = &array_numerate, .desc = S("Turn a table into a list") },
    .{ .name = S("ORDER"), .fun = &array_order, .desc = S("Sort a list table numerically") },
    .{ .name = S("LENGTH"), .fun = &array_size, .desc = null },
    .{ .name = S("REFINE"), .fun = &array_refine, .desc = S("Filter a list with given math") },
    .{ .name = S("REVERSE"), .fun = &array_reverse, .desc = S("Sort a list table in reverse order") },
    .{ .name = S("SET"), .fun = &array_set, .desc = S("Change a list item at given index") },
    .{ .name = S("SHUFFLE"), .fun = &array_shuffle, .desc = S("Sort a list table in random order") },
    .{ .name = S("SIMPLIFY"), .fun = &array_simplify, .desc = S("Turn a list table into a simple list") },
    .{ .name = S("SIZE"), .fun = &array_size, .desc = null },
    .{ .name = S("SORT"), .fun = &array_sort, .desc = S("Sort a list table alphabetically") },
    .{ .name = S("SRT"), .fun = &array_sort, .desc = null },
    .{ .name = S("SWAP"), .fun = &array_swap, .desc = S("Swap two list items") },
    .{ .name = S("TOKENIZE"), .fun = &array_tokenize, .desc = S("Create a list with given characters") },
    .{ .name = S(""), .fun = null, .desc = S("") },
};

// ---------------------------------------------------------------------------
// do_list — #LIST command handler
// ---------------------------------------------------------------------------
pub export fn do_list(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
    const ses = arg_ses;
    _ = arg_arg4;

    var arg = sub_arg_in_braces(ses, arg_arg, arg_arg1, GET_NST, SUB_VAR | SUB_FUN);
    arg = sub_arg_in_braces(ses, arg, arg_arg2, GET_ONE, SUB_VAR | SUB_FUN);

    if (arg_arg1.* == 0) {
        tintin_header(ses, 80, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(" LIST OPTIONS "))))))))));

        for (array_table) |entry| {
            if (entry.fun == null) break;
            if (entry.desc) |desc| {
                if (entry.name.* != 0) {
                    tintin_printf2(ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("  [%-24s] %s"))))))))), entry.name, desc);
                }
            }
        }
        tintin_header(ses, 80, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))));
    } else if (arg_arg2.* == 0) {
        show_error(ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST <VARIABLE> <OPTION> <ARGUMENT>"))))))))));
    } else {
        var found_idx: ?usize = null;
        for (array_table, 0..) |entry, idx| {
            if (entry.name.* == 0) break;
            if (is_abbrev(arg_arg2, @as([*c]u8, @ptrCast(@constCast(entry.name)))) != 0) {
                found_idx = idx;
                break;
            }
        }

        if (found_idx == null) {
            show_error(ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #LIST {%s} {%s}: INVALID LIST OPTION."))))))))), arg_arg1, arg_arg2);
            return ses;
        }

        if (valid_variable(ses, arg_arg1) == 0) {
            show_error(ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #LIST {%s} {%s}: INVALID VARIABLE NAME."))))))))), arg_arg1, arg_arg2);
            return ses;
        }

        var node: [*c]struct_listnode = search_nest_node_ses(ses, arg_arg1);
        if (node == null) {
            node = set_nest_node_ses(ses, arg_arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))));
        }

        if (array_table[found_idx.?].fun) |fun| {
            _ = fun(ses, node, arg, arg_arg1, arg_arg2, arg_arg3);
        }
    }
    return ses;
}

// ---------------------------------------------------------------------------
// get_list_index — convert a 1-based or negative index to 0-based
// ---------------------------------------------------------------------------
pub export fn get_list_index(arg_ses: [*c]struct_session, arg_root: [*c]struct_listroot, arg_arg: [*c]u8) c_int {
    const toi: c_int = @intFromFloat(get_number(arg_ses, arg_arg));

    if (toi > 0) {
        if (toi <= arg_root.*.used) {
            return toi - 1;
        }
        return -1;
    }
    if (toi < 0) {
        if (arg_root.*.used + toi >= 0) {
            return arg_root.*.used + toi;
        }
        return -1;
    }
    return -1;
}

// ---------------------------------------------------------------------------
// array_add — add items to a list
// ---------------------------------------------------------------------------
pub export fn array_add(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    const ses = arg_ses;
    const list = arg_list;
    var arg = arg_arg;

    if (list.*.root == null) {
        list.*.root = init_list(ses, LIST_VARIABLE, LIST_SIZE);
    }

    if (list.*.root.*.used != 0) {
        const used = list.*.root.*.used;
        const list_arr: [*c][*c]struct_listnode = list.*.root.*.list;
        const numerate: bool = atoi(list_arr[0].*.arg1) == 1 and atoi(list_arr[@as(usize, @intCast(used - 1))].*.arg1) == used;

        if (!numerate) {
            var index: c_int = 0;
            while (index < used) : (index += 1) {
                if (atoi(list_arr[@as(usize, @intCast(index))].*.arg1) != index + 1) break;
            }
            show_error(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #LIST {%s} ADD: INVALID LIST. INDEX %d IS SET TO {%s}."))))))))), arg_var, index + 1, list_arr[@as(usize, @intCast(index))].*.arg1);
            return ses;
        }
    }

    var index: c_int = list.*.root.*.used + 1;

    while (arg.* != 0) {
        arg = sub_arg_in_braces(ses, arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);

        var str: [*c]u8 = arg_arg1;
        while (str.* != 0) {
            str = get_arg_in_braces(ses, str, arg_arg2, GET_ALL);
            _ = set_nest_node(list.*.root, ntos(index), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), arg_arg2);
            index += 1;

            if (str.* == COMMAND_SEPARATOR) str += 1;
        }
        if (arg.* == COMMAND_SEPARATOR) arg += 1;
    }
    return ses;
}

// ---------------------------------------------------------------------------
// array_clear
// ---------------------------------------------------------------------------
pub export fn array_clear(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_arg;
    _ = arg_arg1;
    _ = arg_arg2;
    if (arg_list.*.root != null) {
        free_list(arg_list.*.root);
        arg_list.*.root = null;
    }
    _ = set_nest_node_ses(arg_ses, arg_var, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))));
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_collapse
// ---------------------------------------------------------------------------
pub export fn array_collapse(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_var;
    _ = arg_arg2;
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN | SUB_ESC);

    if (arg_list.*.root != null) {
        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
        if (arg_list.*.root.*.used != 0) {
            _ = str_cpy(&arg_list.*.arg2, list_arr[0].*.arg2);
        }
        var index: c_int = 1;
        while (index < arg_list.*.root.*.used) : (index += 1) {
            _ = str_cat(&arg_list.*.arg2, arg_arg1);
            _ = str_cat(&arg_list.*.arg2, list_arr[@as(usize, @intCast(index))].*.arg2);
        }
        free_list(arg_list.*.root);
        arg_list.*.root = null;
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_copy
// ---------------------------------------------------------------------------
pub export fn array_copy(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_arg2;
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_arg1.* == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST {%s} COPY <VARIABLE>."))))))))), arg_var);
        return arg_ses;
    }

    const from: [*c]struct_listnode = search_nest_node_ses(arg_ses, arg_arg1);
    if (from == null) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST COPY: VARIABLE {%s} NOT FOUND."))))))))), arg_arg1);
        return arg_ses;
    }

    if (strcmp(arg_var, arg_arg1) == 0) return arg_ses;

    _ = str_cpy(&arg_list.*.arg2, from.*.arg2);
    _ = str_cpy(&arg_list.*.arg3, from.*.arg3);
    _ = str_cpy(&arg_list.*.arg4, from.*.arg4);

    if (arg_list.*.root != null) {
        free_list(arg_list.*.root);
        arg_list.*.root = null;
    }

    const list_field_ptr: [*c][*c]struct_listroot = @ptrCast(&arg_ses[0].list);
    copy_nest_node(list_field_ptr[@as(usize, @intCast(LIST_VARIABLE))], arg_list, from);
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_create
// ---------------------------------------------------------------------------
pub export fn array_create(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_var;
    const buf: [*c]u8 = str_alloc_stack(0);
    _ = substitute(arg_ses, arg_arg, buf, SUB_VAR | SUB_FUN);
    var arg: [*c]u8 = buf;

    if (arg.* == 0) {
        _ = set_nest_node_ses(arg_ses, arg_arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))));
        return arg_ses;
    }

    if (arg_list.*.root != null) free_list(arg_list.*.root);
    arg_list.*.root = init_list(arg_ses, LIST_VARIABLE, LIST_SIZE);

    var index: c_int = 1;
    while (arg.* != 0) {
        arg = get_arg_in_braces(arg_ses, arg, arg_arg1, GET_ONE);
        var str: [*c]u8 = arg_arg1;
        while (str.* != 0) {
            str = get_arg_in_braces(arg_ses, str, arg_arg2, GET_ALL);
            _ = set_nest_node(arg_list.*.root, ntos(index), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), arg_arg2);
            index += 1;
            if (str.* == COMMAND_SEPARATOR) str.* = ' ';
        }
        if (arg.* == COMMAND_SEPARATOR) arg.* = ' ';
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_delete
// ---------------------------------------------------------------------------
pub export fn array_delete(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    if (arg_list.*.root != null) {
        const arg = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
        _ = get_arg_in_braces(arg_ses, arg, arg_arg2, GET_ALL);

        const index = get_list_index(arg_ses, arg_list.*.root, arg_arg1);

        var loop: c_int = undefined;
        if (arg_arg2.* != 0) {
            loop = URANGE(1, @intFromFloat(get_number(arg_ses, arg_arg2)), arg_list.*.root.*.used - index);
        } else {
            loop = 1;
        }

        if (index == -1) {
            show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST {%s} DELETE: INVALID INDEX {%s}."))))))))), arg_var, arg_arg1);
            return arg_ses;
        }

        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
        var cnt = index + loop;
        while (cnt < arg_list.*.root.*.used) : (cnt += 1) {
            _ = str_cpy_printf(&list_arr[@as(usize, @intCast(cnt))].*.arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%d"))))))))), cnt + 1 - loop);
        }

        while (loop > 0) {
            loop -= 1;
            delete_index_list(arg_list.*.root, index);
        }

        if (arg_list.*.root.*.used == 0) {
            _ = array_clear(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);
        }
    } else {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST DELETE: VARIABLE {%s} IS NOT A LIST."))))))))), arg_var);
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_explode
// ---------------------------------------------------------------------------
pub export fn array_explode(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    const arg = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN | SUB_ESC);
    _ = sub_arg_in_braces(arg_ses, arg, arg_arg2, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_arg1.* == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST {%s} EXPLODE <SEPARATOR>"))))))))), arg_var);
        return arg_ses;
    }

    if (arg_list.*.root != null) {
        if (arg_arg2.* == 0) {
            show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST {%s} EXPLODE: VARIABLE {%s} IS ALREADY A LIST."))))))))), arg_var, arg_var);
            return arg_ses;
        }
        free_list(arg_list.*.root);
        arg_list.*.root = null;
    }
    arg_list.*.root = init_list(arg_ses, LIST_VARIABLE, LIST_SIZE);

    if (arg_arg2.* != 0) {
        _ = str_cpy(&arg_list.*.arg2, arg_arg2);
    }
    var ptr: [*c]u8 = arg_list.*.arg2;
    var index: c_int = 1;

    while (true) {
        const found: [*c]u8 = strstr(ptr, arg_arg1);
        if (found == null) {
            if (ptr.* != 0) {
                _ = set_nest_node(arg_list.*.root, ntos(index), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), ptr);
                index += 1;
            }
            break;
        }
        found.* = 0;
        _ = set_nest_node(arg_list.*.root, ntos(index), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), ptr);
        index += 1;
        ptr = found + strlen(arg_arg1);
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_filter
// ---------------------------------------------------------------------------
pub export fn array_filter(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg2, GET_ONE, SUB_VAR | SUB_FUN);

    if (arg_arg1.* == 0 and arg_arg2.* == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST <VARIABLE> FILTER <KEEP> [REMOVE]"))))))))));
        return arg_ses;
    }

    if (arg_list.*.root != null and arg_list.*.root.*.used != 0) {
        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
        const used = arg_list.*.root.*.used;
        const numerate: bool = atoi(list_arr[0].*.arg1) == 1 and atoi(list_arr[@as(usize, @intCast(used - 1))].*.arg1) == used;
        var found: c_int = 0;

        if (arg_arg1.* != 0) {
            var index: c_int = 0;
            while (index < arg_list.*.root.*.used) {
                const li: [*c][*c]struct_listnode = arg_list.*.root.*.list;
                if (match(arg_ses, li[@as(usize, @intCast(index))].*.arg2, arg_arg1, SUB_NONE) == 0) {
                    delete_index_list(arg_list.*.root, index);
                    index -= 1;
                    found = 1;
                }
                index += 1;
            }
        }

        if (arg_arg2.* != 0) {
            var index: c_int = 0;
            while (index < arg_list.*.root.*.used) {
                const li: [*c][*c]struct_listnode = arg_list.*.root.*.list;
                if (match(arg_ses, li[@as(usize, @intCast(index))].*.arg2, arg_arg2, SUB_NONE) != 0) {
                    delete_index_list(arg_list.*.root, index);
                    index -= 1;
                    found = 1;
                }
                index += 1;
            }
        }

        if (found != 0 and arg_list.*.root.*.used == 0) {
            _ = array_clear(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);
        } else if (found != 0 and numerate) {
            _ = array_numerate(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);
        }
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_find
// ---------------------------------------------------------------------------
pub export fn array_find(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_var;
    const arg = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
    _ = sub_arg_in_braces(arg_ses, arg, arg_arg2, GET_ONE, SUB_VAR | SUB_FUN);

    if (arg_arg2.* == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST <VARIABLE> FIND <TEXT> <VARIABLE>"))))))))));
        return arg_ses;
    }

    if (arg_list.*.root != null) {
        var index: c_int = 0;
        while (index < arg_list.*.root.*.used) : (index += 1) {
            const li: [*c][*c]struct_listnode = arg_list.*.root.*.list;
            if (match(arg_ses, li[@as(usize, @intCast(index))].*.arg2, arg_arg1, SUB_NONE) != 0) {
                _ = set_nest_node_ses(arg_ses, arg_arg2, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%d"))))))))), index + 1);
                return arg_ses;
            }
        }
    }
    _ = set_nest_node_ses(arg_ses, arg_arg2, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("0"))))))))));
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_get
// ---------------------------------------------------------------------------
pub export fn array_get(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_var;
    const arg = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
    _ = sub_arg_in_braces(arg_ses, arg, arg_arg2, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_arg2.* == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST <VARIABLE> GET <INDEX> <VARIABLE>"))))))))));
        return arg_ses;
    }

    if (arg_list.*.root != null) {
        const index = get_list_index(arg_ses, arg_list.*.root, arg_arg1);
        if (index != -1) {
            const li: [*c][*c]struct_listnode = arg_list.*.root.*.list;
            _ = set_nest_node_ses(arg_ses, arg_arg2, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), li[@as(usize, @intCast(index))].*.arg2);
            return arg_ses;
        }
    }
    _ = set_nest_node_ses(arg_ses, arg_arg2, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("0"))))))))));
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_indexate
// ---------------------------------------------------------------------------
pub export fn array_indexate(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_arg2;
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_list.*.root == null or arg_list.*.root.*.used == 0 or arg_list.*.root.*.list[0].*.root == null) {
        show_error(arg_ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #LIST {%s} INDEXATE: NOT AN INDEXABLE LIST TABLE."))))))))), arg_var);
        return arg_ses;
    }

    const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;

    if (arg_arg1.* == 0) {
        var cnt: c_int = 0;
        while (cnt < arg_list.*.root.*.used) : (cnt += 1) {
            if (list_arr[@as(usize, @intCast(cnt))].*.root != null) {
                _ = str_cpy(&list_arr[@as(usize, @intCast(cnt))].*.arg2, list_arr[@as(usize, @intCast(cnt))].*.arg1);
            } else {
                show_error(arg_ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #LIST {%s} INDEXATE: ABORTED DUE TO INVALID INDEX {%s}."))))))))), arg_var, list_arr[@as(usize, @intCast(cnt))].*.arg1);
                break;
            }
        }
        return arg_ses;
    }

    var cnt: c_int = 0;
    while (cnt < arg_list.*.root.*.used) : (cnt += 1) {
        if (list_arr[@as(usize, @intCast(cnt))].*.root == null) {
            show_error(arg_ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #LIST %s[%s] INDEXATE: FAILED TO FIND NEST {%s}."))))))))), arg_var, list_arr[@as(usize, @intCast(cnt))].*.arg1, arg_arg1);
            return arg_ses;
        }

        const idx = search_index_list(list_arr[@as(usize, @intCast(cnt))].*.root, arg_arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))));
        if (idx == -1) {
            show_error(arg_ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #LIST %s[%s] INDEXATE: FAILED TO FIND NEST {%s}."))))))))), arg_var, list_arr[@as(usize, @intCast(cnt))].*.arg1, arg_arg1);
            return arg_ses;
        }
        const inner: [*c][*c]struct_listnode = list_arr[@as(usize, @intCast(cnt))].*.root.*.list;
        _ = str_cpy(&list_arr[@as(usize, @intCast(cnt))].*.arg2, inner[@as(usize, @intCast(idx))].*.arg2);
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_insert
// ---------------------------------------------------------------------------
pub export fn array_insert(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_var;
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg2, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_list.*.root == null) {
        arg_list.*.root = init_list(arg_ses, LIST_VARIABLE, LIST_SIZE);
    }

    const toi: c_int = @intFromFloat(get_number(arg_ses, arg_arg1));
    if (toi == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST INSERT: INVALID INDEX {%s}."))))))))), arg_arg1);
        return arg_ses;
    }

    var index = get_list_index(arg_ses, arg_list.*.root, arg_arg1);
    if (index == -1 or toi < 0) index += 1;

    const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
    var cnt = index;
    while (cnt < arg_list.*.root.*.used) : (cnt += 1) {
        _ = str_cpy_printf(&list_arr[@as(usize, @intCast(cnt))].*.arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%d"))))))))), cnt + 2);
    }

    _ = set_nest_node(arg_list.*.root, ntos(index + 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), arg_arg2);
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_numerate
// ---------------------------------------------------------------------------
pub export fn array_numerate(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_arg;
    _ = arg_arg1;
    _ = arg_arg2;
    if (arg_list.*.root == null) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST {%s} NUMERATE: VARIABLE IS NOT A TABLE."))))))))), arg_var);
        return arg_ses;
    }

    const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
    var index: c_int = 0;
    while (index < arg_list.*.root.*.used) : (index += 1) {
        _ = str_cpy_printf(&list_arr[@as(usize, @intCast(index))].*.arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%d"))))))))), index + 1);
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_refine
// ---------------------------------------------------------------------------
pub export fn array_refine(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    var arg3_buf: [BUFFER_SIZE]u8 = undefined;
    const arg3: [*c]u8 = &arg3_buf;

    const arg = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
    _ = sub_arg_in_braces(arg_ses, arg, arg_arg2, GET_ONE, SUB_VAR | SUB_FUN);

    if (arg_arg1.* == 0 and arg_arg2.* == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST <VARIABLE> REFINE <KEEP> [REMOVE]"))))))))));
        return arg_ses;
    }

    if (arg_list.*.root != null and arg_list.*.root.*.used != 0) {
        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
        const used = arg_list.*.root.*.used;
        const numerate: bool = atoi(list_arr[0].*.arg1) == 1 and atoi(list_arr[@as(usize, @intCast(used - 1))].*.arg1) == used;
        var found: c_int = 0;

        if (arg_arg1.* != 0) {
            var index: c_int = 0;
            while (index < arg_list.*.root.*.used) {
                const li: [*c][*c]struct_listnode = arg_list.*.root.*.list;
                _ = str_cpy(&gtd.*.*.cmds[0], li[@as(usize, @intCast(index))].*.arg2);
                _ = substitute(arg_ses, arg_arg1, arg3, SUB_CMD);
                if (@as(c_int, @intFromFloat(get_number(arg_ses, arg3))) == 0) {
                    delete_index_list(arg_list.*.root, index);
                    index -= 1;
                    found = 1;
                }
                index += 1;
            }
        }

        if (arg_arg2.* != 0) {
            var index: c_int = 0;
            while (index < arg_list.*.root.*.used) {
                const li: [*c][*c]struct_listnode = arg_list.*.root.*.list;
                _ = str_cpy(&gtd.*.*.cmds[0], li[@as(usize, @intCast(index))].*.arg2);
                _ = substitute(arg_ses, arg_arg2, arg3, SUB_CMD);
                if (@as(c_int, @intFromFloat(get_number(arg_ses, arg3))) != 0) {
                    delete_index_list(arg_list.*.root, index);
                    index -= 1;
                    found = 1;
                }
                index += 1;
            }
        }

        if (found != 0 and arg_list.*.root.*.used == 0) {
            _ = array_clear(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);
        } else if (found != 0 and numerate) {
            _ = array_numerate(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);
        }
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_reverse
// ---------------------------------------------------------------------------
pub export fn array_reverse(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = array_add(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);

    const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
    var cnt: c_int = 0;
    while (cnt < @divTrunc(arg_list.*.root.*.used, 2)) : (cnt += 1) {
        const rev = arg_list.*.root.*.used - 1 - cnt;
        const ci: usize = @intCast(cnt);
        const ri: usize = @intCast(rev);

        const swap_arg2 = list_arr[ci].*.arg2;
        list_arr[ci].*.arg2 = list_arr[ri].*.arg2;
        list_arr[ri].*.arg2 = swap_arg2;

        const swap_root = list_arr[ci].*.root;
        list_arr[ci].*.root = list_arr[ri].*.root;
        list_arr[ri].*.root = swap_root;
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_set
// ---------------------------------------------------------------------------
pub export fn array_set(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg2, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_list.*.root != null) {
        const index = get_list_index(arg_ses, arg_list.*.root, arg_arg1);
        if (index == -1) {
            show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST {%s} SET: INVALID INDEX {%s}."))))))))), arg_var, arg_arg1);
            return arg_ses;
        }
        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
        _ = set_nest_node(arg_list.*.root, list_arr[@as(usize, @intCast(index))].*.arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), arg_arg2);
        return arg_ses;
    }
    show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST SET: VARIABLE {%s} IS NOT A LIST."))))))))), arg_var);
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_shuffle
// ---------------------------------------------------------------------------
pub export fn array_shuffle(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = array_add(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);

    const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
    var cnt: c_int = 0;
    while (cnt < arg_list.*.root.*.used) : (cnt += 1) {
        const rnd: c_int = @intCast(@as(c_ulonglong, @bitCast(generate_rand(arg_ses))) % @as(c_ulonglong, @intCast(arg_list.*.root.*.used)));
        const ci: usize = @intCast(cnt);
        const ri: usize = @intCast(rnd);

        const swap_arg2 = list_arr[ci].*.arg2;
        list_arr[ci].*.arg2 = list_arr[ri].*.arg2;
        list_arr[ri].*.arg2 = swap_arg2;

        const swap_root = list_arr[ci].*.root;
        list_arr[ci].*.root = list_arr[ri].*.root;
        list_arr[ri].*.root = swap_root;
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_simplify
// ---------------------------------------------------------------------------
pub export fn array_simplify(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = array_add(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);

    var str: [*c]u8 = str_alloc_stack(0);

    if (arg_list.*.root != null) {
        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
        if (arg_list.*.root.*.used != 0) {
            _ = str_cpy(&str, list_arr[0].*.arg2);
        }
        var index: c_int = 1;
        while (index < arg_list.*.root.*.used) : (index += 1) {
            _ = str_cat_printf(&str, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(";%s"))))))))), list_arr[@as(usize, @intCast(index))].*.arg2);
        }
        _ = set_nest_node_ses(arg_ses, arg_var, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), str);
        return arg_ses;
    } else {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST SIMPLIFY: VARIABLE {%s} IS NOT A LIST."))))))))), arg_list.*.arg1);
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_size
// ---------------------------------------------------------------------------
pub export fn array_size(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_var;
    _ = arg_arg2;
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_arg1.* == 0) {
        show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #LIST <VARIABLE> SIZE <VARIABLE>"))))))))));
        return arg_ses;
    }

    if (arg_list.*.root != null) {
        _ = set_nest_node_ses(arg_ses, arg_arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%d"))))))))), arg_list.*.root.*.used);
    } else {
        _ = set_nest_node_ses(arg_ses, arg_arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("0"))))))))));
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_swap
// ---------------------------------------------------------------------------
pub export fn array_swap(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg1, GET_ONE, SUB_VAR | SUB_FUN);
    _ = sub_arg_in_braces(arg_ses, arg_arg, arg_arg2, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_list.*.root != null) {
        const index1 = get_list_index(arg_ses, arg_list.*.root, arg_arg1);
        const index2 = get_list_index(arg_ses, arg_list.*.root, arg_arg2);

        if (index1 == -1 or index2 == -1) {
            show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST {%s} SWAP: INVALID INDEX {%s} {%s}."))))))))), arg_var, arg_arg1, arg_arg2);
            return arg_ses;
        }

        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;
        const idx1: usize = @intCast(index1);
        const idx2: usize = @intCast(index2);

        const swap_arg2 = list_arr[idx1].*.arg2;
        list_arr[idx1].*.arg2 = list_arr[idx2].*.arg2;
        list_arr[idx2].*.arg2 = swap_arg2;

        const swap_root = list_arr[idx1].*.root;
        list_arr[idx1].*.root = list_arr[idx2].*.root;
        list_arr[idx2].*.root = swap_root;

        return arg_ses;
    }
    show_error(arg_ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#LIST SWAP: VARIABLE {%s} IS NOT A LIST."))))))))), arg_var);
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_order
// ---------------------------------------------------------------------------
pub export fn array_order(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = array_add(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);

    if (arg_list.*.root != null and arg_list.*.root.*.used > 1) {
        const used: usize = @intCast(arg_list.*.root.*.used);
        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;

        if (list_arr[0].*.root != null) {
            const root_buffer: [*c][*c]struct_listroot = @ptrCast(@alignCast(malloc(used * @sizeOf([*c]struct_listroot))));
            const arg2_buffer: [*c][*c]u8 = @ptrCast(@alignCast(malloc(used * @sizeOf([*c]u8))));

            var cnt: usize = 0;
            while (cnt < used) : (cnt += 1) {
                const len = str_len(list_arr[cnt].*.arg2);

                root_buffer[cnt] = list_arr[cnt].*.root;
                arg2_buffer[cnt] = list_arr[cnt].*.arg2;

                _ = str_resize(&arg2_buffer[cnt], 10);

                _ = sprintf(arg2_buffer[cnt] + @as(usize, @intCast(len)) + 1, "%x", @as(c_int, @intCast(cnt)));
            }

            quadsort(@ptrCast(arg2_buffer), used, @sizeOf([*c]u8), @ptrCast(&cmp_num));

            cnt = 0;
            while (cnt < used) : (cnt += 1) {
                const len = str_len(arg2_buffer[cnt]);
                const val = hex_number_32bit(arg2_buffer[cnt] + @as(usize, @intCast(len)) + 1);

                list_arr[cnt].*.root = root_buffer[val];
                list_arr[cnt].*.arg2 = arg2_buffer[cnt];
            }

            free(@ptrCast(arg2_buffer));
            free(@ptrCast(root_buffer));
        } else {
            const arg2_buffer: [*c][*c]u8 = @ptrCast(@alignCast(malloc(used * @sizeOf([*c]u8))));

            var cnt: usize = 0;
            while (cnt < used) : (cnt += 1) {
                arg2_buffer[cnt] = list_arr[cnt].*.arg2;
            }

            quadsort(@ptrCast(arg2_buffer), used, @sizeOf([*c]u8), @ptrCast(&cmp_num));

            cnt = 0;
            while (cnt < used) : (cnt += 1) {
                list_arr[cnt].*.arg2 = arg2_buffer[cnt];
            }

            free(@ptrCast(arg2_buffer));
        }
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_sort
// ---------------------------------------------------------------------------
pub export fn array_sort(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = array_add(arg_ses, arg_list, arg_arg, arg_var, arg_arg1, arg_arg2);

    if (arg_list.*.root != null and arg_list.*.root.*.used > 1) {
        const used: usize = @intCast(arg_list.*.root.*.used);
        const list_arr: [*c][*c]struct_listnode = arg_list.*.root.*.list;

        if (list_arr[0].*.root != null) {
            const root_buffer: [*c][*c]struct_listroot = @ptrCast(@alignCast(malloc(used * @sizeOf([*c]struct_listroot))));
            const arg2_buffer: [*c][*c]u8 = @ptrCast(@alignCast(malloc(used * @sizeOf([*c]u8))));

            var cnt: usize = 0;
            while (cnt < used) : (cnt += 1) {
                const len = str_len(list_arr[cnt].*.arg2);

                root_buffer[cnt] = list_arr[cnt].*.root;
                arg2_buffer[cnt] = list_arr[cnt].*.arg2;

                _ = str_resize(&arg2_buffer[cnt], 10);

                _ = sprintf(arg2_buffer[cnt] + @as(usize, @intCast(len)) + 1, "%x", @as(c_int, @intCast(cnt)));
            }

            quadsort(@ptrCast(arg2_buffer), used, @sizeOf([*c]u8), @ptrCast(&cmp_str));

            cnt = 0;
            while (cnt < used) : (cnt += 1) {
                const len = str_len(arg2_buffer[cnt]);
                const val = hex_number_32bit(arg2_buffer[cnt] + @as(usize, @intCast(len)) + 1);

                list_arr[cnt].*.root = root_buffer[val];
                list_arr[cnt].*.arg2 = arg2_buffer[cnt];
            }

            free(@ptrCast(arg2_buffer));
            free(@ptrCast(root_buffer));
        } else {
            const arg2_buffer: [*c][*c]u8 = @ptrCast(@alignCast(malloc(used * @sizeOf([*c]u8))));

            var cnt: usize = 0;
            while (cnt < used) : (cnt += 1) {
                arg2_buffer[cnt] = list_arr[cnt].*.arg2;
            }

            quadsort(@ptrCast(arg2_buffer), used, @sizeOf([*c]u8), @ptrCast(&cmp_str));

            cnt = 0;
            while (cnt < used) : (cnt += 1) {
                list_arr[cnt].*.arg2 = arg2_buffer[cnt];
            }

            free(@ptrCast(arg2_buffer));
        }
    }
    return arg_ses;
}

// ---------------------------------------------------------------------------
// array_tokenize
// ---------------------------------------------------------------------------
pub export fn array_tokenize(arg_ses: [*c]struct_session, arg_list: [*c]struct_listnode, arg_arg: [*c]u8, arg_var: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8) [*c]struct_session {
    _ = arg_var;
    const buf: [*c]u8 = str_alloc_stack(0);
    _ = substitute(arg_ses, arg_arg, buf, SUB_VAR | SUB_FUN);
    var arg = buf;

    if (arg_list.*.root != null) {
        free_list(arg_list.*.root);
    }
    arg_list.*.root = init_list(arg_ses, LIST_VARIABLE, LIST_SIZE);

    var index: c_int = 1;
    while (arg.* != 0) {
        arg = get_arg_in_braces(arg_ses, arg, arg_arg1, GET_ALL);

        var i: usize = 0;
        while (arg_arg1[i] != 0) {
            if (arg_arg1[i] == '{') {
                _ = strcpy(arg_arg2, @as([*c]const u8, @ptrCast("\\x7B")));
                i += 1;
            } else if (arg_arg1[i] == '}') {
                _ = strcpy(arg_arg2, @as([*c]const u8, @ptrCast("\\x7D")));
                i += 1;
            } else if (arg_arg1[i] == '\\' and arg_arg1[i + 1] == 'x' and is_hex(arg_arg1[i + 2]) != 0 and is_hex(arg_arg1[i + 3]) != 0) {
                i += @as(usize, @intCast(sprintf(arg_arg2, "%.4s", &arg_arg1[i])));
            } else if ((arg_ses.*.charset & tintin_c.CHARSET_FLAG_EUC) != 0 and is_euc_head(arg_ses, &arg_arg1[i]) != 0) {
                i += @as(usize, @intCast(sprintf(arg_arg2, "%.*s", get_euc_size(arg_ses, &arg_arg1[i]), &arg_arg1[i])));
            } else if ((arg_ses.*.charset & tintin_c.CHARSET_FLAG_UTF8) != 0 and is_utf8_head(&arg_arg1[i]) != 0) {
                i += @as(usize, @intCast(sprintf(arg_arg2, "%.*s", get_utf8_size(&arg_arg1[i]), &arg_arg1[i])));
            } else {
                i += @as(usize, @intCast(sprintf(arg_arg2, "%c", arg_arg1[i])));
            }
            
            _ = set_nest_node(arg_list.*.root, ntos(index), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("%s"))))))))), arg_arg2);
            index += 1;
        }

        if (arg.* == COMMAND_SEPARATOR) {
            arg += 1;
        }
    }
    return arg_ses;
}
