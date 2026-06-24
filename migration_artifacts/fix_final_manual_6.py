import sys
import re

def replace_in_file(filepath, callback):
    with open(filepath, 'r') as f:
        content = f.read()
    content = callback(content)
    with open(filepath, 'w') as f:
        f.write(content)

def fix_substitute(content):
    # Restore the lost closing parenthesis for `@as(c_int, buf[X]`
    content = re.sub(r'buf\[(\d+)\] < @as\(c_int, \'f\'\)\)\) \{', r'buf[\1]) < @as(c_int, \'f\'))) {', content)
    # Also for pti[...]
    content = re.sub(r'pti\[@as\(c_int, (\d+)\)\] < @as\(c_int, \'f\'\)\)\) \{', r'pti[@as(c_int, \1)]) < @as(c_int, \'f\'))) {', content)
    
    # Let me check if there's any `buf[@as(c_int, X)] < ...`
    content = re.sub(r'buf\[@as\(c_int, (\d+)\)\] < @as\(c_int, \'f\'\)\)\) \{', r'buf[@as(c_int, \1)]) < @as(c_int, \'f\'))) {', content)
    return content

def fix_sort(content):
    # Fix x = @bitCast(...) in sort.zig
    # It might use array, ptb, pta, etc.
    # Let's match the pattern: `x = @bitCast(@as(c_long, @intFromBool(cmp.?(@ptrCast(@alignCast(.*?)), @ptrCast(@alignCast(.*? \+ @as(usize, if \(@as\(c_int, 1\)\)\)\)\)\)\)\) > @as\(c_int, 0\) 1 else 0\);`
    # We can just replace it generally:
    content = re.sub(
        r'([xy]) = @bitCast\(@as\(c_long, @intFromBool\(cmp\.\?\(@ptrCast\(@alignCast\((.*?)\)\), @ptrCast\(@alignCast\((.*?) \+ @as\(usize, if \(@as\(c_int, 1\)\)\)\)\)\)\)\) > @as\(c_int, 0\) 1 else 0\);',
        r'\1 = if (cmp.?(@ptrCast(@alignCast(\2)), @ptrCast(@alignCast(\3 + @as(usize, 1)))) > @as(c_int, 0)) @as(c_long, 1) else @as(c_long, 0);',
        content
    )
    return content

replace_in_file("src/substitute.zig", fix_substitute)
replace_in_file("src/sort.zig", fix_sort)

print("Applied manual fixes 6.")
