import re

# 1. Restore mapper.zig and tokenize.zig
import subprocess
subprocess.run(["git", "checkout", "src/mapper.zig", "src/tokenize.zig"])

# 2. Fix shadowing by just deleting the local constants!
for filename in ['src/event.zig', 'src/mapper.zig', 'src/tokenize.zig']:
    with open(filename, 'r') as f:
        content = f.read()
    
    # Delete `const gtd: *struct_tintin_data = @ptrCast(gtd);`
    content = re.sub(r'const gtd: \*struct_tintin_data = @ptrCast\(gtd\);\n?', '', content)
    
    # Also fix other shadows in mapper.zig
    if filename == 'src/mapper.zig':
        # Local 'index' shadows global 'index(const char*, int)'
        content = re.sub(r'\bvar index\b', 'var idx', content)
        content = re.sub(r'\bindex =', 'idx =', content)
        content = re.sub(r'\bindex <', 'idx <', content)
        content = re.sub(r'\bindex \+', 'idx +', content)
        content = re.sub(r'\[index\]', '[idx]', content)
        content = re.sub(r'\[index\]', '[idx]', content)
        content = re.sub(r'\bindex -', 'idx -', content)
        
        # Local 'link' shadows global 'link'
        content = re.sub(r'\bvar link:', 'var lnk:', content)
        content = re.sub(r'\bvar link =', 'var lnk =', content)
        content = re.sub(r'\blink =', 'lnk =', content)
        content = re.sub(r'\blink\.', 'lnk.', content)
        content = re.sub(r'\blink ==', 'lnk ==', content)
        content = re.sub(r'\blink !=', 'lnk !=', content)
        content = re.sub(r'\blink =', 'lnk =', content)
        content = re.sub(r'= link;', '= lnk;', content)
        
        # Local 'exit' shadows global 'exit(int)'
        content = re.sub(r'\bvar exit: \[\*c\]struct_exit_data', 'var ex: [*c]struct_exit_data', content)
        content = re.sub(r'\bexit =', 'ex =', content)
        content = re.sub(r'\bexit\.', 'ex.', content)
        content = re.sub(r'\bexit\.\*', 'ex.*', content)
        content = re.sub(r'\bexit ==', 'ex ==', content)
        content = re.sub(r'\bexit !=', 'ex !=', content)

        # Fix comparison of array with null in mapper.zig
        content = content.replace('room.*.exit_grid[@intCast(newexit.grid)] == null', 'room.*.exit_grid[@intCast(newexit.grid)] == 0')

    with open(filename, 'w') as f:
        f.write(content)

# 3. Fix main.zig errors
with open('src/main.zig', 'r') as f:
    content = f.read()

content = content.replace('@as(c_int, static_local_crashed.crashed) -= 1;', 'static_local_crashed.crashed -= 1;')

# Fix type 'usize' cannot represent integer value '-1'
content = content.replace('@ptrFromInt(@as(usize, @intCast(-@as(c_int, 1))))', '@ptrFromInt(@as(usize, @bitCast(@as(isize, -1))))')

# Fix gtd.*.vars = strdup("") array assignment issue?
# Actually, the error was: `expected type '[100][*c]u8', found '[*c]u8'`
# Wait, `gtd.*.vars` might be accessed incorrectly if it was a pointer to an array?
# Let's fix that.
content = re.sub(r'gtd\.\*\.vars\[(.*?)] =', r'gtd.*.vars[0][\1] =', content)

with open('src/main.zig', 'w') as f:
    f.write(content)

