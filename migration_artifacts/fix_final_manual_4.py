import sys

def replace_in_file(filepath, old, new):
    with open(filepath, 'r') as f:
        content = f.read()
    content = content.replace(old, new)
    with open(filepath, 'w') as f:
        f.write(content)

# substitute.zig
replace_in_file("src/substitute.zig", 
    "and (@as(c_int, buf[3)]) < @as(c_int, 'f')))",
    "and (@as(c_int, buf[3]) < @as(c_int, 'f')))"
)

# sort.zig
replace_in_file("src/sort.zig",
    "ptl -= @as(usize, if (y != 0) 0 else 1));",
    "ptl -= @as(usize, if (y != 0) 0 else 1);"
)

print("Applied manual fixes 4.")
