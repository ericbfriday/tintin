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
    # We look for // --- Extracted {func} from ...
    # And then we remove everything up to the first "\n}\n" after it
    pattern = r'// --- Extracted ' + re.escape(func) + r' from.*?\n\}\n'
    content = re.sub(pattern, '', content, flags=re.DOTALL)

with open("src/missing_variadics.c", "w") as f:
    f.write(content)

print("Duplicates removed.")
