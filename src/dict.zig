const std = @import("std");

pub const tintin_c = @cImport({
    @cInclude("tintin.h");
    @cInclude("dict.h");
});

// --- TinTin++ struct type aliases ---
pub const struct_session = tintin_c.struct_session;
pub const struct_listnode = tintin_c.struct_listnode;
pub const struct_listroot = tintin_c.struct_listroot;

// --- C standard library function aliases ---
pub const calloc = tintin_c.calloc;
pub const strcmp = tintin_c.strcmp;
pub const printf = tintin_c.printf;
pub const tolower = tintin_c.tolower;

// --- TinTin++ function aliases ---
pub const is_alpha = tintin_c.is_alpha;
pub const get_arg_in_braces = tintin_c.get_arg_in_braces;
pub const sub_arg_in_braces = tintin_c.sub_arg_in_braces;
pub const show_message = tintin_c.show_message;
pub const tintin_printf2 = tintin_c.tintin_printf2;

// --- TinTin++ constants ---
pub const GET_ONE: c_int = 0;
pub const GET_ALL: c_int = 1;
pub const SUB_VAR: c_int = 1 << 4;
pub const SUB_FUN: c_int = 1 << 5;
pub const COMMAND_SEPARATOR: u8 = ';';
pub const LIST_COMMAND: c_int = tintin_c.LIST_COMMAND;
pub const BUFFER_SIZE: usize = @intCast(tintin_c.BUFFER_SIZE);

// --- wordlist from dict.h (array of 26 char pointers, one per letter) ---
pub const wordlist: *[26][*c]u8 = &tintin_c.wordlist;

// --- Local dictionary data structure (matches the C struct in dict.c) ---
const dictionary_data = extern struct {
    wordindex: [26][*c]c_uint,
    listsize: [26]c_uint,
};

// Module-level dictionary pointer (file-scope in C)
pub export var dictionary: [*c]dictionary_data = null;

// ---------------------------------------------------------------------------
// dictionary_init
// ---------------------------------------------------------------------------
pub export fn dictionary_init() void {
    const dict_ptr: ?*anyopaque = calloc(1, @sizeOf(dictionary_data));
    dictionary = @ptrCast(@alignCast(dict_ptr));

    // First pass: count words per hash bucket
    for (0..26) |hash_usize| {
        const hash: usize = hash_usize;
        var index: c_uint = 1;
        var pta: [*c]u8 = wordlist[hash];

        while (true) {
            pta += 1;
            if (pta.* == 0) {
                index += 1;
                pta += 1;
            }
            if (pta.* == 0) break;
        }

        dictionary[0].listsize[hash] = index;
        const alloc_ptr: ?*anyopaque = calloc(index, @sizeOf(c_uint));
        dictionary[0].wordindex[hash] = @ptrCast(@alignCast(alloc_ptr));
    }

    // Second pass: record word offsets
    for (0..26) |hash_usize| {
        const hash: usize = hash_usize;
        var index: c_uint = 1;
        var pta: [*c]u8 = wordlist[hash] + 1;

        while (true) {
            const offset: usize = @intFromPtr(pta) - @intFromPtr(wordlist[hash]);
            dictionary[0].wordindex[hash][index] = @intCast(offset);
            index += 1;

            while (pta.* != 0) {
                pta += 1;
            }
            pta += 1;
            if (pta.* == 0) break;
        }
    }
}

// ---------------------------------------------------------------------------
// dictionary_search — binary search in a hash bucket
// ---------------------------------------------------------------------------
pub export fn dictionary_search(arg_hash: c_int, arg_key: [*c]u8) c_int {
    const hash: usize = @intCast(arg_hash);
    var bot: c_uint = 0;
    var top: c_uint = dictionary[0].listsize[hash];

    while (top > 1) {
        const mid: c_uint = top / 2;
        const idx: usize = bot + mid;
        const offset: usize = dictionary[0].wordindex[hash][idx];
        if (strcmp(arg_key, wordlist[hash] + offset) >= 0) {
            bot += mid;
        }
        top -= mid;
    }

    const bot_offset: usize = dictionary[0].wordindex[hash][bot];
    if (strcmp(arg_key, wordlist[hash] + bot_offset) == 0) {
        return @bitCast(bot);
    }
    return -1;
}

// ---------------------------------------------------------------------------
// dictionary_lowerstring — copy only alpha chars, lowered
// ---------------------------------------------------------------------------
pub export fn dictionary_lowerstring(arg_in: [*c]u8, arg_out: [*c]u8) void {
    var pti: [*c]u8 = arg_in;
    var pto: [*c]u8 = arg_out;

    while (pti.* != 0) {
        if (is_alpha(pti.*) != 0) {
            pto.* = @intCast(@as(c_uint, @bitCast(tolower(@as(c_int, @bitCast(@as(c_uint, pti.*)))))));
            pto += 1;
        }
        pti += 1;
    }
    pto.* = 0;
}

// ---------------------------------------------------------------------------
// spellcheck_count — count misspelled words
// ---------------------------------------------------------------------------
pub export fn spellcheck_count(arg_ses: [*c]struct_session, arg_in: [*c]u8) c_int {
    const ses = arg_ses;
    var arg1: [BUFFER_SIZE]u8 = undefined;
    var arg2: [BUFFER_SIZE]u8 = undefined;

    if (dictionary == null) {
        dictionary_init();
    }

    var cnt: c_int = 0;
    var arg: [*c]u8 = arg_in;

    while (arg.* != 0) {
        arg = get_arg_in_braces(ses, arg, &arg1, GET_ONE);
        dictionary_lowerstring(&arg1, &arg2);

        if (is_alpha(arg2[0]) != 0) {
            const hash: c_int = @as(c_int, @bitCast(@as(c_uint, arg2[0]))) - 'a';
            const index = dictionary_search(hash, @as([*c]u8, &arg2) + 1);
            if (index == -1) {
                cnt += 1;
            }
        }

        if (arg.* == COMMAND_SEPARATOR) {
            arg += 1;
        }
    }
    return cnt;
}

// ---------------------------------------------------------------------------
// do_dictionary — #DICTIONARY command handler
// ---------------------------------------------------------------------------
pub export fn do_dictionary(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
    const ses = arg_ses;
    _ = arg_arg4;

    if (dictionary == null) {
        dictionary_init();
    }

    _ = sub_arg_in_braces(ses, arg_arg, arg_arg1, GET_ALL, SUB_VAR | SUB_FUN);

    if (arg_arg1.* == 0 or is_alpha(arg_arg1.*) == 0) {
        show_message(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #DICTIONARY {WORD}"))))))))))));

        var hash: c_int = 0;
        while (hash < 26) : (hash += 1) {
            _ = printf("hash %c = %d\n", @as(c_int, 'A') + hash, @as(c_int, @bitCast(dictionary[0].listsize[@as(usize, @intCast(hash))])));
        }
        return ses;
    }

    var arg: [*c]u8 = arg_arg1;

    while (arg.* != 0) {
        arg = get_arg_in_braces(ses, arg, arg_arg2, GET_ONE);
        dictionary_lowerstring(arg_arg2, arg_arg3);

        if (is_alpha(arg_arg3.*) != 0) {
            const hash: c_int = @as(c_int, @bitCast(@as(c_uint, arg_arg3.*))) - 'a';
            const index = dictionary_search(hash, arg_arg3 + 1);

            if (index == -1) {
                tintin_printf2(ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("\x1b[1;31m%s"))))))))))), arg_arg2);
            } else {
                tintin_printf2(ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("\x1b[1;32m%s"))))))))))), arg_arg2);
            }
        }

        if (arg.* == COMMAND_SEPARATOR) {
            arg += 1;
        }
    }
    return ses;
}

fn urange(a: c_int, b: c_int, c: c_int) c_int {
    if (b < a) return a;
    if (b > c) return c;
    return b;
}

pub export fn cursor_dictionary_tab_add(flag: c_int) c_int {
    const gtd = tintin_c.gtd;
    if (gtd == null) return 0;
    const ses = gtd.*.ses;
    if (ses == null) return 0;
    const list_array = ses.*.list;
    const cmd_root = list_array[@intCast(LIST_COMMAND)];
    if (cmd_root == null) return 0;

    if (dictionary == null) {
        dictionary_init();
    }

    if (cmd_root.*.used <= 0) return 0;
    const node0 = cmd_root.*.list[0];
    if (node0 == null) return 0;
    const tail = node0.*.arg1;
    if (tail == null) return 0;

    if (tail[0] == 0 or is_alpha(tail[0]) == 0) {
        return 0;
    }

    const tail_len = @as(usize, @intCast(tintin_c.str_len(tail)));

    const hash: usize = @intCast(tolower(tail[0]) - 'a');

    const last_node = cmd_root.*.list[@intCast(cmd_root.*.used - 1)];
    if (last_node == null) return 0;
    const last_node_val = last_node.*;
    const i_start: usize = @intCast(urange(0, @as([*c]c_int, @ptrCast(@constCast(&last_node_val.unnamed_0.val32)))[1], cmd_root.*.used - 1));

    var i = i_start;
    while (i < dictionary[0].listsize[hash]) : (i += 1) {
        const offset: usize = dictionary[0].wordindex[hash][i];
        const word = wordlist[hash] + offset;

        var val: c_int = 0;
        if ((flag & tintin_c.TAB_FLAG_CASELESS) != 0) {
            val = tintin_c.strncasecmp(word, tail + 1, @intCast(tail_len - 1));
        } else {
            if (word[0] < tail[1]) {
                continue;
            }
            val = tintin_c.strncmp(word, tail + 1, @intCast(tail_len - 1));
        }

        if (val < 0) {
            continue;
        }

        if (val > 0) {
            return 0;
        }

        var buf: [50]u8 = undefined;
        buf[0] = tail[0];
        const word_len = std.mem.span(word).len;
        if (word_len + 2 > buf.len) {
            continue;
        }
        @memcpy(buf[1 .. word_len + 1], word[0..word_len]);
        buf[word_len + 1] = 0;

        if (tintin_c.search_node_list(cmd_root, &buf) != null) {
            continue;
        }

        const node = tintin_c.create_node_list(cmd_root, &buf, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))));
        if (node == null) continue;

        var val32 = node.*.unnamed_0.val32;
        val32[1] = @intCast(i);
        node.*.unnamed_0.val32 = val32;

        if ((flag & tintin_c.TAB_FLAG_FORWARD) != 0) {
            return 1;
        }

        if (cmd_root.*.used > 100) {
            return 0;
        }
    }
    return 0;
}

