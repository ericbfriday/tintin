import re

with open('build.zig', 'r') as f:
    content = f.read()

files_to_comment = [
    'src/input.c', 'src/history.c', 'src/text.c', 'src/buffer.c', 
    'src/line.c', 'src/screen.c', 'src/cursor.c', 'src/show.c', 'src/draw.c'
]

for file in files_to_comment:
    content = re.sub(rf'"{file}",', rf'//"{file}",', content)

# Find the end of the exe.root_module.addObject calls
add_object_regex = re.compile(r'(exe\.root_module\.addObject\(.*?\);\n)+')
matches = list(add_object_regex.finditer(content))
if matches:
    last_match = matches[-1]
    insert_pos = last_match.end()
else:
    print("Could not find addObject block")
    exit(1)

zig_modules = []
for file in files_to_comment:
    name = file.split('/')[1].split('.')[0]
    zig_modules.append(f"""
    // {name.capitalize()} module (Zig)
    const {name}_mod = b.createModule(.{{
        .root_source_file = b.path("src/{name}.zig"),
        .target = target,
        .optimize = optimize,
    }});
    {name}_mod.addIncludePath(b.path("src"));
    {name}_mod.addIncludePath(.{{ .cwd_relative = "/opt/homebrew/include" }});
    {name}_mod.link_libc = true;
    const {name}_zig = b.addObject(.{{ .name = "{name}_zig", .root_module = {name}_mod }});
""")

add_objects = []
for file in files_to_comment:
    name = file.split('/')[1].split('.')[0]
    add_objects.append(f"    exe.root_module.addObject({name}_zig);\n")

content = content[:insert_pos] + '\n' + ''.join(zig_modules) + '\n' + ''.join(add_objects) + content[insert_pos:]

# Also add to tests
test_add_object_regex = re.compile(r'(math_test_mod\.addObject\(.*?\);\n)+')
matches = list(test_add_object_regex.finditer(content))
if matches:
    last_match = matches[-1]
    insert_pos_test1 = last_match.end()
    add_objects_test1 = []
    for file in files_to_comment:
        name = file.split('/')[1].split('.')[0]
        add_objects_test1.append(f"    math_test_mod.addObject({name}_zig);\n")
    content = content[:insert_pos_test1] + ''.join(add_objects_test1) + content[insert_pos_test1:]
else:
    print("Could not find math_test_mod.addObject block")

test_add_object_regex2 = re.compile(r'(string_test_mod\.addObject\(.*?\);\n)+')
matches2 = list(test_add_object_regex2.finditer(content))
if matches2:
    last_match2 = matches2[-1]
    insert_pos_test2 = last_match2.end()
    add_objects_test2 = []
    for file in files_to_comment:
        name = file.split('/')[1].split('.')[0]
        add_objects_test2.append(f"    string_test_mod.addObject({name}_zig);\n")
    content = content[:insert_pos_test2] + ''.join(add_objects_test2) + content[insert_pos_test2:]
else:
    print("Could not find string_test_mod.addObject block")

with open('build.zig', 'w') as f:
    f.write(content)

print("build.zig patched")
