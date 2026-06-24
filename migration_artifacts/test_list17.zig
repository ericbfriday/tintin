pub const struct_listnode = extern struct { x: i32 };
pub const struct_listroot = extern struct { x: i32 };
pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub const LIST_PATHDIR: c_int = 15;
pub extern fn search_node_list(root: [*c]struct_listroot, text: [*c]u8) [*c]struct_listnode;
pub export fn foo(ses: [*c]struct_session) void {
    _ = search_node_list(ses.*.list[@intCast(LIST_PATHDIR)], @constCast("bar"));
}
