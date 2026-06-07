const std = @import("std");

pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

// --- TinTin++ struct type aliases ---
pub const struct_session = tintin_c.struct_session;
pub const time_t = tintin_c.time_t;

// --- C standard library function aliases ---
pub const strlen = tintin_c.strlen;
pub const toupper = tintin_c.toupper;
pub const tolower = tintin_c.tolower;
pub const strcasecmp = tintin_c.strcasecmp;
pub const rand = tintin_c.rand;
pub const srand = tintin_c.srand;
pub const gettimeofday = tintin_c.gettimeofday;
pub const sprintf = tintin_c.sprintf;
pub const vsprintf = tintin_c.vsprintf;
pub const strcat = tintin_c.strcat;
pub const strcpy = tintin_c.strcpy;
pub const localtime = tintin_c.localtime;
pub const strftime = tintin_c.strftime;
pub const memset = tintin_c.memset;

// --- TinTin++ function aliases ---
pub const is_digit = tintin_c.is_digit;
pub const is_hex = tintin_c.is_hex;
pub const str_alloc_stack = tintin_c.str_alloc_stack;
pub const get_ulong = tintin_c.get_ulong;

// --- TinTin++ globals ---
pub const gtd = &tintin_c.gtd;

// --- Constants ---
pub const TRUE: c_int = 1;
pub const FALSE: c_int = 0;

// ---------------------------------------------------------------------------
// hex_digit — convert a single hex char to its numeric value
// ---------------------------------------------------------------------------
pub export fn hex_digit(arg_str: [*c]u8) c_int {
    const ch = arg_str.*;
    if (is_digit(ch) != 0) {
        return @as(c_int, ch) - '0';
    } else {
        return toupper(@as(c_int, ch)) - 'A' + 10;
    }
}

// ---------------------------------------------------------------------------
// hex_number_64bit — parse up to 16 hex digits
// ---------------------------------------------------------------------------
pub export fn hex_number_64bit(arg_str: [*c]u8) c_ulonglong {
    var len: c_ulonglong = 0;
    var val: c_ulonglong = 0;

    while (len < 16) : (len += 1) {
        if (is_hex((arg_str + @as(usize, @intCast(len))).*) == 0) break;
    }

    var mul: c_ulonglong = 1;
    while (len > 0) : (mul *= 16) {
        len -= 1;
        val += mul * @as(c_ulonglong, @intCast(hex_digit(arg_str + @as(usize, @intCast(len)))));
    }
    return val;
}

// ---------------------------------------------------------------------------
// hex_number_32bit — parse up to 8 hex digits
// ---------------------------------------------------------------------------
pub export fn hex_number_32bit(arg_str: [*c]u8) c_uint {
    var len: c_ulonglong = 0;
    var val: c_ulonglong = 0;

    while (len < 8) : (len += 1) {
        if (is_hex((arg_str + @as(usize, @intCast(len))).*) == 0) break;
    }

    var mul: c_ulonglong = 1;
    while (len > 0) : (mul *= 16) {
        len -= 1;
        val += mul * @as(c_ulonglong, @intCast(hex_digit(arg_str + @as(usize, @intCast(len)))));
    }
    return @intCast(val);
}

// ---------------------------------------------------------------------------
// hex_number_8bit — parse 2 hex digits
// ---------------------------------------------------------------------------
pub export fn hex_number_8bit(arg_str: [*c]u8) c_int {
    var str = arg_str;
    var value: c_int = 0;
    if (str.* != 0) {
        value += 16 * hex_digit(str);
        str += 1;
    }
    if (str.* != 0) {
        value += hex_digit(str);
    }
    return value;
}

// ---------------------------------------------------------------------------
// oct_number — parse 2 octal digits
// ---------------------------------------------------------------------------
pub export fn oct_number(arg_str: [*c]u8) c_int {
    var str = arg_str;
    var value: c_int = 0;
    if (str.* != 0) {
        if (is_digit(str.*) != 0) {
            value += 8 * (@as(c_int, str.*) - '0');
        }
        str += 1;
    }
    if (str.* != 0) {
        if (is_digit(str.*) != 0) {
            value += @as(c_int, str.*) - '0';
        }
    }
    return value;
}

// ---------------------------------------------------------------------------
// UTF-8 encoding helpers
// ---------------------------------------------------------------------------
fn write_utf8(val: c_int, pto: [*c]u8) c_int {
    var p = pto;
    if (val < 128) {
        p[0] = @intCast(@as(c_uint, @bitCast(val)));
        p[1] = 0;
        return 1;
    } else if (val < 4096) {
        p[0] = @intCast(@as(c_uint, @bitCast(192 + @divTrunc(val, 64))));
        p[1] = @intCast(@as(c_uint, @bitCast(128 + @mod(val, 64))));
        p[2] = 0;
        return 2;
    } else if (val < 65536) {
        p[0] = @intCast(@as(c_uint, @bitCast(224 + @divTrunc(val, 4096))));
        p[1] = @intCast(@as(c_uint, @bitCast(128 + @mod(@divTrunc(val, 64), 64))));
        p[2] = @intCast(@as(c_uint, @bitCast(128 + @mod(val, 64))));
        p[3] = 0;
        return 3;
    } else if (val < 1114112) {
        p[0] = @intCast(@as(c_uint, @bitCast(240 + @divTrunc(val, 262144))));
        p[1] = @intCast(@as(c_uint, @bitCast(128 + @mod(@divTrunc(val, 4096), 64))));
        p[2] = @intCast(@as(c_uint, @bitCast(128 + @mod(@divTrunc(val, 64), 64))));
        p[3] = @intCast(@as(c_uint, @bitCast(128 + @mod(val, 64))));
        p[4] = 0;
        return 4;
    } else {
        // Invalid Unicode → U+FFFD replacement character
        p[0] = 239;
        p[1] = 191;
        p[2] = 189;
        p[3] = 0;
        return 3;
    }
}

pub export fn unicode_8_bit(arg_str: [*c]u8, arg_out: [*c]u8) c_int {
    var str = arg_str;
    var val: c_int = 0;
    val += 16 * hex_digit(str);
    str += 1;
    val += hex_digit(str);
    return write_utf8(val, arg_out);
}

pub export fn unicode_12_bit(arg_str: [*c]u8, arg_out: [*c]u8) c_int {
    var str = arg_str;
    var val: c_int = 0;
    val += 256 * hex_digit(str);
    str += 1;
    val += 16 * hex_digit(str);
    str += 1;
    val += hex_digit(str);
    return write_utf8(val, arg_out);
}

pub export fn unicode_16_bit(arg_str: [*c]u8, arg_out: [*c]u8) c_int {
    var str = arg_str;
    var val: c_int = 0;
    val += 4096 * hex_digit(str);
    str += 1;
    val += 256 * hex_digit(str);
    str += 1;
    val += 16 * hex_digit(str);
    str += 1;
    val += hex_digit(str);
    return write_utf8(val, arg_out);
}

pub export fn unicode_20_bit(arg_str: [*c]u8, arg_out: [*c]u8) c_int {
    var str = arg_str;
    var val: c_int = 0;
    val += 65536 * hex_digit(str);
    str += 1;
    val += 4096 * hex_digit(str);
    str += 1;
    val += 256 * hex_digit(str);
    str += 1;
    val += 16 * hex_digit(str);
    str += 1;
    val += hex_digit(str);
    return write_utf8(val, arg_out);
}

pub export fn unicode_21_bit(arg_str: [*c]u8, arg_out: [*c]u8) c_int {
    var str = arg_str;
    var val: c_int = 0;
    val += 1048576 * hex_digit(str);
    str += 1;
    val += 65536 * hex_digit(str);
    str += 1;
    val += 4096 * hex_digit(str);
    str += 1;
    val += 256 * hex_digit(str);
    str += 1;
    val += 16 * hex_digit(str);
    str += 1;
    val += hex_digit(str);
    return write_utf8(val, arg_out);
}

// ---------------------------------------------------------------------------
// utime — microsecond timestamp, monotonically increasing
// ---------------------------------------------------------------------------
pub export fn utime() c_ulonglong {
    var now_time: tintin_c.struct_timeval = undefined;
    _ = gettimeofday(&now_time, null);

    const ut: c_ulonglong = @as(c_ulonglong, @intCast(now_time.tv_sec)) * 1000000 + @as(c_ulonglong, @intCast(now_time.tv_usec));

    if (gtd.*.*.utime < ut) {
        gtd.*.*.utime = ut;
    }

    const result = gtd.*.*.utime;
    gtd.*.*.utime += 1;
    return result;
}

// ---------------------------------------------------------------------------
// get_time — parse a time value, auto-detect microseconds vs seconds
// ---------------------------------------------------------------------------
pub export fn get_time(arg_ses: [*c]struct_session, arg_str: [*c]u8) time_t {
    var time_val: c_ulonglong = get_ulong(arg_ses, arg_str);

    if (time_val >= 1000000000 * 1000000) {
        time_val /= 1000000;
    }

    return @intCast(time_val);
}

// ---------------------------------------------------------------------------
// seed_rand — seed the RNG for a session
// ---------------------------------------------------------------------------
pub export fn seed_rand(arg_ses: [*c]struct_session, arg_seed: c_ulonglong) void {
    arg_ses.*.rand = arg_seed % 4294967291;
    arg_ses.*.rkey = @intCast(arg_seed % 5);
    srand(@intCast(arg_ses.*.rand));
}

// ---------------------------------------------------------------------------
// generate_rand — generate a random number
// ---------------------------------------------------------------------------
pub export fn generate_rand(arg_ses: [*c]struct_session) c_ulonglong {
    _ = arg_ses;
    return @intCast(rand());
}

// ---------------------------------------------------------------------------
// capitalize — return uppercase copy (uses str_alloc_stack rotating buffer)
// ---------------------------------------------------------------------------
pub export fn capitalize(arg_str: [*c]u8) [*c]u8 {
    const outbuf: [*c]u8 = str_alloc_stack(0);
    var cnt: usize = 0;

    while ((arg_str + cnt).* != 0) {
        (outbuf + cnt).* = @intCast(@as(c_uint, @bitCast(toupper(@as(c_int, (arg_str + cnt).*)))));
        cnt += 1;
    }
    (outbuf + cnt).* = 0;
    return outbuf;
}

// ---------------------------------------------------------------------------
// decapitalize — return lowercase copy (uses str_alloc_stack rotating buffer)
// ---------------------------------------------------------------------------
pub export fn decapitalize(arg_str: [*c]u8) [*c]u8 {
    const outbuf: [*c]u8 = str_alloc_stack(0);
    var cnt: usize = 0;

    while ((arg_str + cnt).* != 0) {
        (outbuf + cnt).* = @intCast(@as(c_uint, @bitCast(tolower(@as(c_int, (arg_str + cnt).*)))));
        cnt += 1;
    }
    (outbuf + cnt).* = 0;
    return outbuf;
}

// ---------------------------------------------------------------------------
// is_suffix — check if str2 is a suffix of str1 (case-insensitive)
// ---------------------------------------------------------------------------
pub export fn is_suffix(arg_str1: [*c]u8, arg_str2: [*c]u8) c_int {
    const len1: usize = strlen(arg_str1);
    const len2: usize = strlen(arg_str2);

    if (len1 >= len2) {
        if (strcasecmp(arg_str1 + (len1 - len2), arg_str2) == 0) {
            return TRUE;
        }
    }
    return FALSE;
}

// ---------------------------------------------------------------------------
// cat_sprintf — concatenate formatted string
// ---------------------------------------------------------------------------
pub export fn cat_sprintf(arg_dest: [*c]u8, arg_fmt: [*c]const u8, ...) c_int {
    var buf: [100000]u8 = undefined; // STRING_SIZE
    var args = @cVaStart();
    defer @cVaEnd(&args);

    const size = vsprintf(&buf, arg_fmt, @as([*c]u8, @ptrCast(args)));
    _ = strcat(arg_dest, &buf);

    return size;
}

// ---------------------------------------------------------------------------
// ins_sprintf — insert formatted string at the beginning
// ---------------------------------------------------------------------------
pub export fn ins_sprintf(arg_dest: [*c]u8, arg_fmt: [*c]const u8, ...) void {
    var tmp: [100000]u8 = undefined; // STRING_SIZE
    var args = @cVaStart();
    defer @cVaEnd(&args);

    _ = strcpy(&tmp, arg_dest);
    const len = vsprintf(arg_dest, arg_fmt, @as([*c]u8, @ptrCast(args)));
    _ = strcpy(arg_dest + @as(usize, @intCast(len)), &tmp);
}

// ---------------------------------------------------------------------------
// socket_printf — print formatted string to mud socket
// ---------------------------------------------------------------------------
pub export fn socket_printf(arg_ses: [*c]struct_session, arg_length: usize, arg_format: [*c]const u8, ...) void {
    var buf: [100000]u8 = undefined; // STRING_SIZE
    var args = @cVaStart();
    defer @cVaEnd(&args);

    const size = vsprintf(&buf, arg_format, @as([*c]u8, @ptrCast(args)));

    if (size != @as(c_int, @intCast(arg_length)) and (arg_ses.*.telopts & tintin_c.TELOPT_FLAG_DEBUG) != 0) {
        tintin_c.tintin_printf(arg_ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("DEBUG TELNET: socket_printf size difference: %d vs %d"))))))))), size, @as(c_int, @intCast(arg_length)));
    }

    if ((arg_ses.*.flags & tintin_c.SES_FLAG_CONNECTED) != 0) {
        tintin_c.write_line_mud(arg_ses, &buf, @as(c_int, @intCast(arg_length)));
    }
}

// ---------------------------------------------------------------------------
// telnet_printf — print formatted string to telnet socket
// ---------------------------------------------------------------------------
pub export fn telnet_printf(arg_ses: [*c]struct_session, arg_length: c_int, arg_format: [*c]const u8, ...) void {
    var buf: [100000]u8 = undefined; // STRING_SIZE
    var args = @cVaStart();
    defer @cVaEnd(&args);

    const size = vsprintf(&buf, arg_format, @as([*c]u8, @ptrCast(args)));

    if (arg_length != -1 and size != arg_length and (arg_ses.*.telopts & tintin_c.TELOPT_FLAG_DEBUG) != 0) {
        tintin_c.tintin_printf(arg_ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("DEBUG TELNET: telnet_printf size difference: %d vs %d"))))))))), size, arg_length);
    }

    if ((arg_ses.*.flags & tintin_c.SES_FLAG_CONNECTED) != 0) {
        arg_ses.*.telopts |= tintin_c.TELOPT_FLAG_TELNET;
        tintin_c.write_line_mud(arg_ses, &buf, size);
        arg_ses.*.telopts &= @as(c_int, @bitCast(~@as(c_uint, tintin_c.TELOPT_FLAG_TELNET)));
    }
}

// ---------------------------------------------------------------------------
// str_time — format time string
// ---------------------------------------------------------------------------
var str_time_buf: [10][256]u8 = undefined; // NAME_SIZE = 256
var str_time_cnt: usize = 0;

pub export fn str_time(arg_ses: [*c]struct_session, arg_format: [*c]const u8, arg_time: time_t) [*c]u8 {
    _ = arg_ses; // Unused
    str_time_cnt = (str_time_cnt + 1) % 10;
    
    var time_val = arg_time;
    const timeval_tm = localtime(&time_val);

    _ = strftime(&str_time_buf[str_time_cnt], 256, arg_format, timeval_tm);

    return &str_time_buf[str_time_cnt];
}

// ---------------------------------------------------------------------------
// ftos — float to string
// ---------------------------------------------------------------------------
var ftos_outbuf: [10][100]u8 = undefined; // NUMBER_SIZE = 100
var ftos_cnt: usize = 0;

pub export fn ftos(arg_number: f64) [*c]u8 {
    ftos_cnt = (ftos_cnt + 1) % 10;

    _ = sprintf(&ftos_outbuf[ftos_cnt], "%f", arg_number);

    var len: usize = strlen(&ftos_outbuf[ftos_cnt]);
    if (len > 0) {
        len -= 1;
        while (len > 0) : (len -= 1) {
            if (ftos_outbuf[ftos_cnt][len] == '0') {
                ftos_outbuf[ftos_cnt][len] = 0;
            } else {
                if (ftos_outbuf[ftos_cnt][len] == '.') {
                    ftos_outbuf[ftos_cnt][len] = 0;
                }
                break;
            }
        }
    }
    return &ftos_outbuf[ftos_cnt];
}

// ---------------------------------------------------------------------------
// ntos — number to string
// ---------------------------------------------------------------------------
var ntos_outbuf: [10][100]u8 = undefined; // NUMBER_SIZE = 100
var ntos_cnt: usize = 0;

pub export fn ntos(arg_number: c_longlong) [*c]u8 {
    ntos_cnt = (ntos_cnt + 1) % 10;
    _ = sprintf(&ntos_outbuf[ntos_cnt], "%lld", arg_number);
    return &ntos_outbuf[ntos_cnt];
}

// ---------------------------------------------------------------------------
// indent_one — pad string with spaces
// ---------------------------------------------------------------------------
var indent_one_outbuf: [10][1000]u8 = undefined; // STACK_SIZE = 1000
var indent_one_cnt: usize = 0;

pub export fn indent_one(arg_len: c_int) [*c]u8 {
    indent_one_cnt = (indent_one_cnt + 1) % 10;

    const len: usize = @intCast(if (arg_len < 1) 1 else arg_len);
    
    _ = memset(&indent_one_outbuf[indent_one_cnt], ' ', len);
    indent_one_outbuf[indent_one_cnt][len] = 0;

    return &indent_one_outbuf[indent_one_cnt];
}

// ---------------------------------------------------------------------------
// indent
// ---------------------------------------------------------------------------
var indent_outbuf: [21][101]u8 = std.mem.zeroes([21][101]u8);

pub export fn indent(arg_len: c_int) [*c]u8 {
    var len = arg_len;
    if (len < 0) len = 0;
    if (len > 20) len = 20;

    const ulen: usize = @intCast(len);

    if (indent_outbuf[ulen][0] == 0) {
        _ = sprintf(&indent_outbuf[ulen], "%*s", len * 4, "");
    }

    return &indent_outbuf[ulen];
}

// ---------------------------------------------------------------------------
// ins_cpy — copy and shift string
// ---------------------------------------------------------------------------
pub export fn ins_cpy(arg_dest: [*c]u8, arg_str: [*c]u8) void {
    var tmp: [100000]u8 = undefined; // STRING_SIZE
    
    _ = strcpy(&tmp, arg_dest);
    _ = strcpy(arg_dest, arg_str);
    _ = strcat(arg_dest, &tmp);
}
