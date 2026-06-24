import re
import sys

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # We replaced @constCast with @ptrCast(@constCast...) which failed.
    # Let's revert it and replace with @as([*c]u8, @ptrCast(@constCast(...)))
    content = re.sub(r'@ptrCast\(@constCast\("([^"]*)"\)\)', r'@as([*c]u8, @ptrCast(@constCast("\1")))', content)
    content = re.sub(r'@constCast\("([^"]*)"\)', r'@as([*c]u8, @ptrCast(@constCast("\1")))', content)

    # Some remaining @constCast("%-10s ...") might need to be fixed
    
    with open(filepath, 'w') as f:
        f.write(content)

for f in sys.argv[1:]:
    fix_file(f)

