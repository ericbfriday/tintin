const std = @import("std");
fn lessThan(ctx: void, a: i32, b: i32) bool {
    _ = ctx;
    return a < b;
}
pub fn main() void {
    var arr = [_]i32{ 3, 1, 4, 1, 5, 9 };
    std.sort.block(i32, &arr, {}, lessThan);
}
