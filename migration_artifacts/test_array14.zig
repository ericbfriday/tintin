const std = @import("std");
const struct_session = extern struct {
    list: [22][*c]u8,
};
pub fn main() void {
    var ses_val: struct_session = undefined;
    const ses: *struct_session = &ses_val;
    ses.*.list[14] = @ptrCast(@constCast("hello"));
}
