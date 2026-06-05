const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe_mod = b.createModule(.{
        .target = target,
        .optimize = optimize,
    });

    const exe = b.addExecutable(.{
        .name = "tt++",
        .root_module = exe_mod,
    });

    const c_flags = &.{
        "-D_GNU_SOURCE",
        "-DHAVE_CONFIG_H",
    };

    const src_files = &.{
        "src/files.c",
        "src/help.c",
        "src/trigger.c",
        "src/input.c",
        "src/main.c",
        "src/misc.c",
        "src/net.c",
        "src/parse.c",
        "src/debug.c",
        "src/update.c",
        "src/history.c",
        "src/vt102.c",
        "src/terminal.c",
        "src/text.c",
        
        //"src/memory.c",
        // "src/math.c",
        "src/math_legacy.c",
        "src/split.c",
        "src/system.c",
        "src/mapper.c",
        "src/tables.c",
        "src/buffer.c",
        "src/event.c",
        "src/tokenize.c",
        "src/chat.c",
        "src/utf8.c",
        "src/banner.c",
        "src/sort.c",
        "src/base.c",
        //"src/string.c",
        "src/list_legacy.c",
        //"src/list.c",
        "src/edit.c",
        "src/command.c",
        "src/forkpty.c",
        //"src/utils.c",
        "src/line.c",
        "src/data.c",
        "src/variable.c",
        "src/msdp.c",
        "src/port.c",
        "src/scan.c",
        "src/telopt_client.c",
        "src/screen.c",
        "src/cursor.c",
        "src/nest.c",
        "src/show.c",
        "src/mccp.c",
        "src/telopt_server.c",
        "src/draw.c",
        "src/log.c",
        "src/path.c",
        "src/session.c",
        "src/class.c",
        "src/config.c",
        "src/ssl.c",
        "src/regex.c",
        "src/substitute.c",
        "src/daemon.c",
    };

    exe.root_module.addCSourceFiles(.{
        .files = src_files,
        .flags = c_flags,
    });

    exe.root_module.addIncludePath(b.path("src"));

    // Add Homebrew paths for Apple Silicon
    exe.root_module.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    exe.root_module.addLibraryPath(.{ .cwd_relative = "/opt/homebrew/lib" });

    exe.root_module.link_libc = true;
    exe.root_module.linkSystemLibrary("pcre2-8", .{});
    exe.root_module.linkSystemLibrary("z", .{});
    exe.root_module.linkSystemLibrary("gnutls", .{});
    exe.root_module.linkSystemLibrary("m", .{});
    exe.root_module.linkSystemLibrary("util", .{}); // usage for forkpty, might be needed on linux, checking compilation on mac

    // Math module (Zig)
    const math_mod = b.createModule(.{
        .root_source_file = b.path("src/math.zig"),
        .target = target,
        .optimize = optimize,
    });
    math_mod.addIncludePath(b.path("src"));
    math_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    math_mod.link_libc = true;

    // Memory module (Zig)
    const memory_mod = b.createModule(.{
        .root_source_file = b.path("src/memory.zig"),
        .target = target,
        .optimize = optimize,
    });
    memory_mod.addIncludePath(b.path("src"));
    memory_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    memory_mod.link_libc = true;

    const math_zig = b.addObject(.{
        .name = "math_zig",
        .root_module = math_mod,
    });

    const memory_zig = b.addObject(.{
        .name = "memory_zig", // This name must be unique!
        .root_module = memory_mod,
    });

    // Utils module (Zig)
    const utils_mod = b.createModule(.{
        .root_source_file = b.path("src/utils.zig"),
        .target = target,
        .optimize = optimize,
    });
    utils_mod.addIncludePath(b.path("src"));
    utils_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    utils_mod.link_libc = true;

    const utils_zig = b.addObject(.{
        .name = "utils_zig",
        .root_module = utils_mod,
    });

    // String module (Zig)
    const string_mod = b.createModule(.{
        .root_source_file = b.path("src/string.zig"),
        .target = target,
        .optimize = optimize,
    });
    string_mod.addIncludePath(b.path("src"));
    string_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    string_mod.link_libc = true;

    const string_zig = b.addObject(.{
        .name = "string_zig",
        .root_module = string_mod,
    });

    // List module (Zig)
    const list_mod = b.createModule(.{
        .root_source_file = b.path("src/list.zig"),
        .target = target,
        .optimize = optimize,
    });
    list_mod.addIncludePath(b.path("src"));
    list_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    list_mod.link_libc = true;

    const list_zig = b.addObject(.{
        .name = "list_zig",
        .root_module = list_mod,
    });

    // Dictionary module (Zig)
    const dict_mod = b.createModule(.{
        .root_source_file = b.path("src/dict.zig"),
        .target = target,
        .optimize = optimize,
    });
    dict_mod.addIncludePath(b.path("src"));
    dict_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    dict_mod.link_libc = true;

    const dict_zig = b.addObject(.{
        .name = "dict_zig",
        .root_module = dict_mod,
    });

    exe.root_module.addObject(math_zig);
    exe.root_module.addObject(memory_zig);
    exe.root_module.addObject(utils_zig);
    exe.root_module.addObject(string_zig);
    exe.root_module.addObject(list_zig);
    exe.root_module.addObject(dict_zig);

    b.installArtifact(exe);

    // Unit tests
    const test_step = b.step("test", "Run unit tests");

    var test_c_flags = std.ArrayList([]const u8).empty;
    inline for (c_flags) |flag| {
        test_c_flags.append(b.allocator, flag) catch unreachable;
    }
    test_c_flags.append(b.allocator, "-DZIG_TEST_RUNNER=1") catch unreachable;

    const math_test_mod = b.createModule(.{
        .root_source_file = b.path("src/math.zig"),
        .target = target,
        .optimize = optimize,
    });
    math_test_mod.addCSourceFiles(.{ .files = src_files, .flags = test_c_flags.items });
    math_test_mod.addIncludePath(b.path("src"));
    math_test_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    math_test_mod.addLibraryPath(.{ .cwd_relative = "/opt/homebrew/lib" });
    math_test_mod.link_libc = true;
    math_test_mod.linkSystemLibrary("pcre2-8", .{});
    math_test_mod.linkSystemLibrary("z", .{});
    math_test_mod.linkSystemLibrary("gnutls", .{});
    math_test_mod.linkSystemLibrary("m", .{});
    math_test_mod.linkSystemLibrary("util", .{});
    math_test_mod.addObject(memory_zig);
    math_test_mod.addObject(utils_zig);
    math_test_mod.addObject(string_zig);
    math_test_mod.addObject(list_zig);
    math_test_mod.addObject(dict_zig);

    const math_tests = b.addTest(.{
        .root_module = math_test_mod,
    });
    const run_math_tests = b.addRunArtifact(math_tests);
    test_step.dependOn(&run_math_tests.step);

    const string_test_mod = b.createModule(.{
        .root_source_file = b.path("src/string.zig"),
        .target = target,
        .optimize = optimize,
    });
    string_test_mod.addCSourceFiles(.{ .files = src_files, .flags = test_c_flags.items });
    string_test_mod.addIncludePath(b.path("src"));
    string_test_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    string_test_mod.addLibraryPath(.{ .cwd_relative = "/opt/homebrew/lib" });
    string_test_mod.link_libc = true;
    string_test_mod.linkSystemLibrary("pcre2-8", .{});
    string_test_mod.linkSystemLibrary("z", .{});
    string_test_mod.linkSystemLibrary("gnutls", .{});
    string_test_mod.linkSystemLibrary("m", .{});
    string_test_mod.linkSystemLibrary("util", .{});
    string_test_mod.addObject(math_zig);
    string_test_mod.addObject(memory_zig);
    string_test_mod.addObject(utils_zig);
    string_test_mod.addObject(list_zig);
    string_test_mod.addObject(dict_zig);

    const string_tests = b.addTest(.{
        .root_module = string_test_mod,
    });
    const run_string_tests = b.addRunArtifact(string_tests);
    test_step.dependOn(&run_string_tests.step);
}
