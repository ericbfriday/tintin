pub const struct_session = extern struct {
    val: i32,
};
pub export fn foo(ses: [*c]struct_session) void {
    const x = ses.*.val;
    _ = x;
}
