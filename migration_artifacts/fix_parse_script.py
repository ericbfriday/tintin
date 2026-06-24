import sys
import re

with open("src/missing_phase5.c", "r") as f:
    content = f.read()

with open("src/tokenize.c", "r") as f:
    tokenize_c = f.read()

structs = ""
for struct_name in ['scriptnode', 'scriptdata', 'script_regex']:
    match = re.search(r'struct ' + struct_name + r'\n\{.*?\n\};\n', tokenize_c, re.DOTALL)
    if match:
        structs += match.group(0) + "\n"

# We just insert the structs right after // --- Extracted from src/tokenize.c ---
content = content.replace('// --- Extracted from src/tokenize.c ---\n', '// --- Extracted from src/tokenize.c ---\n\n' + structs)

with open("src/missing_phase5.c", "w") as f:
    f.write(content)

print("Inserted structs into missing_phase5.c")
