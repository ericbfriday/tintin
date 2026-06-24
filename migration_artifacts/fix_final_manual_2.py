import sys

def replace_in_file(filepath, old, new):
    with open(filepath, 'r') as f:
        content = f.read()
    content = content.replace(old, new)
    with open(filepath, 'w') as f:
        f.write(content)

# substitute.zig
replace_in_file("src/substitute.zig", 
    "@as(c_int, buf[@as(c_int, 2)] += 1;",
    "buf[@as(c_int, 2)] += 1;"
)

# tokenize.zig
replace_in_file("src/tokenize.zig",
    "addtoken(root, lvl, TOKEN_TYPE_SESSION, -@as(c_int, 1), line + @as(usize, if (@as(c_int, 1))) 1 else 0);",
    "addtoken(root, lvl, TOKEN_TYPE_SESSION, -@as(c_int, 1), line + @as(usize, 1));"
)

# sort.zig
replace_in_file("src/sort.zig",
    "y = @bitCast(@as(c_long, @intFromBool(cmp.?(@ptrCast(@alignCast(pta)), @ptrCast(@alignCast(pta + @as(usize, if (@as(c_int, 1)))))))) > @as(c_int, 0) 1 else 0);",
    "y = if (cmp.?(@ptrCast(@alignCast(pta)), @ptrCast(@alignCast(pta + @as(usize, 1)))) > @as(c_int, 0)) @as(c_long, 1) else @as(c_long, 0);"
)

# regex.zig
replace_in_file("src/regex.zig",
    "pto += @as(usize, @bitCast(@as(isize, @intCast(unicode_21_bit(pti + @as(usize, if (@as(c_int, 2))))), pto)) 1 else 0);",
    "pto += @as(usize, @bitCast(@as(isize, @intCast(unicode_21_bit(pti + @as(usize, 2), pto)))));"
)

print("Applied manual fixes 2.")
