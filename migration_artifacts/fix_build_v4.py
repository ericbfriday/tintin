import re
import subprocess

subprocess.run(["git", "checkout", "src/event.zig", "src/mapper.zig", "src/tokenize.zig", "src/main.zig"])

def fix_shadowing(filename):
    with open(filename, 'r') as f:
        content = f.read()

    # Split by '\n\n' or similar? No, split by '\npub ' or '\nfn ' to get functions
    # Actually, a better split is using regex that matches function definitions.
    # But a simple way is splitting by '\n}' which is the end of a top-level function.
    
    chunks = re.split(r'\n(?=pub (?:export |extern )?fn |fn )', '\n' + content)
    
    out_chunks = []
    
    for chunk in chunks:
        if not chunk.strip():
            out_chunks.append(chunk)
            continue
            
        # Fix gtd
        if 'const gtd: *struct_tintin_data = @ptrCast(gtd);' in chunk:
            chunk = chunk.replace('const gtd: *struct_tintin_data = @ptrCast(gtd);', 'const gtd_local: *struct_tintin_data = @ptrCast(gtd);')
            # Replace gtd with gtd_local, but not gtd_local itself
            # We use a negative lookbehind and lookahead to ensure we only match standalone gtd
            chunk = re.sub(r'(?<!\.)\bgtd\b', 'gtd_local', chunk)
            # The above negative lookbehind prevents matching `.gtd`.
            # But wait, we want to replace `gtd.level` with `gtd_local.level`. The negative lookbehind `(?<!\.)` allows ` gtd` but not `foo.gtd`. That's perfect.
            # We also need to fix `@ptrCast(gtd_local)` back to `@ptrCast(gtd)` because the right hand side of the declaration was changed!
            chunk = chunk.replace('@ptrCast(gtd_local)', '@ptrCast(gtd)')

        # Fix exit in mapper.zig
        if 'var exit: [*c]struct_exit_data = null;' in chunk:
            chunk = chunk.replace('var exit: [*c]struct_exit_data = null;', 'var exit_local: [*c]struct_exit_data = null;')
            chunk = re.sub(r'(?<!\.)\bexit\b', 'exit_local', chunk)

        # Fix index in mapper.zig
        if re.search(r'\bvar index\b', chunk):
            chunk = re.sub(r'\bvar index([: ])', r'var idx\1', chunk)
            chunk = re.sub(r'(?<!\.)\bindex\b', 'idx', chunk)

        # Fix link in mapper.zig
        if re.search(r'\bvar link\b', chunk):
            chunk = re.sub(r'\bvar link([: ])', r'var lnk\1', chunk)
            chunk = re.sub(r'(?<!\.)\blink\b', 'lnk', chunk)

        out_chunks.append(chunk)
        
    new_content = ''.join(out_chunks)
    # Remove the leading '\n' we added
    if new_content.startswith('\n'):
        new_content = new_content[1:]
        
    with open(filename, 'w') as f:
        f.write(new_content)

fix_shadowing('src/event.zig')
fix_shadowing('src/mapper.zig')
fix_shadowing('src/tokenize.zig')

# Apply other fixes
with open('src/mapper.zig', 'r') as f:
    content = f.read()

# Fix map grid null comparison
content = content.replace('room.*.exit_grid[@intCast(newexit.grid)] == null', 'room.*.exit_grid[@intCast(newexit.grid)] == 0')

with open('src/mapper.zig', 'w') as f:
    f.write(content)


with open('src/main.zig', 'r') as f:
    content = f.read()

content = content.replace('@as(c_int, static_local_crashed.crashed) -= 1;', 'static_local_crashed.crashed -= 1;')
content = content.replace('@as(c_int, static_local_crashed.crashed) += 1;', 'static_local_crashed.crashed += 1;')
# main.zig type 'usize' cannot represent integer value '-1'
content = content.replace('@ptrFromInt(@as(usize, @intCast(-@as(c_int, 1))))', '@ptrFromInt(@as(usize, @bitCast(@as(isize, -1))))')

with open('src/main.zig', 'w') as f:
    f.write(content)

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

