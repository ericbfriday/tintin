import re

# 1. src/line.zig
with open("src/line.zig", "r") as f:
    text = f.read()
text = text.replace("(&gtd.*.cmds[0]).* = strdup(str_sub);", "@as([*c][*c]u8, @ptrCast(&gtd.*.cmds))[0] = strdup(str_sub);")
with open("src/line.zig", "w") as f:
    f.write(text)

# 2. src/input.zig
with open("src/input.zig", "r") as f:
    text = f.read()
text = re.sub(r'\(&gtd\.\*\.macro_buf\[([^\]]+)\]\)\.\* =', r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[\1] =', text)
text = re.sub(r'\(&gtd\.\*\.macro_buf\[([^\]]+)\]\)\.\* ==', r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[\1] ==', text)
text = re.sub(r'\(&gtd\.\*\.macro_buf\[([^\]]+)\]\)\.\* !=', r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[\1] !=', text)
with open("src/input.zig", "w") as f:
    f.write(text)

# 3. src/cursor.zig
with open("src/cursor.zig", "r") as f:
    text = f.read()
text = text.replace("(&gtd.*.macro_buf[0]).* = 0;", "@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[0] = 0;")
with open("src/cursor.zig", "w") as f:
    f.write(text)

# 4. src/draw.zig
with open("src/draw.zig", "r") as f:
    text = f.read()
text = re.sub(r'(node\.\*\.root\.\*\.list\[[^\]]+\]\]\.\*\.unnamed_0\.val16)\[@as\(c_int,\s*3\)\]\s*\+=', r'@as([*c]c_int, @ptrCast(&\1))[3] +=', text)
# Wait, in fix_four_files.py, I already replaced the LHS in draw.zig to drop `@as(c_int, ...)`!
# Let me just replace the entire line for draw.zig:
with open("src/draw.zig", "w") as f:
    f.write(text)
