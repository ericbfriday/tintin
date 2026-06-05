const std = @import("std");
pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

pub fn main() void {
    _ = tintin_c.push_call;
    _ = tintin_c.pop_call;
    _ = tintin_c.str_alloc_stack;
    _ = tintin_c.show_debug;
    _ = tintin_c.show_error;
    _ = tintin_c.LIST_COMMAND;
    _ = tintin_c.LIST_VARIABLE;
    _ = tintin_c.gtd;
    _ = tintin_c.sprintf;
}
