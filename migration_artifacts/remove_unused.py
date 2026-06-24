import re
import subprocess
import sys

def run_build():
    result = subprocess.run(["zig", "build"], capture_output=True, text=True)
    return result.stderr

def fix_errors():
    for _ in range(20):
        stderr = run_build()
        if "unused local constant" not in stderr and "shadows local constant from outer scope" not in stderr and "redeclaration of local constant" not in stderr:
            break
            
        lines_to_delete = {}
        for line in stderr.split('\n'):
            m1 = re.search(r'(src/.*?\.zig):(\d+):\d+: error: (?:unused local constant|redeclaration of local constant|local constant \'.*?\' shadows local constant from outer scope)', line)
            if m1:
                filename = m1.group(1)
                lineno = int(m1.group(2))
                if filename not in lines_to_delete:
                    lines_to_delete[filename] = set()
                lines_to_delete[filename].add(lineno)
                
        if not lines_to_delete:
            break
            
        for filename, linenos in lines_to_delete.items():
            with open(filename, 'r') as f:
                content = f.read().split('\n')
            
            for ln in sorted(linenos, reverse=True):
                idx = ln - 1
                # If it's `const extern_local_foo = struct {`, delete the whole struct
                if "const extern_local_" in content[idx] and "struct {" in content[idx]:
                    # Find matching closing brace
                    end_idx = idx
                    for j in range(idx, len(content)):
                        if "};" in content[j]:
                            end_idx = j
                            break
                    for j in range(idx, end_idx + 1):
                        content[j] = ""
                    # Also check for `_ = &extern_local_foo;`
                    if end_idx + 1 < len(content) and "_ = &" in content[end_idx + 1]:
                        content[end_idx + 1] = ""
                else:
                    content[idx] = ""
                    if idx + 1 < len(content) and "_ = &" in content[idx + 1]:
                        content[idx + 1] = ""
                    
            with open(filename, 'w') as f:
                f.write('\n'.join(content))
                
        print(f"Fixed {sum(len(v) for v in lines_to_delete.values())} errors.")

fix_errors()
