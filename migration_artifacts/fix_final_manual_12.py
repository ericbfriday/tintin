import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_sort(content):
    content = content.replace("tmp = pta[@as(isize, if (y != 0) 0 else 1)];", "tmp = pta[@as(usize, if (y != 0) 0 else 1)];")
    content = content.replace("y = @as(c_long, if (x != 0) @as(usize, 0) else @as(usize, 1));", "y = if (x != 0) @as(usize, 0) else @as(usize, 1);")
    return content

def fix_substitute(content):
    content = content.replace("oct_number(pti + @as(usize, if (@as(c_int, 1)))))) 1 else 0);", "oct_number(pti + @as(usize, 1)));")
    return content

replace_in_file("src/sort.zig", fix_sort)
replace_in_file("src/substitute.zig", fix_substitute)

print("Applied manual fixes 12.")
