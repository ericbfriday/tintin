pub const struct_exit_data = extern struct {
    dir: c_int,
};

pub const struct_room_data = extern struct {
    exit_grid: [11][*c]struct_exit_data,
};

pub fn main() void {
    var rd: struct_room_data = undefined;
    const room_nw: [*c]struct_room_data = &rd;
    var EXIT_GRID_SE: usize = 1;
    _ = &EXIT_GRID_SE;
    const ptr = &room_nw.*.exit_grid;
    @compileLog(@TypeOf(ptr[0][EXIT_GRID_SE]));
}
