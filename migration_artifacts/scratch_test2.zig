const std = @import("std");

pub const struct_exit_data = extern struct {
    next: [*c]struct_exit_data = null,
    prev: [*c]struct_exit_data = null,
    vnum: c_int = 0,
    dir: c_int = 0,
    grid: c_int = 0,
    flags: c_int = 0,
    weight: f64 = 0,
    delay: f64 = 0,
    name: [*c]u8 = null,
    cmd: [*c]u8 = null,
    color: [*c]u8 = null,
    data: [*c]u8 = null,
};

pub const struct_room_data = extern struct {
    f_exit: [*c]struct_exit_data = null,
    l_exit: [*c]struct_exit_data = null,
    exit_grid: [11][*c]struct_exit_data = std.mem.zeroes([11][*c]struct_exit_data),
    vnum: c_int = 0,
};

pub const struct_map_data = extern struct {
    room_list: [*c][*c]struct_room_data = null,
};

pub const struct_session = extern struct {
    map: [*c]struct_map_data = null,
};

pub fn map_entrance(ses: [*c]struct_session, exit_1: [*c]struct_exit_data) void {
    var rev_exit: [*c]struct_exit_data = undefined;
    rev_exit = ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit_1.*.vnum)))].*.exit_grid[0];
    _ = rev_exit;
}
