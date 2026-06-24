const std = @import("std");

pub extern fn vasprintf(noalias [*c][*c]u8, noalias [*c]const u8, @import("std").builtin.VaList) c_int;

pub export fn my_variadic_func(format: [*c]const u8, ...) void {
    var args = @cVaStart();
    var arg2: [*c]u8 = null;
    _ = vasprintf(&arg2, format, args);
    @cVaEnd(&args);
}
