import re

files = ['src/missing_phase5.zig', 'src/missing_phase8.zig']

for filename in files:
    with open(filename, 'r') as f:
        content = f.read()

    # Clean dangling `};\n _ = &extern_local_xxx;`
    content = re.sub(r'const extern_local_[a-zA-Z0-9_]+\s*=\s*struct\s*\{\s*\};\s*_ = &extern_local_[a-zA-Z0-9_]+;\n?', '', content)
    content = re.sub(r'\};\s*_ = &extern_local_[a-zA-Z0-9_]+;\n', '', content)
    
    with open(filename, 'w') as f:
        f.write(content)

