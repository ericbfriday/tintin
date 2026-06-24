with open('build.zig', 'r') as f:
    text = f.read()

text = text.replace(
    'const update_mod = b.createModule(.{\n        .root_source_file = b.path("src/update.zig"),',
    '''const update_a_mod = b.createModule(.{
        .root_source_file = b.path("src/update_a.zig"),
    });
    update_a_mod.addIncludePath(b.path("src"));
    update_a_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    update_a_mod.link_libc = true;
    const update_a_zig = b.addObject(.{ .name = "update_a_zig", .root_module = update_a_mod });

    const update_b_mod = b.createModule(.{
        .root_source_file = b.path("src/update_b.zig"),'''
)

text = text.replace('update_mod.', 'update_b_mod.')
text = text.replace('const update_zig = b.addObject(.{ .name = "update_zig", .root_module = update_b_mod });', 'const update_b_zig = b.addObject(.{ .name = "update_b_zig", .root_module = update_b_mod });')

text = text.replace('exe.root_module.addObject(update_zig);', 'exe.root_module.addObject(update_a_zig);\n    exe.root_module.addObject(update_b_zig);')
text = text.replace('math_test_mod.addObject(update_zig);', 'math_test_mod.addObject(update_a_zig);\n    math_test_mod.addObject(update_b_zig);')
text = text.replace('string_test_mod.addObject(update_zig);', 'string_test_mod.addObject(update_a_zig);\n    string_test_mod.addObject(update_b_zig);')

with open('build.zig', 'w') as f:
    f.write(text)

with open('fix_all.sh', 'r') as f:
    text = f.read()

text = text.replace('zig translate-c -I src -I /opt/homebrew/include -lc src/update.c > src/update.zig\n', 
                    'zig translate-c -I src -I /opt/homebrew/include -lc src/update_a.c > src/update_a.zig\nzig translate-c -I src -I /opt/homebrew/include -lc src/update_b.c > src/update_b.zig\n')
text = text.replace('src/update.zig', 'src/update_a.zig src/update_b.zig')

with open('fix_all.sh', 'w') as f:
    f.write(text)
