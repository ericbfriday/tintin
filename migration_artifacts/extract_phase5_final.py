import re

out = """#include "tintin.h"

// Forward declarations for missing symbols
extern void buffer_print(struct session *ses, int index, int start, int end);

extern void string_to_stamp(struct session *ses, long long flags, char *in, char *out);
extern void string_to_font(struct session *ses, long long flags, char *in, char *out);

"""

functions_to_extract = {
    "src/buffer.c": ["check_buffer", "show_buffer"],
    "src/cursor.c": ["cursor_input_tab_add", "cursor_scrollback_tab_add"],
    "src/input.c": ["input_printf"],
    "src/screen.c": ["get_link_screen"],
    "src/show.c": [
        "print_lines", "show_debug", "show_error", 
        "show_info", "show_message", "tintin_header", "tintin_printf", 
        "tintin_printf2", "tintin_printf3"
    ],
    "src/nest.c": ["set_nest_node", "set_nest_node_ses", "add_nest_node", "add_nest_node_ses"],
    "src/command.c": ["execute", "command"]
}

def extract_function(filepath, func_name):
    with open(filepath, 'r') as f:
        content = f.read()

    pattern = r'(?:(?:\w+\s+)?\w+\s*\*?\s*' + func_name + r'\s*\([^)]*\)|DO_\w+\(\s*' + func_name + r'\s*\))\s*\{'
    match = re.search(pattern, content)
    if not match:
        print(f"Warning: Could not find {func_name} in {filepath}")
        return ""

    start_idx = match.start()
    brace_count = 0
    in_func = False
    end_idx = start_idx
    
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

for filepath, funcs in functions_to_extract.items():
    out += f"// --- Extracted from {filepath} ---\n\n"
    for func in funcs:
        extracted = extract_function(filepath, func)
        out += extracted + "\n\n"

with open("src/missing_phase5.c", "w") as f:
    f.write(out)
