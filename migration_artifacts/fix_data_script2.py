import re
with open('src/data.zig', 'r') as f:
    content = f.read()

content = re.sub(
    r'tintin_c\.gtd\.\*\.script_stack\[([^\]]+)\]',
    r'@as([*c][*c]tintin_c.struct_scriptroot, @ptrCast(&tintin_c.gtd.*.script_stack))[\1]',
    content
)

with open('src/data.zig', 'w') as f:
    f.write(content)

