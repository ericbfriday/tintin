import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_substitute(content):
    content = content.replace("and (@as(c_int, buf[2)]) < @as(c_int, 'f')))", "and (@as(c_int, buf[2]) < @as(c_int, 'f')))")
    content = content.replace("and (@as(c_int, buf[3)]) < @as(c_int, 'f')))", "and (@as(c_int, buf[3]) < @as(c_int, 'f')))")
    content = content.replace("and (@as(c_int, buf[1)]) < @as(c_int, 'f')))", "and (@as(c_int, buf[1]) < @as(c_int, 'f')))")
    return content

def fix_sort(content):
    content = content.replace("tpl -= @as(usize, if (y != 0) 0 else 1));", "tpl -= @as(usize, if (y != 0) 0 else 1);")
    return content

replace_in_file("src/substitute.zig", fix_substitute)
replace_in_file("src/sort.zig", fix_sort)

print("Applied manual fixes 8.")
