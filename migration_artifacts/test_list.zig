pub const struct_session = extern struct {
    list: [22][*c]u8,
};
pub extern fn foo(arg: [*c]u8) void;
pub fn main() void {
    const ses: *struct_session = undefined;
    foo(@ptrCast(ses.list[0]));
}
