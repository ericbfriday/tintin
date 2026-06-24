import os
import re

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Replace `extern_local_XYZ` with `XYZ`
    content = re.sub(r'extern_local_([a-zA-Z_0-9]+)', r'\1', content)

    with open(filepath, 'w') as f:
        f.write(content)

for root, _, files in os.walk("src"):
    for file in files:
        if file.endswith(".zig"):
            fix_file(os.path.join(root, file))

print("Removed extern_local_ prefix from all files.")
