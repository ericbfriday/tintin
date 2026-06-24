import re
import subprocess

subprocess.run(["git", "checkout", "src/event.zig", "src/mapper.zig", "src/tokenize.zig", "src/main.zig", "src/regex.zig"])

def fix_shadowing(filename):
    with open(filename, 'r') as f:
        content = f.read()

    chunks = re.split(r'\n(?=pub (?:export |extern )?fn |fn )', '\n' + content)
    
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
        
    new_content = ''.join(out_chunks)
    if new_content.startswith('\n'):
        new_content = new_content[1:]
        
    with open(filename, 'w') as f:
        f.write(new_content)

for f in ['src/event.zig', 'src/mapper.zig', 'src/tokenize.zig', 'src/main.zig', 'src/regex.zig']:
    fix_shadowing(f)

# Apply global syntax fixes
def apply_syntax_fixes(filename):
    with open(filename, 'r') as f:
        content = f.read()

    # Zig 0.16 [*c] array indexing parsing bug fix
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\[', r'[0].\1[', content)

    # Main.zig type 'usize' cannot represent integer value '-1'
    content = content.replace('@ptrFromInt(@as(usize, @intCast(-@as(c_int, 1))))', '@ptrFromInt(@as(usize, @bitCast(@as(isize, -1))))')

    # Fix invalid assignment LHS: @as(c_int, var) += 1
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\+=', r'\1 +=', content)
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\-=', r'\1 -=', content)

    # Ternary string casting
    content = content.replace('if (message != null) message else @constCast("")', 'if (message != null) message else @as([*c]u8, @ptrCast(@constCast(""))) ')
    content = content.replace('if (ses[0].map[0].search[0].id != null) ses[0].map[0].search[0].id else @constCast("")', 'if (ses[0].map[0].search[0].id != null) ses[0].map[0].search[0].id else @as([*c]u8, @ptrCast(@constCast(""))) ')

    # Variadic function strings
    content = content.replace('@constCast("on") else @constCast("off")', '@as([*c]u8, @ptrCast(@constCast("on"))) else @as([*c]u8, @ptrCast(@constCast("off")))')
    content = content.replace('@constCast(" ") else @constCast("")', '@as([*c]u8, @ptrCast(@constCast(" "))) else @as([*c]u8, @ptrCast(@constCast(""))) ')
    content = content.replace('@constCast("([^\\\\0]*)") else @constCast("([^\\\\0]*?)")', '@as([*c]const u8, @ptrCast(@constCast("([^\\\\0]*)"))) else @as([*c]const u8, @ptrCast(@constCast("([^\\\\0]*?)")))')

    # Density boolean to int
    content = re.sub(r'density \+= ([^;]+);', r'density += @intFromBool(\1);', content)

    # Remove all translate-c generated extern wrappers that cause errors
    content = re.sub(r'pub extern fn get_regex_range.*?;', '', content)
    content = re.sub(r'pub extern fn check_all_events.*?;\n', '', content)

    # Remove unused structs
    content = re.sub(r'\s*const extern_local_[a-zA-Z0-9_]+\s*=\s*struct\s*\{[^}]*\};\s*', '\n', content)
    content = re.sub(r'\s*_\s*=\s*&extern_local_[a-zA-Z0-9_]+;\s*', '\n', content)

    with open(filename, 'w') as f:
        f.write(content)

for f in ['src/event.zig', 'src/mapper.zig', 'src/tokenize.zig', 'src/main.zig', 'src/regex.zig']:
    apply_syntax_fixes(f)

