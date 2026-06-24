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

with open("src/draw.c", "r") as f:
    content = f.read()
    match = re.search(r'DO_DRAW\s*\(\s*draw_hbar\s*\)', content)
    if match:
        end_idx = extract_func(content, match.start())
        print(content[match.start():end_idx])

