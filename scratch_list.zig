const std = @import("std");
pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

pub fn main() void {
    const p1 = @as([*c]const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int, @ptrCast(&tintin_c.cmp_num));
    _ = p1;
}
