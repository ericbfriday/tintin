import re

def fix_data():
    with open('src/data.zig', 'r') as f:
        content = f.read()
    
    # Fix 'pub extern var tintin_c.gtd' -> 'pub export var gtd'
    # wait, if it was extern var, maybe it was a declaration.
    # Let's just fix `tintin_c.gts` -> `gts` in declarations/definitions
    content = re.sub(r'pub (extern|export) var tintin_c\.gts', r'pub \1 var gts', content)
    content = re.sub(r'pub (extern|export) var tintin_c\.gtd', r'pub \1 var gtd', content)
    
    with open('src/data.zig', 'w') as f:
        f.write(content)

def fix_session():
    with open('src/session.zig', 'r') as f:
        content = f.read()

    # Remove `pub const kill = tintin_c.kill;`
    content = re.sub(r'pub const kill = tintin_c\.kill;\n?', '', content)
    
    # Replace `kill(` with `c_kill(`
    content = re.sub(r'\bkill\(', r'c_kill(', content)

    with open('src/session.zig', 'w') as f:
        f.write(content)

fix_data()
fix_session()
