const std = @import("std");
pub usingnamespace @cImport({
    @cInclude("tintin.h");
});

pub export fn str_to_base64(arg_in: [*c]u8, arg_out: [*c]u8, arg_size: usize) c_int {
    return 0;
}
