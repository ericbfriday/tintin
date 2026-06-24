import re

funcs_to_extract = [
    "check_buffer",
    "show_buffer",
    "cursor_input_tab_add",
    "cursor_scrollback_tab_add",
    "get_link_screen"
]

with open("src/missing_phase5.c", "r") as f:
    content = f.read()

out_c = '#include "tintin.h"\n\n'

for func in funcs_to_extract:
    # Match the function signature and body
    # It starts with the return type and function name, ends with `\n}\n`
    pattern = r"(?:void|int)\s+" + func + r"\s*\([^)]*\)\s*\{.*?\n\}\n"
    match = re.search(pattern, content, re.DOTALL | re.MULTILINE)
    if match:
        out_c += match.group(0) + "\n"
    else:
        print(f"Could not find {func}!")

with open("src/missing_goto.c", "w") as f:
    f.write(out_c)

print("Extracted to src/missing_goto.c")
