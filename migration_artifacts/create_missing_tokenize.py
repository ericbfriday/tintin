import sys

with open("src/tokenize.c", "r") as f:
    lines = f.readlines()

out = []
in_parse = False
brace_level = 0

# Grab includes and structs and externs
for line in lines:
    if line.startswith("#include") or line.startswith("extern struct command_type"):
        out.append(line)
    elif line.startswith("struct script"):
        out.append(line)
    elif line.startswith("{") and "struct" in out[-1]:
        out.append(line)
    # wait, this is getting complex to parse structs

# Let's just grab lines 26 to 63 (includes and structs)
out = lines[25:64] # 0-indexed

# Now find parse_script
for line in lines:
    if line.startswith("struct scriptnode *parse_script"):
        in_parse = True
    
    if in_parse:
        out.append(line)
        if "{" in line:
            brace_level += line.count("{")
        if "}" in line:
            brace_level -= line.count("}")
            if brace_level == 0 and "}" in line: # End of function
                in_parse = False
                break

with open("src/missing_tokenize.c", "w") as f:
    f.writelines(out)

print("Created src/missing_tokenize.c")

# Update build.zig to compile missing_tokenize.c
with open("build.zig", "r") as f:
    build_content = f.read()

if '"src/missing_tokenize.c"' not in build_content:
    build_content = build_content.replace('"src/missing_sort.c",', '"src/missing_sort.c",\n        "src/missing_tokenize.c",')
    with open("build.zig", "w") as f:
        f.write(build_content)

