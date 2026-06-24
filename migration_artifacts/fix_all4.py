import re
import sys

files = ['src/event.zig', 'src/mapper.zig', 'src/tokenize.zig', 'src/main.zig', 'src/regex.zig']

for filename in files:
    with open(filename, 'r') as f:
        content = f.read()

    # 1. Fix multi-field parsing bug
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\[', r'[0].\1.\2[', content)
    
    # Also handle three levels if needed
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\[', r'[0].\1.\2.\3[', content)

    # 2. Fix SIG_ERR comparison in main.zig
    # if (signal(SIGTERM, trap_handler) == @as(?*const fn (c_int) callconv(.c) void, @ptrFromInt(@as(usize, @bitCast(@as(isize, -1)))))) {
    # Replace with: if (@intFromPtr(signal(SIGTERM, trap_handler)) == @as(usize, @bitCast(@as(isize, -1)))) {
    content = re.sub(
        r'if \(signal\(([^,]+), ([^)]+)\) == @as\(\?\*const fn \(c_int\) callconv\(\.c\) void, @ptrFromInt\(@as\(usize, @bitCast\(@as\(isize, -1\)\)\)\)\)\)',
        r'if (@intFromPtr(signal(\1, \2)) == @as(usize, @bitCast(@as(isize, -1))))',
        content
    )

    # 3. Variadic string fixes
    content = content.replace('@constCast("ON") else @constCast("OFF")', '@as([*c]u8, @ptrCast(@constCast("ON"))) else @as([*c]u8, @ptrCast(@constCast("OFF")))')
    content = content.replace('@constCast("(\\\\n*)") else @constCast("(\\\\n*?)")', '@as([*c]u8, @ptrCast(@constCast("(\\\\n*)"))) else @as([*c]u8, @ptrCast(@constCast("(\\\\n*?)")))')
    content = content.replace('@constCast("((?:\\\\e\\\\[[0-9;]*m)*)") else @constCast("((?:\\\\e\\\\[[0-9;]*m)*?)")', '@as([*c]u8, @ptrCast(@constCast("((?:\\\\e\\\\[[0-9;]*m)*)"))) else @as([*c]u8, @ptrCast(@constCast("((?:\\\\e\\\\[[0-9;]*m)*?)")))')
    content = content.replace('@constCast("|") else draw_terrain_symbol', '@as([*c]u8, @ptrCast(@constCast("|"))) else draw_terrain_symbol')
    
    # 4. In mapper.zig: error: incompatible types: '[*c]u8' and '*[0:0]u8'
    # if (ses.*.map[0].search[0].id != null) ses.*.map[0].search[0].id else @constCast("")
    content = content.replace('ses.*.map[0].search[0].id else @constCast("")', 'ses.*.map[0].search[0].id else @as([*c]u8, @ptrCast(@constCast(""))) ')
    
    with open(filename, 'w') as f:
        f.write(content)
