pub const struct_listnode = extern struct { x: i32 };
pub const struct_listroot = extern struct { x: i32 };
pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub const LIST_PATHDIR: usize = 15;
pub extern fn search_node_list(root: [*c]struct_listroot, text: [*c]u8) [*c]struct_listnode;
pub export fn foo(ses: [*c]struct_session) void {
    const val = ses.list[LIST_PATHDIR];
    _ = search_node_list(val, @constCast("bar"));
}
