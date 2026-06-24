import re

with open('src/tokenize.zig', 'r') as f:
    content = f.read()

content = content.replace("gtd[0].script_stack[@bitCast(@as(usize, @intCast(gtd.*.script_index)))].local", "gtd[0].script_stack[@bitCast(@as(usize, @intCast(gtd.*.script_index)))].*.local")
content = content.replace("gtd[0].script_stack[@bitCast(@as(usize, @intCast(gtd.*.script_index - 1)))].local", "gtd[0].script_stack[@bitCast(@as(usize, @intCast(gtd.*.script_index - 1)))].*.local")

content = re.sub(r'!= 0\) @constCast\("([^"]*)"\) else @constCast\("([^"]*)"\)', r'!= 0) @as([*c]u8, @ptrCast(@constCast("\1"))) else @as([*c]u8, @ptrCast(@constCast("\2")))', content)

with open('src/tokenize.zig', 'w') as f:
    f.write(content)
