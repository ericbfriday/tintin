import re

with open('src/sort.zig', 'r') as f:
    content = f.read()

# Fix unused parameters in empty functions
def fix_func(match):
    decl = match.group(1)
    args_str = match.group(2)
    ret_type = match.group(3)
    body = match.group(4) or ""
    
    # Extract argument names
    args = []
    for arg in args_str.split(','):
        arg = arg.strip()
        if not arg: continue
        parts = arg.split(':')
        if len(parts) > 0:
            name = parts[0].strip()
            if name and name != '...':
                args.append(name)
    
    # Create `_ = arg;`
    underscores = " ".join([f"_ = {arg};" for arg in args])
    
    # Replace body
    if "return 0;" in body:
        new_body = f"{{ {underscores} return 0; }}"
    else:
        new_body = f"{{ {underscores} }}"
        
    return f"{decl}({args_str}){ret_type}{new_body}"

content = re.sub(r'(pub export fn \w+)\(([^)]*)\)(\s*(?:usize|void)\s*)\{\s*(return 0;)?\s*\}', fix_func, content)

# Fix __GNUC__
content = re.sub(r'pub const _GNUTLS_GCC_VERSION = .*?;', '// pub const _GNUTLS_GCC_VERSION removed', content)

with open('src/sort.zig', 'w') as f:
    f.write(content)

