// Variadic bridge: Zig callers cannot call C variadic functions with a runtime
// tuple, so every module routes variadic calls through the `pub fn` wrappers in
// this file (each module embeds its own copy via @import("variadics.zig")).
//
// Each wrapper forwards the caller's tuple straight through to the real C-ABI
// implementation, which does its own vasprintf/vsnprintf (single formatting
// pass, exact upstream semantics: REFORMAT events see the raw format, errno
// handling, truncation limits, ...).
//
//   - 17 targets live in src/missing_variadics.c (C)
//   - 6 targets are `pub export fn` in Zig already (command.zig, nest.zig)
//   - 10 targets had no implementation anywhere and are ported below from
//     upstream src/chat.c, src/port.c, src/msdp.c (master branch)

const std = @import("std");
const missing = @import("missing_phase5.zig");

extern "c" fn snprintf(buf: [*c]u8, n: usize, format: [*c]const u8, ...) c_int;

// Globals defined in main.zig
extern var gtd: [*c]missing.struct_tintin_data;
extern var gts: [*c]missing.struct_session;

// Bit values (tintin.h BVxx = 1 << (xx - 1))
const CHAT_FLAG_FORWARD: c_int = 1 << 4; // BV05
const CHAT_FLAG_FORWARDALL: c_int = 1 << 6; // BV07
const CHAT_FLAG_LINKLOST: c_int = 1 << 8; // BV09
const PORT_FLAG_LINKLOST: c_int = 1 << 8; // BV09
const SUB_SEC: c_int = 1 << 1; // BV02
const EVENT_FLAG_CATCH: c_int = 1 << 3; // BV04
const EVENT_FLAG_PORT: c_int = 1 << 10; // BV11
const TELOPT_FLAG_DEBUG: c_int = 1 << 5; // BV06
const CHAT_SNOOP_DATA: c_int = 31;
const CHAT_END_OF_COMMAND: c_int = 255;

inline fn HAS_BIT(x: c_int, b: c_int) bool {
    return (x & b) != 0;
}

// Coerce any pointer-ish argument (including null) to an opaque C pointer so
// struct types duplicated across modules do not need to unify.
inline fn toOpaque(x: anytype) ?*anyopaque {
    const T = @TypeOf(x);
    if (T == @TypeOf(null)) return null;
    if (@typeInfo(T) == .@"fn") return @ptrCast(@constCast(&x));
    return @ptrCast(x);
}

inline fn castPtr(comptime T: type, x: anytype) [*c]T {
    if (@TypeOf(x) == @TypeOf(null)) return null;
    return @as(*T, @alignCast(@ptrCast(x)));
}

fn PromoteTuple(comptime T: type) type {
    const fields = @typeInfo(T).@"struct".fields;
    comptime var new_types: [fields.len]type = undefined;
    inline for (fields, 0..) |field, i| {
        if (field.type == comptime_int) {
            new_types[i] = c_int;
        } else if (field.type == comptime_float) {
            new_types[i] = f64;
        } else {
            new_types[i] = field.type;
        }
    }
    return std.meta.Tuple(&new_types);
}

pub inline fn promoteTuple(args: anytype) PromoteTuple(@TypeOf(args)) {
    const ArgsType = @TypeOf(args);
    const fields = @typeInfo(ArgsType).@"struct".fields;
    const NewTupleType = PromoteTuple(ArgsType);
    var new_args: NewTupleType = undefined;
    inline for (fields, 0..) |field, i| {
        if (field.type == comptime_int) {
            new_args[i] = @as(c_int, @intCast(@field(args, field.name)));
        } else if (field.type == comptime_float) {
            new_args[i] = @as(f64, @floatCast(@field(args, field.name)));
        } else {
            new_args[i] = @field(args, field.name);
        }
    }
    return new_args;
}

// ==========================================
// Real C-ABI implementations being forwarded to
// ==========================================

const c = struct {
    // --- src/missing_variadics.c ---
    extern fn tintin_printf(ses: ?*anyopaque, format: [*c]const u8, ...) void;
    extern fn tintin_printf2(ses: ?*anyopaque, format: [*c]const u8, ...) void;
    extern fn tintin_printf3(ses: ?*anyopaque, format: [*c]const u8, ...) void;
    extern fn syserr_printf(ses: ?*anyopaque, format: [*c]const u8, ...) void;
    extern fn show_error(ses: ?*anyopaque, index: c_int, format: [*c]const u8, ...) void;
    extern fn show_info(ses: ?*anyopaque, index: c_int, format: [*c]const u8, ...) void;
    extern fn show_message(ses: ?*anyopaque, index: c_int, format: [*c]const u8, ...) void;
    extern fn show_debug(ses: ?*anyopaque, index: c_int, node: ?*anyopaque, format: [*c]const u8, ...) void;
    extern fn tintin_header(ses: ?*anyopaque, width: c_int, format: [*c]const u8, ...) void;
    extern fn print_lines(ses: ?*anyopaque, flags: c_int, color: [*c]u8, format: [*c]const u8, ...) void;
    extern fn input_printf(format: [*c]const u8, ...) void;
    extern fn check_all_events(ses: ?*anyopaque, flags: c_int, args: c_int, vars: c_int, fmt: [*c]const u8, ...) c_int;
    extern fn push_call(format: [*c]const u8, ...) void;
    extern fn push_call_printf(format: [*c]const u8, ...) c_int;
    extern fn add_undo(ses: ?*anyopaque, format: [*c]const u8, ...) void;
    extern fn create_room(ses: ?*anyopaque, format: [*c]const u8, ...) ?*anyopaque;
    extern fn create_exit(ses: ?*anyopaque, vnum: c_int, format: [*c]const u8, ...) ?*anyopaque;
    // --- already exported from Zig modules ---
    extern fn execute(ses: ?*anyopaque, format: [*c]const u8, ...) ?*anyopaque;
    extern fn command(ses: ?*anyopaque, cmd: ?*const anyopaque, format: [*c]const u8, ...) ?*anyopaque;
    extern fn set_nest_node(root: ?*anyopaque, arg1: [*c]u8, format: [*c]const u8, ...) ?*anyopaque;
    extern fn add_nest_node(root: ?*anyopaque, arg1: [*c]u8, format: [*c]const u8, ...) ?*anyopaque;
    extern fn set_nest_node_ses(ses: ?*anyopaque, arg1: [*c]u8, format: [*c]const u8, ...) ?*anyopaque;
    extern fn add_nest_node_ses(ses: ?*anyopaque, arg1: [*c]u8, format: [*c]const u8, ...) ?*anyopaque;
};

// ==========================================
// FORWARDING WRAPPERS (23)
// ==========================================

pub fn tintin_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.tintin_printf, .{ toOpaque(arg0), format } ++ promoteTuple(args));
}

pub fn tintin_printf2(arg0: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.tintin_printf2, .{ toOpaque(arg0), format } ++ promoteTuple(args));
}

pub fn tintin_printf3(arg0: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.tintin_printf3, .{ toOpaque(arg0), format } ++ promoteTuple(args));
}

pub fn syserr_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.syserr_printf, .{ toOpaque(arg0), format } ++ promoteTuple(args));
}

pub fn show_error(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.show_error, .{ toOpaque(arg0), arg1, format } ++ promoteTuple(args));
}

pub fn show_info(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.show_info, .{ toOpaque(arg0), arg1, format } ++ promoteTuple(args));
}

pub fn show_message(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.show_message, .{ toOpaque(arg0), arg1, format } ++ promoteTuple(args));
}

pub fn show_debug(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.show_debug, .{ toOpaque(arg0), arg1, toOpaque(arg2), format } ++ promoteTuple(args));
}

pub fn tintin_header(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.tintin_header, .{ toOpaque(arg0), arg1, format } ++ promoteTuple(args));
}

pub fn print_lines(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.print_lines, .{ toOpaque(arg0), arg1, castPtr(u8, arg2), format } ++ promoteTuple(args));
}

pub fn input_printf(format: [*c]const u8, args: anytype) void {
    @call(.auto, c.input_printf, .{format} ++ promoteTuple(args));
}

pub fn check_all_events(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, format: [*c]const u8, args: anytype) c_int {
    return @call(.auto, c.check_all_events, .{ toOpaque(arg0), arg1, arg2, arg3, format } ++ promoteTuple(args));
}

pub fn push_call(format: [*c]const u8, args: anytype) void {
    @call(.auto, c.push_call, .{format} ++ promoteTuple(args));
}

pub fn push_call_printf(format: [*c]const u8, args: anytype) c_int {
    return @call(.auto, c.push_call_printf, .{format} ++ promoteTuple(args));
}

pub fn add_undo(arg0: anytype, format: [*c]const u8, args: anytype) void {
    @call(.auto, c.add_undo, .{ toOpaque(arg0), format } ++ promoteTuple(args));
}

pub fn create_room(arg0: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_room_data {
    return castPtr(missing.struct_room_data, @call(.auto, c.create_room, .{ toOpaque(arg0), format } ++ promoteTuple(args)));
}

pub fn create_exit(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_exit_data {
    return castPtr(missing.struct_exit_data, @call(.auto, c.create_exit, .{ toOpaque(arg0), arg1, format } ++ promoteTuple(args)));
}

pub fn execute(arg0: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_session {
    return castPtr(missing.struct_session, @call(.auto, c.execute, .{ toOpaque(arg0), format } ++ promoteTuple(args)));
}

pub fn command(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_session {
    return castPtr(missing.struct_session, @call(.auto, c.command, .{ toOpaque(arg0), toOpaque(arg1), format } ++ promoteTuple(args)));
}

pub fn set_nest_node(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    return castPtr(missing.struct_listnode, @call(.auto, c.set_nest_node, .{ toOpaque(arg0), castPtr(u8, arg1), format } ++ promoteTuple(args)));
}

pub fn add_nest_node(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    return castPtr(missing.struct_listnode, @call(.auto, c.add_nest_node, .{ toOpaque(arg0), castPtr(u8, arg1), format } ++ promoteTuple(args)));
}

pub fn set_nest_node_ses(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    return castPtr(missing.struct_listnode, @call(.auto, c.set_nest_node_ses, .{ toOpaque(arg0), castPtr(u8, arg1), format } ++ promoteTuple(args)));
}

pub fn add_nest_node_ses(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    return castPtr(missing.struct_listnode, @call(.auto, c.add_nest_node_ses, .{ toOpaque(arg0), castPtr(u8, arg1), format } ++ promoteTuple(args)));
}

// ==========================================
// PORTED IMPLEMENTATIONS (10)
// logic from upstream master src/chat.c, src/port.c, src/msdp.c
// ==========================================

const h = struct {
    // memory.zig
    extern fn str_alloc_stack(size: c_int) [*c]u8;
    extern fn str_cpy_printf(pta: [*c][*c]u8, format: [*c]const u8, ...) [*c]u8;
    // vt102_a.zig
    extern fn strip_vt102_codes_non_graph(str: [*c]u8, buf: [*c]u8) void;
    // port.zig
    extern fn port_socket_write(ses: ?*anyopaque, buddy: ?*anyopaque, str: [*c]const u8, len: c_int) void;
    // msdp.zig
    extern fn msdp_find(msdp_var: [*c]const u8) c_int;
    extern fn msdp_update_var(ses: ?*anyopaque, buddy: ?*anyopaque, msdp_var: [*c]const u8, str: [*c]const u8) void;
    // utils.zig
    extern fn ntos(number: c_longlong) [*c]u8;
    // libc
    extern "c" fn write(fd: c_int, buf: ?*const anyopaque, count: usize) isize;
    extern "c" fn strncmp(a: [*c]const u8, b: [*c]const u8, n: usize) c_int;
    extern "c" fn strlen(s: [*c]const u8) usize;
};

// --- chat.c: chat_socket_printf ---

pub fn chat_socket_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    const buddy = castPtr(missing.struct_chat_data, arg0);
    // C truncates at BUFFER_SIZE / 3
    var buf: [50000 / 3]u8 = undefined;
    const len = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }
    if (!HAS_BIT(buddy.*.flags, CHAT_FLAG_LINKLOST)) {
        if (h.write(buddy.*.fd, &buf[0], @intCast(len)) < 0) {
            chat_printf("%s went link lost.", .{buddy.*.name});
            buddy.*.flags |= CHAT_FLAG_LINKLOST;
        }
    }
}

// --- chat.c: chat_printf ---

pub fn chat_printf(format: [*c]const u8, args: anytype) void {
    if (gtd.*.chat == null) {
        return;
    }
    // C truncates at BUFFER_SIZE / 3
    var buf: [50000 / 3]u8 = undefined;
    const len = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }

    var tmp = h.str_alloc_stack(0);

    if (h.strncmp(&buf[0], gtd.*.chat.*.prefix, h.strlen(gtd.*.chat.*.prefix)) != 0) {
        _ = h.str_cpy_printf(&tmp, "%s%s", gtd.*.chat.*.prefix, @as([*c]u8, &buf[0]));
    } else {
        _ = h.str_cpy_printf(&tmp, "%s", @as([*c]u8, &buf[0]));
    }

    h.strip_vt102_codes_non_graph(tmp, &buf[0]);

    _ = h.str_cpy_printf(&tmp, "%c%s%c", CHAT_SNOOP_DATA, @as([*c]u8, &buf[0]), CHAT_END_OF_COMMAND);

    var buddy = gtd.*.chat.*.next;
    while (buddy != null) : (buddy = buddy.*.next) {
        if (HAS_BIT(buddy.*.flags, CHAT_FLAG_FORWARD) and !HAS_BIT(buddy.*.flags, CHAT_FLAG_FORWARDALL)) {
            chat_socket_printf(buddy, "%s", .{tmp});
        }
    }

    _ = h.str_cpy_printf(&tmp, "%s%s%s", gtd.*.chat.*.color, @as([*c]u8, &buf[0]), "\x1b[0m");

    _ = c.check_all_events(toOpaque(gts), SUB_SEC | EVENT_FLAG_PORT, 0, 2, "CHAT MESSAGE", tmp, @as([*c]u8, &buf[0]));

    if (c.check_all_events(toOpaque(gts), SUB_SEC | EVENT_FLAG_CATCH, 0, 2, "CATCH CHAT MESSAGE", tmp, @as([*c]u8, &buf[0])) == 0) {
        c.tintin_printf(toOpaque(gtd.*.ses), "%s", tmp);
    }
}

// --- port.c: port_socket_printf ---

pub fn port_socket_printf(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    const ses = castPtr(missing.struct_session, arg0);
    const buddy = castPtr(missing.struct_port_data, arg1);
    // C truncates at BUFFER_SIZE / 3
    var buf: [50000 / 3]u8 = undefined;
    const len = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }
    h.port_socket_write(toOpaque(ses), toOpaque(buddy), &buf[0], len);
}

// --- port.c: port_telnet_printf ---

pub fn port_telnet_printf(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    const ses = castPtr(missing.struct_session, arg0);
    const buddy = castPtr(missing.struct_port_data, arg1);
    const length: usize = @intCast(arg2);
    var buf: [50000]u8 = undefined; // BUFFER_SIZE
    const size = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (size <= 0) {
        return;
    }
    if (@as(usize, @intCast(size)) != length and HAS_BIT(ses.*.telopts, TELOPT_FLAG_DEBUG)) {
        c.tintin_printf(toOpaque(ses), "DEBUG TELNET: port_telnet_printf size difference: %d vs %d", size, @as(c_int, @intCast(length)));
    }
    h.port_socket_write(toOpaque(ses), toOpaque(buddy), &buf[0], @intCast(length));
}

// --- port.c: port_printf ---

pub fn port_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    const ses = castPtr(missing.struct_session, arg0);
    if (ses.*.port == null) {
        return;
    }
    // C truncates at BUFFER_SIZE / 2 - strlen(prefix) - 5
    var buf: [50000 / 2]u8 = undefined;
    const max_len: usize = buf.len - h.strlen(ses.*.port.*.prefix) - 5;
    const len = @call(.auto, snprintf, .{ &buf[0], max_len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }

    var tmp: [50000]u8 = undefined; // BUFFER_SIZE

    _ = snprintf(&tmp[0], tmp.len, "%s%s", ses.*.port.*.prefix, @as([*c]u8, &buf[0]));

    h.strip_vt102_codes_non_graph(&tmp[0], &buf[0]);

    _ = snprintf(&tmp[0], tmp.len, "%s%s\x1b[0m", ses.*.port.*.color, @as([*c]u8, &buf[0]));

    _ = c.check_all_events(toOpaque(ses), SUB_SEC | EVENT_FLAG_PORT, 0, 2, "PORT MESSAGE", @as([*c]u8, &tmp[0]), @as([*c]u8, &buf[0]));

    if (c.check_all_events(toOpaque(ses), SUB_SEC | EVENT_FLAG_CATCH, 0, 2, "CATCH PORT MESSAGE", @as([*c]u8, &tmp[0]), @as([*c]u8, &buf[0])) == 0) {
        c.tintin_printf(toOpaque(ses), "%s", @as([*c]u8, &tmp[0]));
    }
}

// --- port.c: port_log_printf ---

pub fn port_log_printf(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    const ses = castPtr(missing.struct_session, arg0);
    const buddy = castPtr(missing.struct_port_data, arg1);
    if (ses.*.port == null) {
        return;
    }
    // C truncates at BUFFER_SIZE / 2 - strlen(prefix) - strlen(name) - strlen(ip) - 7
    var buf: [50000 / 2]u8 = undefined;
    const max_len: usize = buf.len - h.strlen(ses.*.port.*.prefix) - h.strlen(buddy.*.name) - h.strlen(buddy.*.ip) - 7;
    const len = @call(.auto, snprintf, .{ &buf[0], max_len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }

    var tmp: [50000]u8 = undefined; // BUFFER_SIZE

    _ = snprintf(&tmp[0], tmp.len, "%s%s@%s %s", ses.*.port.*.prefix, buddy.*.name, buddy.*.ip, @as([*c]u8, &buf[0]));

    h.strip_vt102_codes_non_graph(&tmp[0], &buf[0]);

    _ = snprintf(&tmp[0], tmp.len, "%s%s\x1b[0m", ses.*.port.*.color, @as([*c]u8, &buf[0]));

    _ = c.check_all_events(toOpaque(ses), EVENT_FLAG_PORT, 0, 5, "PORT LOG MESSAGE", buddy.*.name, buddy.*.ip, h.ntos(buddy.*.fd), @as([*c]u8, &tmp[0]), @as([*c]u8, &buf[0]));

    if (c.check_all_events(toOpaque(ses), EVENT_FLAG_CATCH, 0, 5, "CATCH PORT LOG MESSAGE", buddy.*.name, buddy.*.ip, h.ntos(buddy.*.fd), @as([*c]u8, &tmp[0]), @as([*c]u8, &buf[0])) == 0) {
        c.tintin_printf(toOpaque(ses), "%s", @as([*c]u8, &tmp[0]));
    }
}

// --- msdp.c: arachnos_devel / arachnos_mudlist ---

pub fn arachnos_devel(arg0: anytype, format: [*c]const u8, args: anytype) void {
    const ses = castPtr(missing.struct_session, arg0);
    var buf: [100000]u8 = undefined; // STRING_SIZE
    const len = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }
    port_printf(ses, "ARACHNOS: %s", .{@as([*c]u8, &buf[0])});
}

pub fn arachnos_mudlist(arg0: anytype, format: [*c]const u8, args: anytype) void {
    const ses = castPtr(missing.struct_session, arg0);
    var buf: [100000]u8 = undefined; // STRING_SIZE
    const len = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }
    port_printf(ses, "ARACHNOS: %s", .{@as([*c]u8, &buf[0])});
}

// --- msdp.c: msdp_update_all ---

pub fn msdp_update_all(arg0: anytype, format: [*c]const u8, args: anytype) void {
    const arg_var = castPtr(u8, arg0);
    var buf: [100000]u8 = undefined; // STRING_SIZE
    const len = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }
    if (gts == null) {
        return;
    }
    var ses = gts.*.next;
    while (ses != null) : (ses = ses.*.next) {
        if (ses.*.port != null) {
            var buddy = ses.*.port.*.next;
            while (buddy != null) : (buddy = buddy.*.next) {
                if (buddy.*.msdp_data != null) {
                    h.msdp_update_var(toOpaque(ses), toOpaque(buddy), arg_var, &buf[0]);
                }
            }
        }
    }
}

// --- msdp.c: msdp_update_varf ---

pub fn msdp_update_varf(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    const ses = castPtr(missing.struct_session, arg0);
    const buddy = castPtr(missing.struct_port_data, arg1);
    const arg_var = castPtr(u8, arg2);
    var buf: [100000]u8 = undefined; // STRING_SIZE
    const len = @call(.auto, snprintf, .{ &buf[0], buf.len, format } ++ promoteTuple(args));
    if (len <= 0) {
        return;
    }
    h.msdp_update_var(toOpaque(ses), toOpaque(buddy), arg_var, &buf[0]);
}
