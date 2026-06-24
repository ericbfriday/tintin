import re

def clean_file(filename):
    with open(filename, 'r') as f:
        content = f.read()

    # Find the structs that are causing expected type expression or other dangling things
    # Let's just cleanly remove all empty structs and their _ = &extern_local...
    
    # regex to match: const extern_local_xxx = struct { \n }; \n _ = &extern_local_xxx;
    content = re.sub(r'const extern_local_[a-zA-Z0-9_]+\s*=\s*struct\s*\{\s*\};\s*_ = &extern_local_[a-zA-Z0-9_]+;\n?', '', content)
    
    # also remove just floating }; and _ = ...
    # wait, that's dangerous. Let's find exactly the ones from lines 9760-9772
    
    with open(filename, 'w') as f:
        f.write(content)

clean_file('src/mapper.zig')
