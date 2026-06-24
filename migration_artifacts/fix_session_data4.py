import re
import sys

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Replace array indexing `XYZ.list[@intCast(expr)]` with `@as([*c][*c]cimport.struct_listroot, @ptrCast(&XYZ.list))[@intCast(expr)]`
    # Also handles `[@bitCast(@as(isize, @intCast(expr)))]` by first changing it to `@intCast(expr)`
    content = re.sub(r'\[@bitCast\(@as\(isize, @intCast\(([^)]+)\)\)\)\]', r'[@intCast(\1)]', content)

    # Now fix `.list[expr]` -> ptrCast
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.list\[@intCast\(([^)]+)\)\]', r'@as([*c][*c]cimport.struct_listroot, @ptrCast(&\1.list))[@intCast(\2)]', content)
    
    # Also handle `.list` that is NOT inside @intCast, e.g. `list_table[@intCast(index_1)]`
    # wait, list_table is extern var, it's NOT a field! It's an array pointer natively.
    # So list_table is fine. The issue is struct fields.

    # Fix `.val32[...]`
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.val32\[([^\]]+)\]', r'@as([*c]c_int, @ptrCast(&\1.val32))[\2]', content)

    # Fix unused local constants
    # Just comment out the const and struct
    content = re.sub(r'const extern_local_([a-zA-Z0-9_]+) = struct \{[^}]+\};', r'', content)
    
    with open(filepath, 'w') as f:
        f.write(content)

fix_file('src/session.zig')
fix_file('src/data.zig')

