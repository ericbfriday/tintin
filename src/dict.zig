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
        show_message(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@constCast("#SYNTAX: #DICTIONARY {WORD}"))));

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
                tintin_printf2(ses, @as([*c]u8, @ptrCast(@constCast("\x1b[1;31m%s"))), arg_arg2);
            } else {
                tintin_printf2(ses, @as([*c]u8, @ptrCast(@constCast("\x1b[1;32m%s"))), arg_arg2);
            }
        }

        if (arg.* == COMMAND_SEPARATOR) {
            arg += 1;
        }
    }
    return ses;
}
