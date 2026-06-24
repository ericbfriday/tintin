import os
import glob

def generate():
    zig_files = glob.glob("src/*.zig")
    modules = []
    for z in zig_files:
        basename = os.path.basename(z)
        if basename.startswith("test_") or basename.startswith("scratch_") or basename == "tmp.zig":
            continue
        if basename in ["aliases.zig", "aliases2.zig", "update.zig", "vt102.zig", "main.zig"]:
            continue
        modules.append(basename.replace(".zig", ""))
        
    modules = sorted(modules)
    
    missing_c_files = []
    for c in sorted(glob.glob("src/missing_*.c")):
        if os.path.exists(c.replace(".c", ".zig")):
            continue
        missing_c_files.append(c)
    
    out = """const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    exe_mod.addIncludePath(b.path("src"));
    exe_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    exe_mod.link_libc = true;

    const exe = b.addExecutable(.{
        .name = "tt++",
        .root_module = exe_mod,
    });

    const c_flags = &.{
        "-D_GNU_SOURCE",
        "-DHAVE_CONFIG_H",
        "-Wno-deprecated-declarations",
    };

    const src_files = &.{
"""
    for c in missing_c_files:
        out += f'        "{c}",\n'
    out += """    };

    exe.root_module.addCSourceFiles(.{
        .files = src_files,
        .flags = c_flags,
    });
    exe.root_module.addIncludePath(b.path("src"));
    exe.root_module.linkSystemLibrary("pcre2-8", .{});
    exe.root_module.linkSystemLibrary("z", .{});
    exe.root_module.linkSystemLibrary("gnutls", .{});
    exe.root_module.linkSystemLibrary("util", .{});

"""
    
    for mod in modules:
        out += f"""    const {mod}_mod = b.createModule(.{{
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

    out += """
    b.installArtifact(exe);
}
"""
    
    with open("build.zig", "w") as f:
        f.write(out)

generate()
