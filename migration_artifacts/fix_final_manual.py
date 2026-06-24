import sys

def replace_in_file(filepath, old, new):
    with open(filepath, 'r') as f:
        content = f.read()
    content = content.replace(old, new)
    with open(filepath, 'w') as f:
        f.write(content)

# substitute.zig
replace_in_file("src/substitute.zig", 
    "if ((@as(c_int, buf[@as(c_int, 2)]) > @as(c_int, 'a')) and (@as(c_int, buf[2)]) < @as(c_int, 'f'))) {",
    "if ((@as(c_int, buf[@as(c_int, 2)]) > @as(c_int, 'a')) and (@as(c_int, buf[2]) < @as(c_int, 'f'))) {"
)

# sort.zig
replace_in_file("src/sort.zig",
    "x = @bitCast(@as(c_long, @intFromBool(cmp.?(@ptrCast(@alignCast(pta)), @ptrCast(@alignCast(pta + @as(usize, if (@as(c_int, 1)))))))) > @as(c_int, 0) 1 else 0);",
    "x = if (cmp.?(@ptrCast(@alignCast(pta)), @ptrCast(@alignCast(pta + @as(usize, 1)))) > @as(c_int, 0)) @as(usize, 1) else @as(usize, 0);"
)
replace_in_file("src/sort.zig",
    "tmp = pta[@as(isize, if (x != 0) @as(usize, 0) else @as(usize, 1)];",
    "tmp = pta[if (x != 0) @as(usize, 0) else @as(usize, 1)];"
)

# regex.zig
replace_in_file("src/regex.zig",
    "pti += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 3) + get_regex_range(pti + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 3))))), pto, null, null));",
    "pti += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 3) + get_regex_range(pti + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 3))))), pto, null, null)))));"
)

# tokenize.zig
replace_in_file("src/tokenize.zig",
    "arg = sub_arg_in_braces(root.*.ses, str + @as(usize, if (@as(c_int, 1))))), line, GET_ONE, (@as(c_int, 1) << @intCast(@as(c_int, 4))) | (@as(c_int, 1) << @intCast(@as(c_int, 5) 1 else 0);",
    "arg = sub_arg_in_braces(root.*.ses, str + @as(usize, 1), line, GET_ONE, (@as(c_int, 1) << @intCast(@as(c_int, 4))) | (@as(c_int, 1) << @intCast(@as(c_int, 5))));"
)

# trigger.zig
replace_in_file("src/trigger.zig",
    "pto = ptm + @as(usize, if (len) 1 else 0);",
    "pto = ptm + @as(usize, if (len != 0) 1 else 0);"
)

print("Applied manual fixes.")
