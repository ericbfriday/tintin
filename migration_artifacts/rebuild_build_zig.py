import os
import glob

def generate_build_zig():
    with open("build.zig", "r") as f:
        content = f.read()

    # Extract everything up to "const src_files = &.{"
    start_idx = content.find("const src_files = &.{")
    if start_idx == -1:
        print("Could not find const src_files")
        return
        
    header = content[:start_idx]

    # Find the end of src_files
    end_src_files = content.find("};", start_idx) + 2

    # Extract the block that adds C source files and sets up the root module
    end_root_module = content.find("    const banner_mod")
    if end_root_module == -1:
        end_root_module = content.find("    const test_step")
        
    middle = content[end_src_files:end_root_module]

    # Find the test module creation to append math_test_mod etc.
    test_idx = content.find("    // Unit tests")
    if test_idx == -1:
        test_idx = content.find("    const test_step")
    
    footer = content[test_idx:] if test_idx != -1 else ""

    missing_c_files = glob.glob("src/missing_*.c")
    src_files_str = "    const src_files = &.{\n"
    for m in missing_c_files:
        src_files_str += f'        "{m}",\n'
    src_files_str += "    };\n"

    # All zig files except tests and scratch
    zig_files = glob.glob("src/*.zig")
    zig_modules = []
    for z in zig_files:
        basename = os.path.basename(z)
        if basename.startswith("test_") or basename.startswith("scratch_") or basename == "tmp.zig":
            continue
        if basename in ["aliases.zig", "aliases2.zig", "update.zig", "vt102.zig", "main.zig"]:
            continue
        mod_name = basename.replace(".zig", "")
        zig_modules.append(mod_name)

    modules_str = "\n"
    test_adds_str = "\n"
    for mod in sorted(zig_modules):
        modules_str += f"""
    const {mod}_mod = b.createModule(.{{
        .root_source_file = b.path("src/{mod}.zig"),
        .target = target,
        .optimize = optimize,
    }});
    {mod}_mod.addIncludePath(b.path("src"));
    {mod}_mod.addIncludePath(.{{ .cwd_relative = "/opt/homebrew/include" }});
    {mod}_mod.link_libc = true;
    const {mod}_zig = b.addObject(.{{ .name = "{mod}_zig", .root_module = {mod}_mod }});
    exe.root_module.addObject({mod}_zig);
"""
        test_adds_str += f'    math_test_mod.addObject({mod}_zig);\n'
        test_adds_str += f'    string_test_mod.addObject({mod}_zig);\n'

    zig_modules.append("main")
    mod = "main"
    modules_str += f"""
    const {mod}_mod = b.createModule(.{{
        .root_source_file = b.path("src/{mod}.zig"),
        .target = target,
        .optimize = optimize,
    }});
    {mod}_mod.addIncludePath(b.path("src"));
    {mod}_mod.addIncludePath(.{{ .cwd_relative = "/opt/homebrew/include" }});
    {mod}_mod.link_libc = true;
    const {mod}_zig = b.addObject(.{{ .name = "{mod}_zig", .root_module = {mod}_mod }});
    exe.root_module.addObject({mod}_zig);
"""

    if footer:
        last_brace = footer.rfind("}")
        if last_brace != -1:
            footer = footer[:last_brace] + test_adds_str + footer[last_brace:]

    new_content = header + src_files_str + middle + modules_str + footer

    with open("build.zig", "w") as f:
        f.write(new_content)

if __name__ == "__main__":
    generate_build_zig()
