const std = @import("std");

pub const struct_listroot = extern struct {
    flags: c_int,
};

pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};

pub extern fn show_list(root: [*c]struct_listroot, level: c_int) void;

export fn test_fn(ses: [*c]struct_session) void {
    const r = ses[0].list[0];
    show_list(r, 0);
}
