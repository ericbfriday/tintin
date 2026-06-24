import re

out = ""

# 1. do_draw from draw.c
with open("src/draw.c", "r") as f:
    text = f.read()
match = re.search(r'DO_COMMAND\(do_draw\)\s*\{', text)
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

# 2. draw_hbar from draw.c
match = re.search(r'DO_DRAW\(draw_hbar\)\s*\{', text)
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

# 3. print_stdout from text.c
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

with open("src/missing_phase5.c", "a") as f:
    f.write(out)
