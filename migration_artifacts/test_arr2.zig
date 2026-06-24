const std = @import("std");
pub const struct_session = extern struct {
    cmds: [100][*c]u8,
};
pub var gtd: [*c]struct_session = undefined;
pub fn main() void {
    gtd.*.cmds[@as(c_int, 0)] = undefined;
}
