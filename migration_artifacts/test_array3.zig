const std = @import("std");
pub fn main() void {
    var arr: [22]u32 = undefined;
    const elem = arr[14];
    @compileLog(@TypeOf(elem));
}
