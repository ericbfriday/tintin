import re

with open("build.zig", "r") as f:
    content = f.read()

files_to_remove = ["main.c", "draw.c", "help.c", "tables.c", "utf8.c"]
for f in files_to_remove:
    content = re.sub(r'^\s*\"src/' + f.replace(".", "\.") + r'\",\n', '', content, flags=re.MULTILINE)

files_to_add = ["main", "draw", "help", "tables", "utf8"]
addition = ""
for f in files_to_add:
    addition += f"""
    const {f}_mod = b.createModule(.{{
        .root_source_file = b.path("src/{f}.zig"),
        .target = target,
        .optimize = optimize,
    }});
    {f}_mod.addIncludePath(b.path("src"));
    {f}_mod.addIncludePath(.{{ .cwd_relative = "/opt/homebrew/include" }});
    {f}_mod.link_libc = true;
    const {f}_zig = b.addObject(.{{ .name = "{f}_zig", .root_module = {f}_mod }});
    exe.root_module.addObject({f}_zig);
"""

# Insert addition before "// Math module (Zig)"
content = content.replace("    // Math module (Zig)", addition + "\n    // Math module (Zig)")

with open("build.zig", "w") as f:
    f.write(content)

print("build.zig updated successfully.")
