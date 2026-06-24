const std = @import("std");
pub fn main() void {
    var al = std.ArrayList(u8).empty;
    defer al.deinit(std.heap.page_allocator);
    al.append(std.heap.page_allocator, 'a') catch unreachable;
    std.debug.print("{c}\n", .{al.items[0]});
}
