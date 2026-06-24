const std = @import("std");
pub extern "c" fn signal(sig: c_int, func: *const anyopaque) *const anyopaque;
pub fn main() void {
    _ = signal(13, @ptrFromInt(1));
}
