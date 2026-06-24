import re
with open('src/data.zig', 'r') as f:
    content = f.read()

# Replace bitcast on script_stack
content = content.replace('tintin_c.gtd.*.script_stack[@bitCast(@as(isize, @intCast(index_2)))]', 'tintin_c.gtd.*.script_stack[@as(usize, @intCast(index_2))]')

with open('src/data.zig', 'w') as f:
    f.write(content)

