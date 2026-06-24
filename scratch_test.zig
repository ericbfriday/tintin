const std = @import("std");

pub const struct_exit_data = extern struct {
    vnum: c_int = 0,
};

pub const struct_room_data = extern struct {
    exit_grid: [11][*c]struct_exit_data = std.mem.zeroes([11][*c]struct_exit_data),
};

pub fn test_func(room_list: [*c][*c]struct_room_data, vnum: c_int, dir: c_int) [*c]struct_exit_data {
    return room_list[@bitCast(@as(isize, @intCast(vnum)))].*.exit_grid[@as(usize, @intCast(dir))];
}
