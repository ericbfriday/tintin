

const std = @import("std");
const stdc = @cImport({
    @cInclude("tintin.h");
});

pub export fn test_fn() void {
    const ses: *stdc.struct_session = @ptrCast(stdc.gtd.*.ses);
    const x: [*c]stdc.struct_listroot = ses.list[7];
    _ = x;
}
