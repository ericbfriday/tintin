import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_substitute(content):
    content = content.replace("@as(c_int, buf[@as(c_int, 1)]) -= 1;", "buf[@as(c_int, 1)] -= 1;")
    content = content.replace("@as(c_int, buf[@as(c_int, 2)]) -= 1;", "buf[@as(c_int, 2)] -= 1;")
    content = content.replace("@as(c_int, buf[@as(c_int, 3)]) -= 1;", "buf[@as(c_int, 3)] -= 1;")
    return content

replace_in_file("src/substitute.zig", fix_substitute)

print("Applied manual fixes 14.")
