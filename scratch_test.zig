const std = @import("std");
pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

pub fn main() void {
    _ = tintin_c.localtime;
    _ = tintin_c.strftime;
    _ = tintin_c.sprintf;
    _ = tintin_c.vsprintf;
    _ = tintin_c.strcat;
    _ = tintin_c.strcpy;
}
