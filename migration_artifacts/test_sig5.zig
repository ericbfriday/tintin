const std = @import("std");
pub fn main() void {
    var sa: std.posix.Sigaction = undefined;
    sa.handler = .{ .handler = std.posix.SIG.IGN };
    sa.mask = std.mem.zeroes(std.posix.sigset_t);
    sa.flags = 0;
    std.posix.sigaction(std.posix.SIG.PIPE, &sa, null) catch {};
}
