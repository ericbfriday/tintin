import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_substitute(content):
    content = content.replace("hex_number_8bit(pti + @as(usize, if (@as(c_int, 1)))))) 1 else 0);", "hex_number_8bit(pti + @as(usize, 1)));")
    return content

def fix_sort(content):
    content = content.replace("ptr = (array + @as(usize, if (@as(c_int, 0)))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)) 1 else 0);", "ptr = (array + @as(usize, 0)) + @as(usize, 2);")
    return content

replace_in_file("src/substitute.zig", fix_substitute)
replace_in_file("src/sort.zig", fix_sort)

print("Applied manual fixes 9.")
