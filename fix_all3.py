import re

files = ['src/event.zig', 'src/mapper.zig', 'src/tokenize.zig', 'src/main.zig', 'src/regex.zig']

for filename in files:
    with open(filename, 'r') as f:
        content = f.read()

    # 1. Fix shadowing by renaming variables
    chunks = re.split(r'(\n)(?=pub (?:export |extern )?fn |fn )', '\n' + content)
    out_chunks = []
    for chunk in chunks:
        if not chunk.strip():
            out_chunks.append(chunk)
            continue
            
        if 'const gtd: *struct_tintin_data = @ptrCast(gtd);' in chunk:
            chunk = chunk.replace('const gtd: *struct_tintin_data = @ptrCast(gtd);', 'const gtd_local: *struct_tintin_data = @ptrCast(gtd);')
            chunk = re.sub(r'(?<!\.)\bgtd\b', 'gtd_local', chunk)
            chunk = chunk.replace('@ptrCast(gtd_local)', '@ptrCast(gtd)')

        if 'var exit: [*c]struct_exit_data = null;' in chunk:
            chunk = chunk.replace('var exit: [*c]struct_exit_data = null;', 'var exit_local: [*c]struct_exit_data = null;')
            chunk = re.sub(r'(?<!\.)\bexit\b', 'exit_local', chunk)

        if re.search(r'\bvar index\b', chunk):
            chunk = re.sub(r'\bvar index([: ])', r'var idx\1', chunk)
            chunk = re.sub(r'(?<!\.)\bindex\b', 'idx', chunk)

        if re.search(r'\bvar link\b', chunk):
            chunk = re.sub(r'\bvar link([: ])', r'var lnk\1', chunk)
            chunk = re.sub(r'(?<!\.)\blink\b', 'lnk', chunk)

        out_chunks.append(chunk)
        
    content = ''.join(out_chunks)
    if content.startswith('\n'):
        content = content[1:]

    # 2. Fix array indexing parsing bug (replace `ptr.*.field[` with `ptr[0].field[`)
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\[', r'[0].\1[', content)

    # 3. Main.zig type 'usize' cannot represent integer value '-1'
    content = content.replace('@ptrFromInt(@as(usize, @intCast(-@as(c_int, 1))))', '@ptrFromInt(@as(usize, @bitCast(@as(isize, -1))))')

    # 4. Fix invalid assignment LHS
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\+=', r'\1 +=', content)
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\-=', r'\1 -=', content)

    # 5. Fix string casting
    content = content.replace('if (message != null) message else @constCast("")', 'if (message != null) message else @as([*c]u8, @ptrCast(@constCast(""))) ')
    content = content.replace('if (ses[0].map[0].search[0].id != null) ses[0].map[0].search[0].id else @constCast("")', 'if (ses[0].map[0].search[0].id != null) ses[0].map[0].search[0].id else @as([*c]u8, @ptrCast(@constCast(""))) ')

    # 6. Variadic function string casts
    content = content.replace('@constCast("on") else @constCast("off")', '@as([*c]u8, @ptrCast(@constCast("on"))) else @as([*c]u8, @ptrCast(@constCast("off")))')
    content = content.replace('@constCast(" ") else @constCast("")', '@as([*c]u8, @ptrCast(@constCast(" "))) else @as([*c]u8, @ptrCast(@constCast(""))) ')
    content = content.replace('@constCast("([^\\\\0]*)") else @constCast("([^\\\\0]*?)")', '@as([*c]const u8, @ptrCast(@constCast("([^\\\\0]*)"))) else @as([*c]const u8, @ptrCast(@constCast("([^\\\\0]*?)")))')

    # 7. Density boolean to int
    content = re.sub(r'density \+= ([^;]+);', r'density += @intFromBool(\1);', content)

    # 8. Fix unused local constants (extern_local_...)
    def replacer(match):
        return match.group(0) + f"\n    _ = &{match.group(1)};\n"
    content = re.sub(r'const (extern_local_[a-zA-Z0-9_]+)\s*=\s*struct\s*\{[^}]*\};', replacer, content)

    # 9. Map grid explicit 0 instead of null
    content = content.replace('room[0].exit_grid[@intCast(newexit.grid)] == null', 'room[0].exit_grid[@intCast(newexit.grid)] == 0')

    with open(filename, 'w') as f:
        f.write(content)

