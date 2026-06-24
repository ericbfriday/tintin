import os
import re

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Find `if (...) @constCast("...") else @constCast("...")`
    # and replace with `@as([*c]u8, @ptrCast(if (...) @constCast("...") else @constCast("...")))`
    # No, wait, if you cast the whole if expression, the if expression STILL evaluates to a slice, then it gets cast to `[*c]u8`. 
    # BUT Zig doesn't allow implicit cast from `[:0]u8` to `[*c]u8`! Wait, it DOES allow explicit `@ptrCast`!
    # Let's check if `@as([*c]u8, @ptrCast(if (...) "ON" else "OFF"))` works! Wait, "ON" and "OFF" are `*const [N:0]u8`.
    # Let's just do `if (...) @as([*c]u8, @ptrCast(@constCast("..."))) else @as([*c]u8, @ptrCast(@constCast("...")))`
    
    def replacer(m):
        str1 = m.group(1)
        str2 = m.group(2)
        return f'if ({m.group(3)}) @as([*c]u8, @ptrCast(@constCast("{str1}"))) else @as([*c]u8, @ptrCast(@constCast("{str2}")))'

    # We need to match: if (CONDITION) @constCast("STR1") else @constCast("STR2")
    # Actually, in Zig, `@constCast` returns a pointer to an array if the string is literal!
    content = re.sub(r'if \((.*?)\) @constCast\("(.*?)"\) else @constCast\("(.*?)"\)', 
                     r'if (\1) @as([*c]u8, @ptrCast(@constCast("\2"))) else @as([*c]u8, @ptrCast(@constCast("\3")))', content)

    with open(filepath, 'w') as f:
        f.write(content)

fix_file("src/mapper.zig")
fix_file("src/buffer.zig")
print("Fixed variadic string ternary expressions.")
