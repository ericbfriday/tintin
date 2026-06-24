import sys

def patch_build():
    with open('build.zig', 'r') as f:
        content = f.read()

    files_to_comment = [
        "src/main.c",
        "src/draw.c",
        "src/help.c",
        "src/tables.c",
        "src/utf8.c"
    ]

    for cfile in files_to_comment:
        content = content.replace(f'"{cfile}",', f'// "{cfile}",')

    modules_to_add = [f.split('/')[1].split('.')[0] for f in files_to_comment]

    # Generate module block
    mod_blocks = ""
    for mod in modules_to_add:
        mod_blocks += f"""
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
    exe.root_module.addObject({mod}_zig);
"""
    
    content = content.replace('    exe.root_module.addObject(forkpty_zig);', '    exe.root_module.addObject(forkpty_zig);\n' + mod_blocks)

    test_adds = ""
    for mod in modules_to_add:
        test_adds += f'    math_test_mod.addObject({mod}_zig);\n'
        
    content = content.replace('    math_test_mod.addObject(forkpty_zig);', '    math_test_mod.addObject(forkpty_zig);\n' + test_adds)
    
    # Also fix the missing C files by making sure missing_phase9.c is added if needed.
    # But wait, we haven't created missing_phase9.c yet! Let's just create an empty one.
    
    with open('build.zig', 'w') as f:
        f.write(content)

if __name__ == '__main__':
    patch_build()
