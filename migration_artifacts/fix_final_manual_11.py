import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_all(content):
    # Sort complex pattern
    content = re.sub(
        r'(ptr|pts|ptl) = \((array|swap) \+ @as\(usize, if \(@as\(c_int, (\d+)\)\)\)\)\)\) \+ @as\(usize, @bitCast\(@as\(isize, @intCast\(@as\(c_int, (\d+)\)\) 1 else 0\);',
        r'\1 = (\2 + @as(usize, \3)) + @as(usize, \4);',
        content
    )
    # Substitute complex pattern
    content = re.sub(
        r'unicode_(\d+)_bit\(pti \+ @as\(usize, if \(@as\(c_int, (\d+)\)\)\)\)\), pto\)\) 1 else 0\);',
        r'unicode_\1_bit(pti + @as(usize, \2), pto)))));',
        content
    )
    # Simple pattern
    content = re.sub(
        r'@as\(usize, if \(@as\(c_int, (\d+)\)\) 1 else 0\)',
        r'@as(usize, \1)',
        content
    )
    return content

replace_in_file("src/sort.zig", fix_all)
replace_in_file("src/substitute.zig", fix_all)

print("Applied manual fixes 11.")
