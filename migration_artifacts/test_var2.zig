const std = @import("std");

pub export fn my_variadic(fmt: [*c]const u8, ...) void {
    var ap = @cVaStart();
    defer @cVaEnd(&ap);
    
    // just dummy
    _ = fmt;
}
