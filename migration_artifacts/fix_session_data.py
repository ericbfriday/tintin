import re
import sys

def fix_session(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Fix @constCast("...") -> @ptrCast(@constCast("..."))
    # Actually, tintin_printf2 just takes [*c]u8. So @ptrCast(@alignCast(@constCast("..."))) might be safer, 
    # but @ptrCast(@constCast("...")) usually works. Let's do @ptrCast(@constCast("..."))
    content = re.sub(r'@constCast\("([^"]*)"\)', r'@ptrCast(@constCast("\1"))', content)

    # Fix the unused local constant error by just replacing it with tintin_c.is_number
    content = re.sub(r'const extern_local_is_number = struct \{\n\s*extern fn is_number\(str: \[\*c\]u8\) c_int;\n\s*\};\n\s*if \(is_number\(arg1\)', r'if (tintin_c.is_number(arg1)', content)

    # Fix kill_list and free_list array index issues
    # kill_list(ses.*.list[@bitCast(@as(isize, @intCast(index_1)))]); -> kill_list(ses.*.list[@intCast(index_1)]);
    content = re.sub(r'\[@bitCast\(@as\(isize, @intCast\(([^)]+)\)\)\)\]', r'[@intCast(\1)]', content)

    # There's also `pub const kill = tintin_c.kill;` which fails because kill is not in cimport.
    content = re.sub(r'pub const kill = tintin_c\.kill;\n?', '', content)
    # And we replace kill( with tintin_c.kill( ? Wait, if kill is not in tintin_c, we must use std.c.kill or declare it.
    # Actually, in macOS it's in libc. Let's declare it at the top of the file.
    content = re.sub(r'\bkill\(', 'std.c.kill(', content) # std.c.kill exists? Actually std.os.linux.kill exists. Let's just declare it locally if needed.
    # Wait, let's just replace `\bkill\(` with `std.c.kill(` and see. Or `std.os.kill`.

    with open(filepath, 'w') as f:
        f.write(content)

fix_session('src/session.zig')

# For data.zig, let's just check if there's anything similar
def fix_data(filepath):
    with open(filepath, 'r') as f:
        content = f.read()
    
    content = re.sub(r'@constCast\("([^"]*)"\)', r'@ptrCast(@constCast("\1"))', content)
    content = re.sub(r'\[@bitCast\(@as\(isize, @intCast\(([^)]+)\)\)\)\]', r'[@intCast(\1)]', content)

    with open(filepath, 'w') as f:
        f.write(content)

fix_data('src/data.zig')

