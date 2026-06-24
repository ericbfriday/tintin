const std = @import("std");
const struct_listroot = extern struct {};
const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub fn main() void {
    const ses_val: struct_session = undefined;
    @compileLog(@TypeOf(ses_val.list[14]));
}
