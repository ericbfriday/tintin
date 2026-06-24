const std = @import("std");
pub const struct_session = extern struct { x: i32 };
pub fn main() void {
    const ses: [*c]struct_session = undefined;
    std.debug.print("{s}\n", .{@typeName(@TypeOf(ses.*))});
}
