const std = @import("std");
pub extern "c" fn signal(sig: c_int, func: ?*const fn (c_int) callconv(.c) void) ?*const fn (c_int) callconv(.c) void;
pub fn main() void {
    _ = signal(13, @ptrFromInt(1));
}
