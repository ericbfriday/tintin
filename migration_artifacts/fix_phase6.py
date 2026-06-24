import os
import re

files_to_patch = [
    "src/trigger.zig",
    "src/substitute.zig",
    "src/event.zig",
    "src/regex.zig",
    "src/tokenize.zig",
    "src/scan.zig",
    "src/sort.zig",
    "src/split.zig"
]

def patch_file(filepath):
    if not os.path.exists(filepath):
        return
        
    with open(filepath, 'r') as f:
        content = f.read()
        
    # Fix the boolean casts: ptr += @as(usize, @as(isize, if (x != 0) 0 else 1)); -> ptr += @as(usize, if (x != 0) 0 else 1);
    content = content.replace('@as(usize, @as(isize, if', '@as(usize, if')
    content = content.replace('if (x != 0) 0 else 1)', 'if (x != 0) @as(usize, 0) else @as(usize, 1))')
    
    # Fix quadsort swap buf issue
    # We replaced 'const swap = if (true) @compileError...' with 'var swap_buf: [1000]c_int = undefined; var swap: [*c]c_int = &swap_buf;'
    # But it should be dynamically typed based on pta.
    content = content.replace(
        'var swap_buf: [1000]c_int = undefined; var swap: [*c]c_int = &swap_buf;',
        'var swap_buf: [1000]@TypeOf(pta.*) = undefined; var swap: @TypeOf(pta) = &swap_buf;'
    )

    # Fix the pointer indexing issue that caused expected type 'T', found '[22]T'
    # ses.*.list[LIST_TICKER] -> ses[0].list[LIST_TICKER]
    content = re.sub(r'ses\.\*\.list\[', r'ses[0].list[', content)
    
    # Fix 'expected type '[*c]u8', found '[*c]const u8'' introduced by my previous script.
    # The previous script replaced '@constCast("...")' with '@as([*c]const u8, "...")'.
    # This broke functions expecting [*c]u8.
    # We should change them to `@as([*c]u8, @ptrCast(@constCast("...")))` to satisfy both variadic AND regular functions!
    content = re.sub(r'@as\(\[\*c\]const u8, ("[^"]*")\)', r'@as([*c]u8, @ptrCast(@constCast(\1)))', content)

    # In substitute.zig, there's `buf[@as(c_int, 1)] += 1;` where buf is [*c]u8.
    # Zig 0.13 does not allow += on an array element without `&`. 
    # Actually the error is: invalid left-hand side to assignment
    # Original C: buf[1]++;
    # Translated Zig: @as(c_int, buf[@as(c_int, 1)]) += 1;
    # It should be: buf[@as(c_int, 1)] += 1; or buf[1] += 1;
    content = content.replace('@as(c_int, buf[@as(c_int, 1)]) += 1;', 'buf[@as(c_int, 1)] += 1;')

    with open(filepath, 'w') as f:
        f.write(content)

for f in files_to_patch:
    patch_file(f)
    print(f"Patched {f}")
