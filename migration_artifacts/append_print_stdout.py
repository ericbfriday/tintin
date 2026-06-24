with open("src/text.c", "r") as f:
    content = f.read()

import re

def extract_func(content, start_idx):
    brace_count = 0
    in_func = False
    in_string = False
    in_char = False
    in_comment = False
    in_line_comment = False
    escape = False

    i = start_idx
    while i < len(content):
        c = content[i]
        
        if escape:
            escape = False
            i += 1
            continue
            
        if c == '\\':
            escape = True
            i += 1
            continue

        if not in_comment and not in_line_comment and not in_string and not in_char:
            if c == '/' and i + 1 < len(content):
                if content[i+1] == '*':
                    in_comment = True
                    i += 1
                elif content[i+1] == '/':
                    in_line_comment = True
                    i += 1
            elif c == '"':
                in_string = True
            elif c == "'":
                in_char = True
            elif c == '{':
                brace_count += 1
                in_func = True
            elif c == '}':
                brace_count -= 1
                if in_func and brace_count == 0:
                    return i + 1

        elif in_string:
            if c == '"':
                in_string = False
        elif in_char:
            if c == "'":
                in_char = False
        elif in_line_comment:
            if c == '\n':
                in_line_comment = False
        elif in_comment:
            if c == '*' and i + 1 < len(content) and content[i+1] == '/':
                in_comment = False
                i += 1
                
        i += 1
    return -1

pattern = r'\bprint_stdout\s*\([^)]*\.\.\.[^)]*\)'
match = re.search(pattern, content)
start_idx = match.start()
line_start = start_idx
while line_start > 0 and content[line_start-1] != '\n':
    line_start -= 1
    
end_idx = extract_func(content, start_idx)

extracted = content[line_start:end_idx]
extracted = extracted.replace("/* end: */", "end:;")

with open("src/missing_variadics.c", "a") as f:
    f.write(f"\n\n// --- Extracted print_stdout from src/text.c ---\n\n{extracted}\n")

print("Done!")
