import re
with open('src/data.zig', 'r') as f:
    content = f.read()

def repl_vars(m):
    arr = m.group(1)
    idx = m.group(2)
    return f'@as([*c]u8, @ptrCast(&tintin_c.gtd.*.{arr}[{idx}]))'

content = re.sub(r'tintin_c\.gtd\.\*\.(vars|cmds)\[([^\]]+)\]', repl_vars, content)

with open('src/data.zig', 'w') as f:
    f.write(content)
