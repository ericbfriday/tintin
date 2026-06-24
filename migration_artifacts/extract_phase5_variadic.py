import re

functions_to_extract = {
    "src/input.c": ["input_printf"],
    "src/show.c": [
        "print_lines", "show_debug", "show_error", 
        "show_info", "show_message", "tintin_header", "tintin_printf", 
        "tintin_printf2", "tintin_printf3"
    ]
}

def extract_function(filepath, func_name):
    with open(filepath, 'r') as f:
        content = f.read()

    pattern = r'(?:\w+\s+)?\w+\s*\*?\s*' + func_name + r'\s*\([^)]*\)\s*\{'
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

out = '#include "tintin.h"\n\n'

for filepath, funcs in functions_to_extract.items():
    out += f"// --- Extracted from {filepath} ---\n\n"
    for func in funcs:
        extracted = extract_function(filepath, func)
        out += extracted + "\n\n"

# Extra ones
with open("src/text.c", "r") as f:
    text = f.read()
match = re.search(r'void print_stdout\(int row, int col, char \*format, \.\.\.\)\s*\{', text)
if match:
    start_idx = match.start()
    brace_count = 0
    in_func = False
    end_idx = start_idx
    for i in range(start_idx, len(text)):
        if text[i] == '{':
            brace_count += 1
            in_func = True
        elif text[i] == '}':
            brace_count -= 1
        if in_func and brace_count == 0:
            end_idx = i + 1
            break
    out += text[start_idx:end_idx] + "\n\n"

with open("src/missing_phase5.c", "w") as f:
    f.write(out)

print("Generated src/missing_phase5.c with only variadics")
