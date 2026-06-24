const std = @import("std");
pub const struct_session = extern struct {
    cmds: [100][*c]u8,
};
pub var gtd_val: struct_session = undefined;
pub var gtd: *struct_session = &gtd_val;
pub fn main() void {
    gtd.*.cmds[0] = undefined;
}
