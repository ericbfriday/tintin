import re
import sys

files = ['src/event.zig', 'src/mapper.zig', 'src/tokenize.zig', 'src/main.zig', 'src/regex.zig']

for filename in files:
    with open(filename, 'r') as f:
        content = f.read()

    # 1. Regex to replace ALL ternary string literal returns in variadic function calls
    content = re.sub(
        r'@constCast\("([^"]*)"\) else @constCast\("([^"]*)"\)',
        r'@as([*c]u8, @ptrCast(@constCast("\1"))) else @as([*c]u8, @ptrCast(@constCast("\2")))',
        content
    )
    
    # 2. Incompatible string types in ternary operator with function call
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

    # 3. mapper.zig search id string cast
    content = content.replace('ses.*.map.*.search.*.id else @constCast("")', 'ses.*.map.*.search.*.id else @as([*c]u8, @ptrCast(@constCast(""))) ')

    # 4. Remove redeclared or shadowed local constants entirely using regex.
    # Since Zig complains about redeclarations of 'extern_local_is_abbrev', etc.
    # And we know they are generated repeatedly by translate-c, we can just replace ALL
    # `const extern_local_foo = struct { ... };` that are REDECLARATIONS.
    # But wait, python script to parse Zig output is easier for redeclarations.
    
    with open(filename, 'w') as f:
        f.write(content)
