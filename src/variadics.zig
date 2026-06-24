const std = @import("std");
const missing = @import("missing_phase5.zig");

extern "c" fn snprintf(buf: [*c]u8, n: usize, format: [*c]const u8, ...) c_int;

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
// VARIADIC WRAPPERS
// ==========================================
pub fn tintin_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for tintin_printf
    }
}

pub fn tintin_printf2(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for tintin_printf2
    }
}

pub fn tintin_printf3(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for tintin_printf3
    }
}

pub fn syserr_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for syserr_printf
    }
}

pub fn execute(arg0: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_session {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for execute
    }
    return null;
}

pub fn msdp_update_all(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for msdp_update_all
    }
}

pub fn port_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for port_printf
    }
}

pub fn arachnos_devel(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for arachnos_devel
    }
}

pub fn arachnos_mudlist(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for arachnos_mudlist
    }
}

pub fn add_undo(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for add_undo
    }
}

pub fn create_room(arg0: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_room_data {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for create_room
    }
    return null;
}

pub fn show_error(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for show_error
    }
}

pub fn show_info(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for show_info
    }
}

pub fn show_message(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for show_message
    }
}

pub fn tintin_header(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for tintin_header
    }
}

pub fn command(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_session {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for command
    }
    return null;
}

pub fn chat_socket_printf(arg0: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for chat_socket_printf
    }
}

pub fn port_socket_printf(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for port_socket_printf
    }
}

pub fn port_log_printf(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for port_log_printf
    }
}

pub fn set_nest_node(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for set_nest_node
    }
    return null;
}

pub fn set_nest_node_ses(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for set_nest_node_ses
    }
    return null;
}

pub fn add_nest_node(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for add_nest_node
    }
    return null;
}

pub fn add_nest_node_ses(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_listnode {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for add_nest_node_ses
    }
    return null;
}

pub fn create_exit(arg0: anytype, arg1: anytype, format: [*c]const u8, args: anytype) [*c]missing.struct_exit_data {
    _ = arg0;
    _ = arg1;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for create_exit
    }
    return null;
}

pub fn show_debug(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    _ = arg2;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for show_debug
    }
}

pub fn print_lines(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    _ = arg2;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for print_lines
    }
}

pub fn msdp_update_varf(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    _ = arg2;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for msdp_update_varf
    }
}

pub fn port_telnet_printf(arg0: anytype, arg1: anytype, arg2: anytype, format: [*c]const u8, args: anytype) void {
    _ = arg0;
    _ = arg1;
    _ = arg2;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for port_telnet_printf
    }
}

pub fn check_all_events(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, format: [*c]const u8, args: anytype) c_int {
    _ = arg0;
    _ = arg1;
    _ = arg2;
    _ = arg3;
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for check_all_events
    }
    return 0;
}

pub fn chat_printf(format: [*c]const u8, args: anytype) void {
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for chat_printf
    }
}

pub fn push_call(format: [*c]const u8, args: anytype) void {
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for push_call
    }
}

pub fn push_call_printf(format: [*c]const u8, args: anytype) c_int {
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for push_call_printf
    }
    return 0;
}

pub fn input_printf(format: [*c]const u8, args: anytype) void {
    var buf: [4096]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        // TODO: implement logic for input_printf
    }
}

