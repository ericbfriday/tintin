import re

missing = [
    ("get_regex_range", "src/regex.c"),
    ("parse_script", "src/tokenize.c"),
    ("searchgrid_find", "src/mapper.c"),
    ("searchgrid_walk", "src/mapper.c")
]

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

out_code = ""

for func_name, file_path in missing:
    with open(file_path, "r") as f:
        content = f.read()

    pattern = r'\b' + func_name + r'\s*\([^)]*\)'
    matches = list(re.finditer(pattern, content))
        
    found = False
    for match in matches:
        start_idx = match.start()
        
        # trace back to start of line
        line_start = start_idx
        while line_start > 0 and content[line_start-1] != '\n':
            line_start -= 1
            
        line_to_match = content[line_start:match.end()]
        
        # Check if the next non-whitespace characters are a semicolon
        temp_i = match.end()
        while temp_i < len(content) and content[temp_i].isspace():
            temp_i += 1
        
        if 'extern' in line_to_match or ';' in line_to_match or (temp_i < len(content) and content[temp_i] == ';'):
            continue
            
        # Go back to start of the type declaration if possible
        if content[line_start-1] == '\n':
            temp_idx = line_start - 1
            while temp_idx > 0:
                if content[temp_idx-1:temp_idx+1] == '\n\n':
                    line_start = temp_idx + 1
                    break
                temp_idx -= 1
                
        end_idx = extract_func(content, match.start())
        if end_idx != -1:
            extracted = content[line_start:end_idx]
            extracted = extracted.replace("/* end: */", "end:;")
            out_code += f"\n\n// --- Extracted {func_name} from {file_path} ---\n\n"
            out_code += extracted.strip() + "\n"
            found = True
            break
            
    if not found:
        print(f"Could not extract {func_name}")

with open("src/missing_variadics.c", "a") as f:
    f.write(out_code)

print("Done!")
