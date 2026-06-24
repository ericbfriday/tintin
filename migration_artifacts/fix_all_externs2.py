import os
import re

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # The previous script replaced `extern_local_XYZ` with `XYZ`.
    # So `extern_local_XYZ.XYZ` became `XYZ.XYZ`.
    # We need to replace `XYZ.XYZ` with `XYZ` for the specific externs!
    
    # Let's just find all instances of `([a-zA-Z_0-9]+)\.\1\(` and replace with `\1\(`
    # This will catch `tintin_header.tintin_header(` -> `tintin_header(`
    # But ONLY for words that are functions. It's safe since `foo.foo(` is rare and usually an extern bug in our codebase.
    
    content = re.sub(r'\b([a-zA-Z_0-9]+)\.\1\(', r'\1(', content)

    with open(filepath, 'w') as f:
        f.write(content)

for root, _, files in os.walk("src"):
    for file in files:
        if file.endswith(".zig"):
            fix_file(os.path.join(root, file))

print("Fixed XYZ.XYZ( calls.")
