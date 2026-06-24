import re

# 2. src/input.zig
with open("src/input.zig", "r") as f:
    text = f.read()

# Fix array reads
text = re.sub(
    r'gtd\.\*\.macro_buf\[@as\(c_int,\s*([^\]]+)\)\]',
    r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[\1]',
    text
)
text = re.sub(
    r'gtd\.\*\.macro_buf\[@bitCast\([^\]]+\)\]',
    r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[@bitCast(@as(usize, @intCast(cnt)))]',
    text
)

with open("src/input.zig", "w") as f:
    f.write(text)

# 4. src/draw.zig
with open("src/draw.zig", "r") as f:
    text = f.read()

# Replace the specific LHS issue:
# @as(c_int, node.*.root.*.list[@bitCast(@as(isize, @intCast(col)))].*.unnamed_0.val16[@as(c_int, 3)]) += 1;
# We want to remove @as(c_int, ...) wrapping around the LHS
text = text.replace(
    "@as(c_int, node.*.root.*.list[@bitCast(@as(isize, @intCast(col)))].*.unnamed_0.val16[@as(c_int, 3)]) += 1;",
    "node.*.root.*.list[@bitCast(@as(isize, @intCast(col)))].*.unnamed_0.val16[3] += 1;"
)

with open("src/draw.zig", "w") as f:
    f.write(text)

