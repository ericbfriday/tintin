import re
import sys
import subprocess

subprocess.run(["./regen_and_fix.sh"])

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

    # 2. Fix array indexing parsing bug
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\[', r'[0].\1[', content)
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\[', r'[0].\1.\2[', content)
    content = re.sub(r'\.\*\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\[', r'[0].\1.\2.\3[', content)

    # 3. Main.zig type 'usize' cannot represent integer value '-1'
    content = content.replace('@ptrFromInt(@as(usize, @intCast(-@as(c_int, 1))))', '@ptrFromInt(@as(usize, @bitCast(@as(isize, -1))))')

    # 4. Fix invalid assignment LHS
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\+=', r'\1 +=', content)
    content = re.sub(r'@as\(c_int,\s*([a-zA-Z0-9_\.\[\]\*]+)\)\s*\-=', r'\1 -=', content)

    # 5. Fix string casting ternary
    content = re.sub(
        r'@constCast\("([^"]*)"\) else @constCast\("([^"]*)"\)',
        r'@as([*c]u8, @ptrCast(@constCast("\1"))) else @as([*c]u8, @ptrCast(@constCast("\2")))',
        content
    )
    content = re.sub(
        r'!= null\) @constCast\("([^"]*)"\) else',
        r'!= null) @as([*c]u8, @ptrCast(@constCast("\1"))) else',
        content
    )
    content = re.sub(
        r'== null\) @constCast\("([^"]*)"\) else',
        r'== null) @as([*c]u8, @ptrCast(@constCast("\1"))) else',
        content
    )
    content = content.replace('if (message != null) message else @constCast("")', 'if (message != null) message else @as([*c]u8, @ptrCast(@constCast(""))) ')
    content = content.replace('if (optarg != null) optarg else @constCast("")', 'if (optarg != null) optarg else @as([*c]u8, @ptrCast(@constCast(""))) ')
    content = content.replace('ses.*.map.*.search.*.id else @constCast("")', 'ses.*.map.*.search.*.id else @as([*c]u8, @ptrCast(@constCast(""))) ')
    content = content.replace('if (ses[0].map[0].search[0].id != null) ses[0].map[0].search[0].id else @constCast("")', 'if (ses[0].map[0].search[0].id != null) ses[0].map[0].search[0].id else @as([*c]u8, @ptrCast(@constCast(""))) ')

    # 6. Density boolean to int
    content = re.sub(r'density \+= ([^;]+);', r'density += @intFromBool(\1);', content)

    # 7. Map grid explicit 0 instead of null
    content = content.replace('room[0].exit_grid[@intCast(newexit.grid)] == null', 'room[0].exit_grid[@intCast(newexit.grid)] == 0')
    
    # 8. Unused local constants (extern_local_...)
    def replacer(match):
        return match.group(0) + f"\n    _ = &{match.group(1)};\n"
    content = re.sub(r'const (extern_local_[a-zA-Z0-9_]+)\s*=\s*struct\s*\{[^}]*\};', replacer, content)

    # 9. Fix signal SIG_ERR and SIG_IGN
    content = re.sub(
        r'if \(signal\(([^,]+), ([^)]+)\) == @as\(\?\*const fn \(c_int\) callconv\(\.c\) void, @ptrFromInt\(@as\(usize, @bitCast\(@as\(isize, -1\)\)\)\)\)\)',
        r'if (@intFromPtr(signal(\1, \2)) == @as(usize, @bitCast(@as(isize, -1))))',
        content
    )
    content = content.replace(
        '_ = signal(SIGPIPE, @ptrFromInt(@as(usize, @intCast(@as(c_int, 1)))));',
        '{ var sa: @import("std").posix.Sigaction = undefined; sa.handler = .{ .handler = @import("std").posix.SIG.IGN }; sa.mask = @import("std").mem.zeroes(@import("std").posix.sigset_t); sa.flags = 0; _ = @import("std").posix.sigaction(@import("std").posix.SIG.PIPE, &sa, null); }'
    )

    with open(filename, 'w') as f:
        f.write(content)

# Handle redeclarations
def remove_redeclarations():
    for _ in range(20):
        result = subprocess.run(["zig", "build"], capture_output=True, text=True)
        stderr = result.stderr
        
        if "redeclaration of local constant" not in stderr and "shadows local constant from outer scope" not in stderr:
            break
            
        # We need to find `const extern_local_... = struct {` and delete the ENTIRE struct block
        # Since the struct block is 3 lines long, and maybe followed by `_ = &extern_local_...`
        lines_to_delete = {}
        for line in stderr.split('\n'):
            m1 = re.search(r'(src/mapper\.zig):(\d+):\d+: error: redeclaration of local constant', line)
            m2 = re.search(r'(src/mapper\.zig):(\d+):\d+: error: local constant \'.*?\' shadows local constant from outer scope', line)
            m = m1 or m2
            if m:
                filename = m.group(1)
                lineno = int(m.group(2))
                if filename not in lines_to_delete:
                    lines_to_delete[filename] = set()
                lines_to_delete[filename].add(lineno)
                
        if not lines_to_delete:
            break
            
        for filename, linenos in lines_to_delete.items():
            with open(filename, 'r') as f:
                content = f.read().split('\n')
                
            for ln in sorted(linenos, reverse=True):
                idx = ln - 1
                if "const extern_local_" in content[idx]:
                    content[idx] = ""
                    if idx + 1 < len(content) and "extern fn" in content[idx + 1]:
                        content[idx + 1] = ""
                    if idx + 2 < len(content) and "};" in content[idx + 2]:
                        content[idx + 2] = ""
                    if idx + 3 < len(content) and "_ = &extern_local" in content[idx + 3]:
                        content[idx + 3] = ""
                        
            with open(filename, 'w') as f:
                f.write('\n'.join(content))

remove_redeclarations()

