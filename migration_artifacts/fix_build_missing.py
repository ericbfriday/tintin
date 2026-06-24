import re

with open('build.zig', 'r') as f:
    content = f.read()

def add_module(name):
    global content
    if f'{name}_mod' in content:
        return
    
    # Find the last module block to insert after it
    # I will just insert before `const main_mod`
    
    block = f"""
    const {name}_mod = b.createModule(.{{
        .root_source_file = b.path("src/{name}.zig"),
        .target = target,
        .optimize = optimize,
    }});
    {name}_mod.addIncludePath(b.path("src"));
    {name}_mod.addIncludePath(.{{ .cwd_relative = "/opt/homebrew/include" }});
    {name}_mod.link_libc = true;
    const {name}_zig = b.addObject(.{{ .name = "{name}_zig", .root_module = {name}_mod }});
    exe.root_module.addObject({name}_zig);
    """
    
    content = content.replace("    const main_mod = b.createModule(.{", block + "\n    const main_mod = b.createModule(.{")

add_module('missing_phase5')
add_module('missing_phase8')

with open('build.zig', 'w') as f:
    f.write(content)
