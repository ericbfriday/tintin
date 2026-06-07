import os
import re

functions_to_extract = {
    "src/buffer.c": ["check_buffer", "show_buffer"],
    "src/cursor.c": ["cursor_input_tab_add", "cursor_scrollback_tab_add"],
    "src/draw.c": ["do_draw", "draw_hbar"],
    "src/input.c": ["input_printf"],
    "src/screen.c": ["get_link_screen"],
    "src/show.c": [
        "print_lines", "print_stdout", "show_debug", "show_error", 
        "show_info", "show_message", "tintin_header", "tintin_printf", 
        "tintin_printf2", "tintin_printf3"
    ]
}

def extract_function(filepath, func_name):
    with open(filepath, 'r') as f:
        content = f.read()

    # Look for the function signature. e.g. void check_buffer(struct session *ses)
    # This regex is a heuristic but should work for this codebase
    pattern = r'(?:\w+\s+)?\w+\s*\*?\s*' + func_name + r'\s*\([^)]*\)\s*\{'
    match = re.search(pattern, content)
    if not match:
        print(f"Warning: Could not find {func_name} in {filepath}")
        return ""

    start_idx = match.start()
    
    # Simple brace counting to extract the body
    brace_count = 0
    in_func = False
    end_idx = start_idx
    
    # We need to find the first opening brace
    for i in range(start_idx, len(content)):
        if content[i] == '{':
            brace_count += 1
            in_func = True
        elif content[i] == '}':
            brace_count -= 1
        
        if in_func and brace_count == 0:
            end_idx = i + 1
            break
            
    return content[start_idx:end_idx]

out = '#include "tintin.h"\n\n'

for filepath, funcs in functions_to_extract.items():
    out += f"// --- Extracted from {filepath} ---\n\n"
    for func in funcs:
        extracted = extract_function(filepath, func)
        out += extracted + "\n\n"

with open("src/missing_phase5.c", "w") as f:
    f.write(out)

print("Generated src/missing_phase5.c")
