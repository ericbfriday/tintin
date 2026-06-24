import re
import subprocess

subprocess.run(["git", "checkout", "src/event.zig", "src/mapper.zig", "src/tokenize.zig", "src/main.zig"])

def fix_shadowing(filename):
    with open(filename, 'r') as f:
        content = f.read()

    # We need to find functions containing `const gtd: *struct_tintin_data = @ptrCast(gtd);`
    # and replace `\bgtd\b` with `gtd_local` inside them, EXCEPT in that exact line we want:
    # `const gtd_local: *struct_tintin_data = @ptrCast(gtd);`

    # A simpler approach: process line by line. Keep track of whether we are inside a function
    # that has declared `gtd_local`. If we see the declaration, we turn on the flag.
    # We turn off the flag when we reach a top-level `}` (i.e. line starts with `}`).
    
    lines = content.split('\n')
    out_lines = []
    in_shadowed_func = False
    
    for line in lines:
        if re.search(r'^\s*const gtd: \*struct_tintin_data = @ptrCast\(gtd\);', line):
            line = line.replace('const gtd:', 'const gtd_local:')
            in_shadowed_func = True
            out_lines.append(line)
            continue
            
        if in_shadowed_func:
            # replace gtd with gtd_local, but avoid things like gtd_local if already replaced
            line = re.sub(r'\bgtd\b', 'gtd_local', line)
            
        if line.startswith('}'):
            in_shadowed_func = False
            
        out_lines.append(line)
        
    content = '\n'.join(out_lines)
    
    with open(filename, 'w') as f:
        f.write(content)

fix_shadowing('src/event.zig')
fix_shadowing('src/mapper.zig')
fix_shadowing('src/tokenize.zig')

# Now apply the other fixes
with open('src/mapper.zig', 'r') as f:
    content = f.read()

# mapper.zig shadowing of index, link, exit
content = re.sub(r'\bvar index\b', 'var idx', content)
content = re.sub(r'\bindex =', 'idx =', content)
content = re.sub(r'\bindex <', 'idx <', content)
content = re.sub(r'\bindex \+', 'idx +', content)
content = re.sub(r'\bindex -', 'idx -', content)
content = re.sub(r'\[index\]', '[idx]', content)

content = re.sub(r'\bvar link:', 'var lnk:', content)
content = re.sub(r'\bvar link =', 'var lnk =', content)
content = re.sub(r'\blink =', 'lnk =', content)
content = re.sub(r'\blink\.', 'lnk.', content)
content = re.sub(r'\blink ==', 'lnk ==', content)
content = re.sub(r'\blink !=', 'lnk !=', content)
content = re.sub(r'= link;', '= lnk;', content)

content = re.sub(r'\bvar exit: \[\*c\]struct_exit_data', 'var ex: [*c]struct_exit_data', content)
content = re.sub(r'\bexit =', 'ex =', content)
content = re.sub(r'\bexit\.', 'ex.', content)
content = re.sub(r'\bexit ==', 'ex ==', content)
content = re.sub(r'\bexit !=', 'ex !=', content)

# Fix map grid null comparison
content = content.replace('room.*.exit_grid[@intCast(newexit.grid)] == null', 'room.*.exit_grid[@intCast(newexit.grid)] == 0')

with open('src/mapper.zig', 'w') as f:
    f.write(content)


# main.zig errors
with open('src/main.zig', 'r') as f:
    content = f.read()

content = content.replace('@as(c_int, static_local_crashed.crashed) -= 1;', 'static_local_crashed.crashed -= 1;')
content = content.replace('@as(c_int, static_local_crashed.crashed) += 1;', 'static_local_crashed.crashed += 1;')
content = content.replace('@ptrFromInt(@as(usize, @intCast(-@as(c_int, 1))))', '@ptrFromInt(@as(usize, @bitCast(@as(isize, -1))))')
content = re.sub(r'gtd\.\*\.vars\[([^\]]+)\] =', r'gtd.*.vars[0][\1] =', content)
content = re.sub(r'gtd\.\*\.cmds\[([^\]]+)\] =', r'gtd.*.cmds[0][\1] =', content)

with open('src/main.zig', 'w') as f:
    f.write(content)

# Regex and Event duplicates
with open('src/regex.zig', 'r') as f:
    content = f.read()
content = re.sub(r'pub extern fn get_regex_range.*?;', '', content)
with open('src/regex.zig', 'w') as f:
    f.write(content)

with open('src/event.zig', 'r') as f:
    content = f.read()
content = re.sub(r'pub extern fn check_all_events.*?;\n', '', content)
with open('src/event.zig', 'w') as f:
    f.write(content)

