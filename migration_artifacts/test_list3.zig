pub const struct_listroot = extern struct { x: i32 };
pub const struct_session = extern struct {
    list: [22][*c]struct_listroot,
};
pub extern fn foo(arg: [*c]struct_listroot) void;
pub fn main() void {
    const ses: [*c]struct_session = undefined;
    foo(@ptrCast(ses.*.list[0]));
}
