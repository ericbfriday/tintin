const std = @import("std");

pub export fn my_variadic(fmt: [*c]const u8, ...) void {
    _ = fmt;
}
