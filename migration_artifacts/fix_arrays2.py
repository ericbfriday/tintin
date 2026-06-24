import re
import sys

def fix_file(filename):
    with open(filename, 'r') as f:
        content = f.read()

    # Broad replace for the Zig 0.16 parser bug
    # Any `ptr.*.field[` becomes `ptr[0].field[`
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\[', r'[0].\1[', content)
    
    # Fix @as(c_int, ...) += 1 and -= 1
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\+=', r'\1 +=', content)
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\-=', r'\1 -=', content)
    
    # Fix string casts for ternary operator
    # if (cond) "string1" else "string2" -> if (cond) @as([*c]const u8, @ptrCast("string1")) else @as([*c]const u8, @ptrCast("string2"))
    # Actually, simpler: replace `if (message != null) message else @constCast("")` with `if (message != null) message else @as([*c]u8, @ptrCast(@constCast("")))`
    content = content.replace('if (message != null) message else @constCast("")', 'if (message != null) message else @as([*c]u8, @ptrCast(@constCast("")))')
    content = content.replace('if (ses.*.map[0].search[0].id != null) ses.*.map[0].search[0].id else @constCast("")', 'if (ses.*.map[0].search[0].id != null) ses.*.map[0].search[0].id else @as([*c]u8, @ptrCast(@constCast("")))')
    
    # Fix cannot pass '[:0]u8' to variadic function in mapper.zig
    content = content.replace('@constCast("on") else @constCast("off")', '@as([*c]u8, @ptrCast(@constCast("on"))) else @as([*c]u8, @ptrCast(@constCast("off")))')
    content = content.replace('@constCast(" ") else @constCast("")', '@as([*c]u8, @ptrCast(@constCast(" "))) else @as([*c]u8, @ptrCast(@constCast("")))')
    
    # unused local constant deletion
    content = re.sub(r'\s*const extern_local_[a-zA-Z0-9_]+\s*=\s*struct\s*\{[^}]*\};\s*', '\n', content)

    # Boolean to int conversion for density += ...
    # density += (room_grid[EXIT_GRID_N] != null) and (room_grid[EXIT_GRID_N].*.vnum != 0);
    # In Zig, `and` evaluates to a `bool`. We can't do `+= bool`.
    content = re.sub(r'density \+= ([^;]+);', r'density += @intFromBool(\1);', content)

    with open(filename, 'w') as f:
        f.write(content)

for f in ['src/mapper.zig', 'src/main.zig', 'src/event.zig', 'src/tokenize.zig', 'src/regex.zig']:
    fix_file(f)
