const std = @import("std");
const struct_listroot = extern struct {};
const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub fn main() void {
    var ses_val: struct_session = undefined;
    const ses: [*c]struct_session = &ses_val;
    @compileLog(@TypeOf((ses.*.list)[14]));
}
