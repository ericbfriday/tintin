pub const struct_listnode = extern struct { x: i32 };
pub const struct_listroot = extern struct { x: i32 };
pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub extern fn search_node_list(root: [*c]struct_listroot, text: [*c]u8) [*c]struct_listnode;
pub const LIST_PATHDIR: c_int = 15;
pub export fn foo(arg_ses: [*c]struct_session) void {
    var ses = arg_ses;
    _ = search_node_list(@ptrCast(ses.*.list[LIST_PATHDIR]), @constCast("bar"));
}
