import re

# 1. src/line.zig
with open("src/line.zig", "r") as f:
    text = f.read()
text = text.replace("gtd.*.cmds[@as(c_int, 0)] = strdup(str_sub);", "(&gtd.*.cmds[0]).* = strdup(str_sub);")
with open("src/line.zig", "w") as f:
    f.write(text)

# 2. src/input.zig
with open("src/input.zig", "r") as f:
    text = f.read()
text = re.sub(r'gtd\.\*\.macro_buf\[@as\(c_int,\s*([^\]]+)\)\]\s*=', r'(&gtd.*.macro_buf[\1]).* =', text)
text = re.sub(r'gtd\.\*\.macro_buf\[@bitCast\([^\]]+\)\]\s*=', r'(&gtd.*.macro_buf[0]).* =', text) # Wait, is there a bitCast?
# Actually just do:
text = text.replace("gtd.*.macro_buf[@as(c_int, 1)] == @as(c_int, 0)", "(&gtd.*.macro_buf[1]).* == 0")
text = text.replace("gtd.*.macro_buf[@bitCast(@as(isize, @intCast(cnt)))] != 0", "(&gtd.*.macro_buf[@bitCast(@as(usize, @intCast(cnt)))]).* != 0")
text = text.replace("gtd.*.macro_buf[@as(c_int, 0)] = 0;", "(&gtd.*.macro_buf[0]).* = 0;")
with open("src/input.zig", "w") as f:
    f.write(text)

# 3. src/cursor.zig
with open("src/cursor.zig", "r") as f:
    text = f.read()
text = text.replace("gtd.*.macro_buf[@as(c_int, 0)] = 0;", "(&gtd.*.macro_buf[0]).* = 0;")
with open("src/cursor.zig", "w") as f:
    f.write(text)

# 4. src/draw.zig
with open("src/draw.zig", "r") as f:
    text = f.read()
text = re.sub(r'@as\(c_int,\s*(node\.\*\.root\.\*\.list\[[^\]]+\]\]\.\*\.unnamed_0\.val16\[@as\(c_int,\s*3\)\])\)\s*\+=', r'\1 +=', text)
with open("src/draw.zig", "w") as f:
    f.write(text)

