import re
import sys

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # 1. Fix variadic slice strings
    content = re.sub(r'@constCast\("([^"]*)"\)', r'@as([*c]u8, @ptrCast(@constCast("\1")))', content)

    # 2. Fix array indexing for .list[...]
    # Find all instances of `.list[` followed by anything up to `]`
    # We want to replace `XYZ.list[expr]` with `@as([*c][*c]cimport.struct_listroot, @ptrCast(&XYZ.list))[expr]`
    # To avoid regex weirdness, let's match specifically what we need.
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.list\[([^\]]+)\]', r'@as([*c][*c]cimport.struct_listroot, @ptrCast(&\1.list))[\2]', content)

    # 3. Fix array indexing for .val32[...]
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.val32\[([^\]]+)\]', r'@as([*c]c_int, @ptrCast(&\1.val32))[\2]', content)

    # 4. Fix unused local constants by marking them used.
    # Pattern: const extern_local_name = struct { ... };
    content = re.sub(r'(const (extern_local_[a-zA-Z0-9_]+) = struct \{[^}]+\};)', r'\1 _ = &\2;', content)

    # 5. Fix kill
    content = re.sub(r'\bstd\.c\.kill\(', 'c_kill(', content)
    if 'extern "c" fn c_kill' not in content:
        content = 'extern "c" fn kill(pid: c_int, sig: c_int) c_int;\nconst c_kill = kill;\n' + content

    with open(filepath, 'w') as f:
        f.write(content)

fix_file('src/session.zig')
fix_file('src/data.zig')

