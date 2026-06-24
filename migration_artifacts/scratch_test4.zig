const std = @import("std");

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

pub fn tintin_printf(comptime format: [*c]const u8, args: anytype) void {
    var buf: [1024]u8 = undefined;
    const p_args = promoteTuple(args);
    const len = @call(.auto, snprintf, .{&buf[0], buf.len, format} ++ p_args);
    if (len > 0) {
        std.debug.print("Formatted: {s}\n", .{buf[0..@intCast(len)]});
    }
}

pub fn main() void {
    tintin_printf("Hello %s %d", .{"World", 42});
}
