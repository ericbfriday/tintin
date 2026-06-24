const mapper = @import("src/mapper.zig");

pub fn map_entrance(ses: [*c]mapper.struct_session, exit_1: [*c]mapper.struct_exit_data) void {
    var rev_exit: [*c]mapper.struct_exit_data = undefined;
    rev_exit = ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit_1.*.vnum)))].*.exit_grid[0];
    _ = rev_exit;
}
