import re

with open("src/data.zig", "r") as f:
    content = f.read()

# Replace `@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))` with `root.*.list`
content = content.replace('@as([*c][*c]struct_listnode, @ptrCast(&root.*.list))', 'root.*.list')

with open("src/data.zig", "w") as f:
    f.write(content)

