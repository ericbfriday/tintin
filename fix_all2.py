import re
import sys

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # 1. Replace gtd and gts properly
    content = re.sub(r'\bgtd\b', 'tintin_c.gtd', content)
    content = re.sub(r'\bgts\b', 'tintin_c.gts', content)
    
    # Also remove any added `pub const gtd = tintin_c.gtd;`
    content = re.sub(r'pub const gtd = tintin_c\.gtd;\n?', '', content)
    content = re.sub(r'pub const gts = tintin_c\.gts;\n?', '', content)

    # 2. Fix .list[...] issue properly. 
    # Use a non-greedy match for the inner brackets: \[([^\]]+)\]
    # But wait, what if the original string was:
    #   root == root.*.ses.*.list[@intCast(root.*.type)]
    # And my regex was:
    #   r'([a-zA-Z0-9_.*]+)\.list\[([^\]]+)\]'
    # Why did it produce `&.*.list`?
    # Because `[a-zA-Z0-9_.*]+` matched `root.*.ses.*` and something else matched `.*`?
    # No, what if the string was `ses.*.list[...]` and `root.*.list[...]`?
    # Let's write a safer replace function using a regex that avoids * at the start.
    content = re.sub(r'([a-zA-Z0-9_]+(\.\*[a-zA-Z0-9_.]+)*)\.list\[([^\]]+)\]', r'@as([*c][*c]cimport.struct_listroot, @ptrCast(&\1.list))[\3]', content)

    # 3. Fix .val32
    content = re.sub(r'([a-zA-Z0-9_]+(\.\*[a-zA-Z0-9_.]+)*)\.val32\[([^\]]+)\]', r'@as([*c]c_int, @ptrCast(&\1.val32))[\3]', content)

    with open(filepath, 'w') as f:
        f.write(content)

# We must revert again to get clean state
import os
os.system("git checkout src/session.c src/data.c")
os.system("zig translate-c -I src -I /opt/homebrew/include -lc src/session.c > src/session.zig")
os.system("zig translate-c -I src -I /opt/homebrew/include -lc src/data.c > src/data.zig")

# Run old fixes (1, 4, 5) and new fixes (2, 3, 1)
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
    # A safer regex for .list[] that handles nested properties
    # e.g., ses.*.list or root.*.ses.*.list
    def repl_list(m):
        base = m.group(1)
        idx = m.group(2)
        return f'@as([*c][*c]cimport.struct_listroot, @ptrCast(&{base}.list))[{idx}]'
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.list\[([^\]]+)\]', repl_list, content)

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

fix_file_all('src/session.zig')
fix_file_all('src/data.zig')

