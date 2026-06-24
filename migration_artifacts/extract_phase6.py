import os
import re

functions_to_extract = {
    "src/event.c": ["check_all_events"],
}

def extract_function(filepath, func_name):
    with open(filepath, 'r') as f:
        content = f.read()

    # Look for the function signature
    pattern = r'(?:\w+\s+)?\w+\s*\*?\s*' + func_name + r'\s*\([^)]*\)\s*\{'
    match = re.search(pattern, content)
    if not match:
        # Check for signature spanning multiple lines or with variadic
        pattern2 = r'(?:\w+\s+)?\w+\s*\*?\s*' + func_name + r'\s*\([^)]*\.\.\.\s*\)\s*\{'
        match = re.search(pattern2, content)
        if not match:
            # Let's try an even simpler regex for variadic
            pattern3 = r'(?:\w+\s+)?\w+\s*\*?\s*' + func_name + r'\s*\([^)]*,?\s*\.\.\.\s*\)\s*\{'
            match = re.search(pattern3, content)
            if not match:
                # one more try, generic
                pattern4 = r'(?:\w+\s+)?\w+\s*\*?\s*' + func_name + r'\s*\([^\{]*\)\s*\{'
                match = re.search(pattern4, content)
                if not match:
                    print(f"Warning: Could not find {func_name} in {filepath}")
                    return ""

    start_idx = match.start()
    
    # Simple brace counting to extract the body
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

with open("src/missing_phase6.c", "w") as f:
    f.write(out)

print("Generated src/missing_phase6.c")
