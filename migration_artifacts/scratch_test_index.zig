const std = @import("std");

const struct_exit_data = struct {
    vnum: c_int,
};

const struct_room_data = struct {
    exit_grid: [11][*c]struct_exit_data,
};

pub fn main() void {
    var room = struct_room_data{
        .exit_grid = undefined,
    };
    var room_ptr: [*c]struct_room_data = &room;
    
    var idx: c_int = 3;
    const temp = room_ptr[0].exit_grid[@as(usize, @intCast(idx))];
    @compileError("TYPE_OF_TEMP: " ++ @typeName(@TypeOf(temp)));
}
