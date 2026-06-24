import re

with open("src/missing_variadics.c", "r") as f:
    content = f.read()

funcs_to_remove = [
    "add_nest_node",
    "add_nest_node_ses",
    "command",
    "execute",
    "set_nest_node",
    "set_nest_node_ses"
]

for func in funcs_to_remove:
    # Pattern to match: return_type func_name(...) { ... }
    # This is a basic regex, but we can just find the start and end of the function block
    # Actually, they have headers like "// --- Extracted add_nest_node from src/nest.c ---"
    # We can use regex or simple line processing
    pass

# Line processing approach
with open("src/missing_variadics.c", "r") as f:
    lines = f.readlines()

out = []
in_func = False
braces = 0

for line in lines:
    if not in_func:
        # Check if line starts with function signature
        matched = False
        for func in funcs_to_remove:
            if re.match(r'^.*?\s+'+func+r'\s*\(', line):
                in_func = True
                braces = 0
                if "{" in line:
                    braces += line.count("{")
                    braces -= line.count("}")
                matched = True
                break
        
        if not matched:
            out.append(line)
    else:
        if "{" in line:
            braces += line.count("{")
        if "}" in line:
            braces -= line.count("}")
            
        if braces == 0:
            in_func = False

with open("src/missing_variadics.c", "w") as f:
    f.writelines(out)
print("Removed duplicates.")
