pub const struct_listroot = extern struct { x: i32 };
pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub extern fn search_node_list(root: [*c]struct_listroot, text: [*c]u8) [*c]u8;
pub const LIST_PATHDIR: c_int = 12;
pub fn foo(ses: *struct_session, arg1: [*c]u8) void {
    _ = search_node_list(@ptrCast(ses.*.list[LIST_PATHDIR]), arg1);
}
