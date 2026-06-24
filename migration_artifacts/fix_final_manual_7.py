import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_substitute(content):
    content = content.replace(r"\'f\'", "'f'")
    return content

def fix_sort(content):
    content = re.sub(
        r'tmp = array\[@as\(isize, if \((.*?)\) @as\(usize, 0\) else @as\(usize, 1\)\]',
        r'tmp = array[if (\1) @as(usize, 0) else @as(usize, 1)]',
        content
    )
    return content

replace_in_file("src/substitute.zig", fix_substitute)
replace_in_file("src/sort.zig", fix_sort)

print("Applied manual fixes 7.")
