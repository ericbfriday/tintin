import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_substitute(content):
    # Fix instances of `buf[X]) < ` -> `buf[X] < `
    content = re.sub(r"buf\[(\d+)\]\)([\s]*<)", r"buf[\1]\2", content)
    return content

def fix_sort(content):
    # Fix missing parenthesis in pta indexing: `pta[@as(isize, if (x != 0) @as(usize, 0) else @as(usize, 1)];`
    # Replace with `pta[if (x != 0) @as(usize, 0) else @as(usize, 1)];`
    content = re.sub(r'pta\[@as\(isize, if \((.*?)\) @as\(usize, 0\) else @as\(usize, 1\)\]', r'pta[if (\1) @as(usize, 0) else @as(usize, 1)]', content)
    return content

replace_in_file("src/substitute.zig", fix_substitute)
replace_in_file("src/sort.zig", fix_sort)

print("Applied manual fixes 5.")
