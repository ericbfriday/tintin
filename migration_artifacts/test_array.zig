const std = @import("std");
const struct_listroot = extern struct {};
const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub extern fn kill_list(root: [*c]struct_listroot) void;
pub fn main() void {
    var ses_val: struct_session = undefined;
    var ses: [*c]struct_session = &ses_val;
    kill_list(ses.*.list[14]);
}
