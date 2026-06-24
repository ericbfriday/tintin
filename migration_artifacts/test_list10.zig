const std = @import("std");
pub const struct_listnode = extern struct { x: i32 };
pub const struct_listroot = extern struct { x: i32 };
pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub const LIST_PATHDIR: usize = 15;
pub fn main() void {
    const ses: struct_session = undefined;
    const val = ses.list[LIST_PATHDIR];
    std.debug.print("{s}\n", .{@typeName(@TypeOf(val))});
    std.debug.print("{s}\n", .{@typeName(@TypeOf(ses.list))});
}
