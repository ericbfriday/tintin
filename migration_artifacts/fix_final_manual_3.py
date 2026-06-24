import sys

def replace_in_file(filepath, old, new):
    with open(filepath, 'r') as f:
        content = f.read()
    content = content.replace(old, new)
    with open(filepath, 'w') as f:
        f.write(content)

# sort.zig
replace_in_file("src/sort.zig",
    "y = @as(c_long, if (x != 0) @as(usize, 0) else @as(usize, 1);",
    "y = @as(c_long, if (x != 0) @as(usize, 0) else @as(usize, 1));"
)

# substitute.zig
replace_in_file("src/substitute.zig", 
    "buf[3])",
    "buf[3]"
)
replace_in_file("src/substitute.zig", 
    "buf[4])",
    "buf[4]"
)
replace_in_file("src/substitute.zig", 
    "@as(c_int, buf[@as(c_int, 3)] += 1;",
    "buf[@as(c_int, 3)] += 1;"
)
replace_in_file("src/substitute.zig", 
    "@as(c_int, buf[@as(c_int, 4)] += 1;",
    "buf[@as(c_int, 4)] += 1;"
)

# regex.zig
replace_in_file("src/regex.zig",
    "gtd.*.args[",
    "gtd[0].args["
)
replace_in_file("src/regex.zig",
    "(&gtd.*.args)[",
    "gtd[0].args["
)
replace_in_file("src/regex.zig",
    "gtd.*.info[",
    "gtd[0].info["
)
replace_in_file("src/regex.zig",
    "(&gtd.*.info)[",
    "gtd[0].info["
)

print("Applied manual fixes 3.")
