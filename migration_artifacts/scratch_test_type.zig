const std = @import("std");

pub extern fn signal(c_int, ?*const fn (c_int) callconv(.c) void) ?*const fn (c_int) callconv(.c) void;

pub fn main() void {
    const raw_ptr = @as(?*anyopaque, @ptrFromInt(@as(usize, 1)));
    const sig_ign = @as(*const ?*const fn (c_int) callconv(.c) void, @ptrCast(&raw_ptr)).*;
    _ = signal(13, sig_ign);
}
