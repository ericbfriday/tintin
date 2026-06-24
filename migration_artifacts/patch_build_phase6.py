import sys

with open("build.zig", "r") as f:
    content = f.read()

# Remove C files from src_files
c_files_to_remove = [
    '"src/trigger.c",',
    '"src/substitute.c",',
    '"src/event.c",',
    '"src/regex.c",',
    '"src/tokenize.c",',
    '"src/scan.c",',
    '"src/sort.c",',
    '"src/split.c",',
]

for c_file in c_files_to_remove:
    content = content.replace(f"        {c_file}\n", f"        // {c_file}\n")

# Add missing_phase6.c to src_files if not present
if '"src/missing_phase6.c",' not in content:
    # insert after missing_phase5.c
    content = content.replace('"src/missing_phase5.c",\n', '"src/missing_phase5.c",\n        "src/missing_phase6.c",\n')

# Define new modules
modules = ["trigger", "substitute", "event", "regex", "tokenize", "scan", "sort", "split"]

for mod in modules:
    # Build module definition
    mod_def = f"""
    // {mod.capitalize()} module (Zig)
    const {mod}_mod = b.createModule(.{{
        .root_source_file = b.path("src/{mod}.zig"),
        .target = target,
        .optimize = optimize,
    }});
    {mod}_mod.addIncludePath(b.path("src"));
    {mod}_mod.addIncludePath(.{{ .cwd_relative = "/opt/homebrew/include" }});
    {mod}_mod.link_libc = true;
    const {mod}_zig = b.addObject(.{{ .name = "{mod}_zig", .root_module = {mod}_mod }});
"""
    
    # insert before "b.installArtifact(exe);"
    if f"const {mod}_zig =" not in content:
        install_idx = content.find("    b.installArtifact(exe);")
        content = content[:install_idx] + mod_def + f"    exe.root_module.addObject({mod}_zig);\n\n" + content[install_idx:]

    # Add to math tests
    if f"math_test_mod.addObject({mod}_zig);" not in content:
        idx = content.find("math_test_mod.addObject(draw_zig);")
        if idx != -1:
            end_idx = content.find('\n', idx)
            content = content[:end_idx+1] + f"    math_test_mod.addObject({mod}_zig);\n" + content[end_idx+1:]
            
    # Add to string tests
    if f"string_test_mod.addObject({mod}_zig);" not in content:
        idx = content.find("string_test_mod.addObject(draw_zig);")
        if idx != -1:
            end_idx = content.find('\n', idx)
            content = content[:end_idx+1] + f"    string_test_mod.addObject({mod}_zig);\n" + content[end_idx+1:]

with open("build.zig", "w") as f:
    f.write(content)

print("build.zig patched.")
