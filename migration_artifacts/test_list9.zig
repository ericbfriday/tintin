pub const struct_listnode = extern struct { x: i32 };
pub const struct_listroot = extern struct { x: i32 };
pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub extern fn search_node_list(root: [*c]struct_listroot, text: [*c]u8) [*c]struct_listnode;
pub const LIST_PATHDIR: usize = 15;
pub export fn foo(ses: [*c]struct_session) void {
    var val = ses.*.list[LIST_PATHDIR];
    _ = search_node_list(val, @constCast("bar"));
}
