import re

with open('src/tokenize.zig', 'r') as f:
    content = f.read()

content = content.replace("gtd.*.script_stack[@as(c_int, 0)] = root;", "gtd.*.script_stack[0] = root;")
content = content.replace("gtd.*.script_stack[@bitCast(@as(isize, @intCast(gtd.*.script_index)))].*.local", "gtd.*.script_stack[@bitCast(@as(usize, @intCast(gtd.*.script_index)))].local")
content = content.replace("gtd.*.script_stack[@bitCast(@as(isize, @intCast(gtd.*.script_index - @as(c_int, 1))))].*.local", "gtd.*.script_stack[@bitCast(@as(usize, @intCast(gtd.*.script_index - 1)))].local")
content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\[', r'[0].\1[', content)
content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\[', r'[0].\1.\2[', content)
content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\[', r'[0].\1.\2.\3[', content)
content = re.sub(r'!= null\) @constCast\("([^"]*)"\) else', r'!= null) @as([*c]u8, @ptrCast(@constCast("\1"))) else', content)
content = re.sub(r'== null\) @constCast\("([^"]*)"\) else', r'== null) @as([*c]u8, @ptrCast(@constCast("\1"))) else', content)
content = content.replace('if (message != null) message else @constCast("")', 'if (message != null) message else @as([*c]u8, @ptrCast(@constCast(""))) ')

with open('src/tokenize.zig', 'w') as f:
    f.write(content)
