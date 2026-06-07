import re
import sys

def fix_file_all(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # 1. string slices
    content = re.sub(r'@constCast\("([^"]*)"\)', r'@as([*c]u8, @ptrCast(@constCast("\1")))', content)
    
    # 2. gtd, gts
    content = re.sub(r'\bgtd\b', 'tintin_c.gtd', content)
    content = re.sub(r'\bgts\b', 'tintin_c.gts', content)
    content = re.sub(r'pub const gtd = tintin_c\.gtd;\n?', '', content)
    content = re.sub(r'pub const gts = tintin_c\.gts;\n?', '', content)
    
    # 3. .list[...]
    # ONLY replace list on session objects
    prefixes = [
        'ses.*',
        'tintin_c.gts.*',
        'root.*.ses.*',
        'newses.*'
    ]
    for p in prefixes:
        # We want to replace `p.list[` with `@as([*c][*c]cimport.struct_listroot, @ptrCast(&p.list))[`
        # Escape the prefix for regex
        p_esc = p.replace('.', r'\.').replace('*', r'\*')
        content = re.sub(p_esc + r'\.list\[([^\]]+)\]', f'@as([*c][*c]cimport.struct_listroot, @ptrCast(&{p}.list))[\\1]', content)

    # 4. .val32[...]
    def repl_val32(m):
        base = m.group(1)
        idx = m.group(2)
        return f'@as([*c]c_int, @ptrCast(&{base}.val32))[{idx}]'
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.val32\[([^\]]+)\]', repl_val32, content)

    # 5. Unused structs
    content = re.sub(r'(const (extern_local_[a-zA-Z0-9_]+) = struct \{[^}]+\};)', r'\1 _ = &\2;', content)

    # 6. kill
    content = re.sub(r'\bstd\.c\.kill\(', 'c_kill(', content)
    if 'extern "c" fn c_kill' not in content:
        content = 'extern "c" fn kill(pid: c_int, sig: c_int) c_int;\nconst c_kill = kill;\n' + content

    with open(filepath, 'w') as f:
        f.write(content)

import os
os.system("git checkout src/session.c src/data.c")
os.system("zig translate-c -I src -I /opt/homebrew/include -lc src/session.c > src/session.zig")
os.system("zig translate-c -I src -I /opt/homebrew/include -lc src/data.c > src/data.zig")

fix_file_all('src/session.zig')
fix_file_all('src/data.zig')

