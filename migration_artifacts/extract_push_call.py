import re

with open("src/debug.c", "r") as f:
    content = f.read()

funcs = ["push_call", "push_call_printf"]

extracted = []

for func in funcs:
    pattern = r'(void|int)\s+' + re.escape(func) + r'\s*\([^)]*\)\s*\{'
    match = re.search(pattern, content)
    if match:
        start = match.start()
        # Find the matching closing brace
        braces = 0
        in_func = False
        end = start
        for i in range(start, len(content)):
            if content[i] == '{':
                braces += 1
                in_func = True
            elif content[i] == '}':
                braces -= 1
                if in_func and braces == 0:
                    end = i + 1
                    break
        extracted.append(content[start:end])

with open("src/missing_variadics.c", "a") as f:
    f.write("\n\n")
    for ext in extracted:
        f.write(ext + "\n\n")

print("Extracted push_call and push_call_printf to missing_variadics.c")
