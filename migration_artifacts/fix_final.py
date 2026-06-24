with open("src/mapper.zig", "r") as f:
    lines = f.readlines()

for i, line in enumerate(lines):
    if "const extern_local_is_abbrev" in line:
        lines[i] = "//" + line
    elif "extern fn is_abbrev" in line:
        lines[i] = "//" + line
    elif "};" in line and i > 0 and "extern fn is_abbrev" in lines[i-1]:
        lines[i] = "//" + line
    elif "static_local_room_color.room_color" in line and "sprintf" in line:
        lines[i] = line.replace('@constCast("")', '@as([*c]const u8, @ptrCast(@constCast("")))').replace('@as([*c]const u8, @ptrCast(@as([*c]const u8, @ptrCast(@constCast("")))))', '@as([*c]const u8, @ptrCast(@constCast(""""")))')

with open("src/mapper.zig", "w") as f:
    f.writelines(lines)

with open("src/buffer.zig", "r") as f:
    lines = f.readlines()

for i, line in enumerate(lines):
    if "extern fn is_math" in line:
        lines[i] = "//" + line
    elif "};" in line and i > 0 and "extern fn is_math" in lines[i-1]:
        lines[i] = "//" + line

with open("src/buffer.zig", "w") as f:
    f.writelines(lines)

with open("src/cursor.zig", "r") as f:
    lines = f.readlines()

for i, line in enumerate(lines):
    if "extern fn is_abbrev" in line:
        lines[i] = "//" + line
    elif "};" in line and i > 0 and "extern fn is_abbrev" in lines[i-1]:
        lines[i] = "//" + line

with open("src/cursor.zig", "w") as f:
    f.writelines(lines)
