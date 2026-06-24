import re

variadics = [
    ("add_nest_node", "src/nest.c"),
    ("add_nest_node_ses", "src/nest.c"),
    ("add_undo", "src/mapper.c"),
    ("check_all_events", "src/event.c"),
    ("command", "src/command.c"),
    ("create_exit", "src/mapper.c"),
    ("create_room", "src/mapper.c"),
    ("do_draw", "src/draw.c"),
    ("draw_hbar", "src/draw.c"),
    ("execute", "src/command.c"),
    ("input_printf", "src/input.c"),
    ("print_lines", "src/show.c"),
    ("set_nest_node", "src/nest.c"),
    ("set_nest_node_ses", "src/nest.c"),
    ("show_debug", "src/show.c"),
    ("show_error", "src/show.c"),
    ("show_info", "src/show.c"),
    ("show_message", "src/show.c"),
    ("syserr_printf", "src/main.c"),
    ("tintin_header", "src/show.c"),
    ("tintin_printf", "src/show.c"),
    ("tintin_printf2", "src/show.c"),
    ("tintin_printf3", "src/show.c")
]

with open("src/missing_variadics.c", "r") as f:
    header = f.read().split("// --- Extracted ")[0]

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

out_code = header

for func_name, file_path in variadics:
    with open(file_path, "r") as f:
        content = f.read()

    if func_name == "do_draw":
        pattern = r'^DO_COMMAND\s*\(\s*do_draw\s*\)'
        matches = list(re.finditer(pattern, content, re.MULTILINE))
    elif func_name == "draw_hbar":
        pattern = r'^DO_DRAW\s*\(\s*draw_hbar\s*\)'
        matches = list(re.finditer(pattern, content, re.MULTILINE))
    else:
        pattern = r'\b' + func_name + r'\s*\([^)]*\.\.\.[^)]*\)'
        matches = list(re.finditer(pattern, content))
        
    found = False
    for match in matches:
        start_idx = match.start()
        
        line_start = start_idx
        while line_start > 0 and content[line_start-1] != '\n':
            line_start -= 1
            
        line_to_match = content[line_start:match.end()]
        
        temp_i = match.end()
        while temp_i < len(content) and content[temp_i].isspace():
            temp_i += 1
        
        if 'extern' in line_to_match or ';' in line_to_match or (temp_i < len(content) and content[temp_i] == ';'):
            continue
            
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

with open("src/missing_variadics.c", "w") as f:
    f.write(out_code)

print("Regenerated missing_variadics.c")
