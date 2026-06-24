import re

def extract_function(filepath, func_name):
    with open(filepath, 'r') as f:
        content = f.read()
    
    lines = content.split('\n')
    start_idx = -1
    for i, line in enumerate(lines):
        if line.startswith('void ' + func_name) or line.startswith('int ' + func_name) or line.startswith('struct scriptnode *' + func_name) or line.startswith('struct scriptnode * ' + func_name):
            start_idx = i
            break
            
    if start_idx == -1:
        print(f"Could not find {func_name} in {filepath}")
        return ""
        
    brace_count = 0
    in_func = False
    func_lines = []
    
    for i in range(start_idx, len(lines)):
        line = lines[i]
        func_lines.append(line)
        
        if '{' in line:
            brace_count += line.count('{')
            in_func = True
        if '}' in line:
            brace_count -= line.count('}')
            
        if in_func and brace_count == 0:
            break
            
    return '\n'.join(func_lines) + '\n\n'

output = '#include "tintin.h"\n\n'

output += "int draw_cnt = 0;\n\n"

output += extract_function('src/buffer.c', 'check_buffer')
output += extract_function('src/buffer.c', 'show_buffer')
output += extract_function('src/cursor.c', 'cursor_input_tab_add')
output += extract_function('src/cursor.c', 'cursor_scrollback_tab_add')
output += extract_function('src/tokenize.c', 'parse_script')

with open('src/missing_goto.c', 'w') as f:
    f.write(output)

print("Extraction complete.")
