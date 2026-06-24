import re

with open("src/mapper.zig", "r") as f:
    text = f.read()

# val32
text = text.replace(
    "@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))[@bitCast(@as(isize, @intCast(i)))]@as([*c]c_int, @ptrCast(@constCast(&.*.unnamed_0.val32)))[@as(c_int, 0)]",
    "@as([*c]c_int, @ptrCast(@constCast(&@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))[@bitCast(@as(isize, @intCast(i)))].*.unnamed_0.val32)))[@as(c_int, 0)]"
)
text = text.replace(
    "@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))[@bitCast(@as(isize, @intCast(vnum)))]@as([*c]c_int, @ptrCast(@constCast(&.*.unnamed_0.val32)))[@as(c_int, 0)]",
    "@as([*c]c_int, @ptrCast(@constCast(&@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))[@bitCast(@as(isize, @intCast(vnum)))].*.unnamed_0.val32)))[@as(c_int, 0)]"
)
text = text.replace(
    "@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))[@bitCast(@as(isize, @intCast(index_2)))]@as([*c]c_int, @ptrCast(@constCast(&.*.unnamed_0.val32)))[@as(c_int, 0)]",
    "@as([*c]c_int, @ptrCast(@constCast(&@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))[@bitCast(@as(isize, @intCast(index_2)))].*.unnamed_0.val32)))[@as(c_int, 0)]"
)

# += and -=
text = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_.*?()\]\[]+)\)\s*\+=', r'\1 +=', text)
text = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_.*?()\]\[]+)\)\s*-=', r'\1 -=', text)

# exit_grid
# We only want to replace it when it's indexed by a runtime value!
# Just do string replacement! No regex!
text = text.replace("ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit_1.*.vnum)))].*.exit_grid[", "(&ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit_1.*.vnum)))].*.exit_grid)[")
text = text.replace("ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(room)))].*.exit_grid[", "(&ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(room)))].*.exit_grid)[")
text = text.replace("ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit.*.vnum)))].*.exit_grid[", "(&ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit.*.vnum)))].*.exit_grid)[")
text = text.replace("room.*.exit_grid[", "(&room.*.exit_grid)[")
text = text.replace("room_nw.*.exit_grid[", "(&room_nw.*.exit_grid)[")
text = text.replace("room_w.*.exit_grid[", "(&room_w.*.exit_grid)[")
text = text.replace("room_n.*.exit_grid[", "(&room_n.*.exit_grid)[")

with open("src/mapper.zig", "w") as f:
    f.write(text)

with open("src/regex.zig", "r") as f:
    text = f.read()

text = text.replace(
    "gtd.*.cmds[@bitCast(@as(isize, @intCast(i)))] = restringf(gtd.*.cmds[@bitCast(@as(isize, @intCast(i)))], @as([*c]u8, @ptrCast(@constCast(\"%.*s\"))), gtd.*.match[@bitCast(@as(isize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1))))] -% gtd.*.match[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))], &str[gtd.*.match[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))]]);",
    "@as([*c][*c]u8, @ptrCast(&gtd.*.cmds))[@bitCast(@as(isize, @intCast(i)))] = restringf(@as([*c][*c]u8, @ptrCast(&gtd.*.cmds))[@bitCast(@as(isize, @intCast(i)))], @as([*c]u8, @ptrCast(@constCast(\"%.*s\"))), @as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1))))] -% @as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))], &str[@as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))]]);"
)
text = text.replace(
    "gtd.*.cmds[@bitCast(@as(isize, @intCast(j)))] = restringf(gtd.*.cmds[@bitCast(@as(isize, @intCast(j)))], @as([*c]u8, @ptrCast(@constCast(\"%.*s\"))), gtd.*.match[@bitCast(@as(isize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1))))] -% gtd.*.match[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))], &str[gtd.*.match[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))]]);",
    "@as([*c][*c]u8, @ptrCast(&gtd.*.cmds))[@bitCast(@as(isize, @intCast(j)))] = restringf(@as([*c][*c]u8, @ptrCast(&gtd.*.cmds))[@bitCast(@as(isize, @intCast(j)))], @as([*c]u8, @ptrCast(@constCast(\"%.*s\"))), @as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1))))] -% @as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))], &str[@as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))]]);"
)
text = text.replace(
    "gtd.*.vars[@bitCast(@as(isize, @intCast(i)))] = restringf(gtd.*.vars[@bitCast(@as(isize, @intCast(i)))], @as([*c]u8, @ptrCast(@constCast(\"%.*s\"))), gtd.*.match[@bitCast(@as(isize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1))))] -% gtd.*.match[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))], &str[gtd.*.match[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))]]);",
    "@as([*c][*c]u8, @ptrCast(&gtd.*.vars))[@bitCast(@as(isize, @intCast(i)))] = restringf(@as([*c][*c]u8, @ptrCast(&gtd.*.vars))[@bitCast(@as(isize, @intCast(i)))], @as([*c]u8, @ptrCast(@constCast(\"%.*s\"))), @as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1))))] -% @as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))], &str[@as([*c]usize, @ptrCast(&gtd.*.match))[@bitCast(@as(isize, @intCast(i * @as(c_int, 2))))]]);"
)
text = text.replace("gtd.*.args[", "@as([*c]c_int, @ptrCast(&gtd.*.args))[")

with open("src/regex.zig", "w") as f:
    f.write(text)

