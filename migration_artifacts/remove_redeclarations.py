import re
import subprocess
import sys

def run_build():
    result = subprocess.run(["zig", "build"], capture_output=True, text=True)
    return result.stderr

def fix_redeclarations():
    for _ in range(20):
        stderr = run_build()
        if "redeclaration of local constant" not in stderr and "shadows local constant from outer scope" not in stderr:
            break
            
        lines_to_delete = {}
        for line in stderr.split('\n'):
            # Match redeclaration or shadowing
            m1 = re.search(r'(src/mapper\.zig):(\d+):\d+: error: redeclaration of local constant', line)
            m2 = re.search(r'(src/mapper\.zig):(\d+):\d+: error: local constant \'.*?\' shadows local constant from outer scope', line)
            m = m1 or m2
            if m:
                filename = m.group(1)
                lineno = int(m.group(2))
                if filename not in lines_to_delete:
                    lines_to_delete[filename] = set()
                # Delete the const declaration, and the struct definition!
                # Since it's `const extern_local_foo = struct {` (1 line)
                # `    pub extern fn foo(...) void;` (1 line)
                # `};` (1 line)
                # and maybe `_ = &extern_local_foo;` (1 line)
                # Actually, wait, `translate-c` prints it as `const extern_local_foo = struct { ... };` on ONE LINE!
                # Let's check!
                lines_to_delete[filename].add(lineno)
                
        if not lines_to_delete:
            break
            
        for filename, linenos in lines_to_delete.items():
            with open(filename, 'r') as f:
                content = f.read().split('\n')
                
            # We want to remove the specific lines.
            # But remember, my fix script added `\n    _ = &extern_local_foo;` right after it!
            # If we delete the declaration, we MUST delete the `_ = &...` too!
            # Since the `_ = &...` was appended, we can just use a regex in the python script.
            
            for ln in sorted(linenos, reverse=True):
                idx = ln - 1
                # Remove the struct line
                deleted_line = content[idx]
                content[idx] = ""
                # Also remove the next line if it's `_ = &...`
                if idx + 1 < len(content) and "_ = &" in content[idx + 1]:
                    content[idx + 1] = ""
                    
            with open(filename, 'w') as f:
                f.write('\n'.join(content))

fix_redeclarations()
