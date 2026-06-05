const std = @import("std");
pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

pub fn main() void {
    _ = tintin_c.quadsort;
    _ = tintin_c.cmp_num;
    _ = tintin_c.cmp_str;
    _ = tintin_c.str_len;
    _ = tintin_c.str_resize;
    _ = tintin_c.is_euc_head;
    _ = tintin_c.get_euc_size;
    _ = tintin_c.is_utf8_head;
    _ = tintin_c.get_utf8_size;
    _ = tintin_c.malloc;
    _ = tintin_c.free;
}
