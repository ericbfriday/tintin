import re
with open("fix_absolute_final.py", "r") as f:
    text = f.read()

text = text.split("# Final targeted fix for input.zig macro_buf read array indexing with len + 1 expression")[0]

fixes = r"""
    # Final targeted fix for input.zig macro_buf read array indexing with len + 1 expression
    content = re.sub(
        r'gtd\.\*\.macro_buf\[@bitCast\(@as\(isize,\s*@intCast\((len \+ @as\(c_int,\s*1\))\)\)\)\]',
        r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[@bitCast(@as(usize, @intCast(\1)))]',
        content
    )

"""

lines = text.split('\n')
new_lines = []
for line in lines:
    if line.startswith("    with open(filepath, 'w') as f:"):
        new_lines.append(fixes)
        new_lines.append(line)
    else:
        new_lines.append(line)

with open("fix_absolute_final.py", "w") as f:
    f.write('\n'.join(new_lines))
