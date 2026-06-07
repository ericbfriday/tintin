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
        "-Wno-deprecated-declarations",
    };

    const src_files = &.{
        "src/missing_phase5.c",
        "src/files.c",
        "src/help.c",
        "src/trigger.c",
        //"src/input.c",
        "src/main.c",
        //"src/misc.c",
        "src/debug.c",
        //"src/update.c",
        //"src/history.c",
        //"src/vt102.c",
        //"src/terminal.c",
        //"src/text.c",
        
        //"src/memory.c",
        // "src/math.c",
        "src/split.c",
        //"src/system.c",
        "src/mapper.c",
        "src/tables.c",
        //"src/buffer.c",
        "src/event.c",
        "src/tokenize.c",
        "src/chat.c",
        "src/utf8.c",
        "src/banner.c",
        "src/sort.c",
        //"src/base.c",
        //"src/string.c",
        //"src/list.c",
        //"src/edit.c",
        "src/forkpty.c",
        //"src/utils.c",
        //"src/line.c",
        "src/data.c",
        "src/msdp.c",
        "src/port.c",
        "src/scan.c",
        //"src/telopt_client.c",
        //"src/screen.c",
        //"src/cursor.c",
        //"src/show.c",
        "src/mccp.c",
        //"src/telopt_server.c",
        "src/draw.c",
        "src/log.c",
        "src/path.c",
        "src/session.c",
        "src/class.c",
        "src/config.c",
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
    
    const variable_mod = b.createModule(.{
        .root_source_file = b.path("src/variable.zig"),
        .target = target,
        .optimize = optimize,
    });
    variable_mod.addIncludePath(b.path("src"));
    variable_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    variable_mod.link_libc = true;
    const variable_zig = b.addObject(.{
        .name = "variable_zig",
        .root_module = variable_mod,
    });
    exe.root_module.addObject(variable_zig);

    const nest_mod = b.createModule(.{
        .root_source_file = b.path("src/nest.zig"),
        .target = target,
        .optimize = optimize,
    });
    nest_mod.addIncludePath(b.path("src"));
    nest_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    nest_mod.link_libc = true;
    const nest_zig = b.addObject(.{
        .name = "nest_zig",
        .root_module = nest_mod,
    });
    exe.root_module.addObject(nest_zig);

    const parse_mod = b.createModule(.{
        .root_source_file = b.path("src/parse.zig"),
        .target = target,
        .optimize = optimize,
    });
    parse_mod.addIncludePath(b.path("src"));
    parse_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    parse_mod.link_libc = true;
    const parse_zig = b.addObject(.{
        .name = "parse_zig",
        .root_module = parse_mod,
    });
    exe.root_module.addObject(parse_zig);

    const command_mod = b.createModule(.{
        .root_source_file = b.path("src/command.zig"),
        .target = target,
        .optimize = optimize,
    });
    command_mod.addIncludePath(b.path("src"));
    command_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    command_mod.link_libc = true;
    const command_zig = b.addObject(.{
        .name = "command_zig",
        .root_module = command_mod,
    });
    exe.root_module.addObject(command_zig);

    const net_mod = b.createModule(.{
        .root_source_file = b.path("src/net.zig"),
        .target = target,
        .optimize = optimize,
    });
    net_mod.addIncludePath(b.path("src"));
    net_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    net_mod.link_libc = true;
    const net_zig = b.addObject(.{
        .name = "net_zig",
        .root_module = net_mod,
    });
    exe.root_module.addObject(net_zig);

    const ssl_mod = b.createModule(.{
        .root_source_file = b.path("src/ssl.zig"),
        .target = target,
        .optimize = optimize,
    });
    ssl_mod.addIncludePath(b.path("src"));
    ssl_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    ssl_mod.link_libc = true;
    const ssl_zig = b.addObject(.{
        .name = "ssl_zig",
        .root_module = ssl_mod,
    });
    exe.root_module.addObject(ssl_zig);

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

    // System module (Zig)
    const system_mod = b.createModule(.{
        .root_source_file = b.path("src/system.zig"),
        .target = target,
        .optimize = optimize,
    });
    system_mod.addIncludePath(b.path("src"));
    system_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    system_mod.link_libc = true;

    const system_zig = b.addObject(.{
        .name = "system_zig",
        .root_module = system_mod,
    });

    // Misc module (Zig)
    const misc_mod = b.createModule(.{
        .root_source_file = b.path("src/misc.zig"),
        .target = target,
        .optimize = optimize,
    });
    misc_mod.addIncludePath(b.path("src"));
    misc_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    misc_mod.link_libc = true;

    const misc_zig = b.addObject(.{
        .name = "misc_zig",
        .root_module = misc_mod,
    });

    // Base module (Zig)
    const base_mod = b.createModule(.{
        .root_source_file = b.path("src/base.zig"),
        .target = target,
        .optimize = optimize,
    });
    base_mod.addIncludePath(b.path("src"));
    base_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    base_mod.link_libc = true;

    const base_zig = b.addObject(.{
        .name = "base_zig",
        .root_module = base_mod,
    });

    // Edit module (Zig)
    const edit_mod = b.createModule(.{
        .root_source_file = b.path("src/edit.zig"),
        .target = target,
        .optimize = optimize,
    });
    edit_mod.addIncludePath(b.path("src"));
    edit_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    edit_mod.link_libc = true;

    const edit_zig = b.addObject(.{
        .name = "edit_zig",
        .root_module = edit_mod,
    });

    // Update module (Zig)
    const update_a_mod = b.createModule(.{
        .root_source_file = b.path("src/update_a.zig"),
        .target = target,
        .optimize = optimize,
    });
    update_a_mod.addIncludePath(b.path("src"));
    update_a_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    update_a_mod.link_libc = true;
    const update_a_zig = b.addObject(.{ .name = "update_a_zig", .root_module = update_a_mod });

    const update_b_mod = b.createModule(.{
        .root_source_file = b.path("src/update_b.zig"),
        .target = target,
        .optimize = optimize,
    });
    update_b_mod.addIncludePath(b.path("src"));
    update_b_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    update_b_mod.link_libc = true;
    const update_b_zig = b.addObject(.{ .name = "update_b_zig", .root_module = update_b_mod });

    // VT102 module (Zig)
    const vt102_a_mod = b.createModule(.{
        .root_source_file = b.path("src/vt102_a.zig"),
        .target = target,
        .optimize = optimize,
    });
    vt102_a_mod.addIncludePath(b.path("src"));
    vt102_a_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    vt102_a_mod.link_libc = true;
    const vt102_a_zig = b.addObject(.{ .name = "vt102_a_zig", .root_module = vt102_a_mod });

    const vt102_b_mod = b.createModule(.{
        .root_source_file = b.path("src/vt102_b.zig"),
        .target = target,
        .optimize = optimize,
    });
    vt102_b_mod.addIncludePath(b.path("src"));
    vt102_b_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    vt102_b_mod.link_libc = true;
    const vt102_b_zig = b.addObject(.{ .name = "vt102_b_zig", .root_module = vt102_b_mod });

    // Terminal module (Zig)
    const terminal_mod = b.createModule(.{
        .root_source_file = b.path("src/terminal.zig"),
        .target = target,
        .optimize = optimize,
    });
    terminal_mod.addIncludePath(b.path("src"));
    terminal_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    terminal_mod.link_libc = true;
    const terminal_zig = b.addObject(.{ .name = "terminal_zig", .root_module = terminal_mod });

    // Telopt Client module (Zig)
    const telopt_client_mod = b.createModule(.{
        .root_source_file = b.path("src/telopt_client.zig"),
        .target = target,
        .optimize = optimize,
    });
    telopt_client_mod.addIncludePath(b.path("src"));
    telopt_client_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    telopt_client_mod.link_libc = true;
    const telopt_client_zig = b.addObject(.{ .name = "telopt_client_zig", .root_module = telopt_client_mod });

    // Telopt Server module (Zig)
    const telopt_server_mod = b.createModule(.{
        .root_source_file = b.path("src/telopt_server.zig"),
        .target = target,
        .optimize = optimize,
    });
    telopt_server_mod.addIncludePath(b.path("src"));
    telopt_server_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    telopt_server_mod.link_libc = true;
    const telopt_server_zig = b.addObject(.{ .name = "telopt_server_zig", .root_module = telopt_server_mod });

    exe.root_module.addObject(math_zig);
    exe.root_module.addObject(memory_zig);
    exe.root_module.addObject(utils_zig);
    exe.root_module.addObject(string_zig);
    exe.root_module.addObject(list_zig);
    exe.root_module.addObject(dict_zig);
    exe.root_module.addObject(system_zig);
    exe.root_module.addObject(misc_zig);
    exe.root_module.addObject(base_zig);
    exe.root_module.addObject(edit_zig);
    exe.root_module.addObject(update_a_zig);
    exe.root_module.addObject(update_b_zig);
    exe.root_module.addObject(vt102_a_zig);
    exe.root_module.addObject(vt102_b_zig);
    exe.root_module.addObject(terminal_zig);
    exe.root_module.addObject(telopt_client_zig);
    exe.root_module.addObject(telopt_server_zig);


    // Input module (Zig)
    const input_mod = b.createModule(.{
        .root_source_file = b.path("src/input.zig"),
        .target = target,
        .optimize = optimize,
    });
    input_mod.addIncludePath(b.path("src"));
    input_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    input_mod.link_libc = true;
    const input_zig = b.addObject(.{ .name = "input_zig", .root_module = input_mod });

    // History module (Zig)
    const history_mod = b.createModule(.{
        .root_source_file = b.path("src/history.zig"),
        .target = target,
        .optimize = optimize,
    });
    history_mod.addIncludePath(b.path("src"));
    history_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    history_mod.link_libc = true;
    const history_zig = b.addObject(.{ .name = "history_zig", .root_module = history_mod });

    // Text module (Zig)
    const text_mod = b.createModule(.{
        .root_source_file = b.path("src/text.zig"),
        .target = target,
        .optimize = optimize,
    });
    text_mod.addIncludePath(b.path("src"));
    text_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    text_mod.link_libc = true;
    const text_zig = b.addObject(.{ .name = "text_zig", .root_module = text_mod });

    // Buffer module (Zig)
    const buffer_mod = b.createModule(.{
        .root_source_file = b.path("src/buffer.zig"),
        .target = target,
        .optimize = optimize,
    });
    buffer_mod.addIncludePath(b.path("src"));
    buffer_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    buffer_mod.link_libc = true;
    const buffer_zig = b.addObject(.{ .name = "buffer_zig", .root_module = buffer_mod });

    // Line module (Zig)
    const line_mod = b.createModule(.{
        .root_source_file = b.path("src/line.zig"),
        .target = target,
        .optimize = optimize,
    });
    line_mod.addIncludePath(b.path("src"));
    line_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    line_mod.link_libc = true;
    const line_zig = b.addObject(.{ .name = "line_zig", .root_module = line_mod });

    // Screen module (Zig)
    const screen_mod = b.createModule(.{
        .root_source_file = b.path("src/screen.zig"),
        .target = target,
        .optimize = optimize,
    });
    screen_mod.addIncludePath(b.path("src"));
    screen_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    screen_mod.link_libc = true;
    const screen_zig = b.addObject(.{ .name = "screen_zig", .root_module = screen_mod });

    // Cursor module (Zig)
    const cursor_mod = b.createModule(.{
        .root_source_file = b.path("src/cursor.zig"),
        .target = target,
        .optimize = optimize,
    });
    cursor_mod.addIncludePath(b.path("src"));
    cursor_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    cursor_mod.link_libc = true;
    const cursor_zig = b.addObject(.{ .name = "cursor_zig", .root_module = cursor_mod });

    // Show module (Zig)
    const show_mod = b.createModule(.{
        .root_source_file = b.path("src/show.zig"),
        .target = target,
        .optimize = optimize,
    });
    show_mod.addIncludePath(b.path("src"));
    show_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    show_mod.link_libc = true;
    const show_zig = b.addObject(.{ .name = "show_zig", .root_module = show_mod });

    // Draw module (Zig)
    const draw_mod = b.createModule(.{
        .root_source_file = b.path("src/draw.zig"),
        .target = target,
        .optimize = optimize,
    });
    draw_mod.addIncludePath(b.path("src"));
    draw_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    draw_mod.link_libc = true;
    const draw_zig = b.addObject(.{ .name = "draw_zig", .root_module = draw_mod });

    exe.root_module.addObject(input_zig);
    exe.root_module.addObject(history_zig);
    exe.root_module.addObject(text_zig);
    exe.root_module.addObject(buffer_zig);
    exe.root_module.addObject(line_zig);
    exe.root_module.addObject(screen_zig);
    exe.root_module.addObject(cursor_zig);
    exe.root_module.addObject(show_zig);
    exe.root_module.addObject(draw_zig);

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
    math_test_mod.addObject(variable_zig);
    math_test_mod.addObject(nest_zig);
    math_test_mod.addObject(parse_zig);
    math_test_mod.addObject(command_zig);
    math_test_mod.addObject(net_zig);
    math_test_mod.addObject(ssl_zig);
    math_test_mod.addObject(memory_zig);
    math_test_mod.addObject(utils_zig);
    math_test_mod.addObject(string_zig);
    math_test_mod.addObject(list_zig);
    math_test_mod.addObject(dict_zig);
    math_test_mod.addObject(system_zig);
    math_test_mod.addObject(misc_zig);
    math_test_mod.addObject(base_zig);
    math_test_mod.addObject(edit_zig);
    math_test_mod.addObject(update_a_zig);
    math_test_mod.addObject(update_b_zig);
    math_test_mod.addObject(vt102_a_zig);
    math_test_mod.addObject(vt102_b_zig);
    math_test_mod.addObject(terminal_zig);
    math_test_mod.addObject(telopt_client_zig);
    math_test_mod.addObject(telopt_server_zig);
    math_test_mod.addObject(input_zig);
    math_test_mod.addObject(history_zig);
    math_test_mod.addObject(text_zig);
    math_test_mod.addObject(buffer_zig);
    math_test_mod.addObject(line_zig);
    math_test_mod.addObject(screen_zig);
    math_test_mod.addObject(cursor_zig);
    math_test_mod.addObject(show_zig);
    math_test_mod.addObject(draw_zig);

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
    string_test_mod.addObject(variable_zig);
    string_test_mod.addObject(nest_zig);
    string_test_mod.addObject(parse_zig);
    string_test_mod.addObject(command_zig);
    string_test_mod.addObject(net_zig);
    string_test_mod.addObject(ssl_zig);
    string_test_mod.addObject(memory_zig);
    string_test_mod.addObject(utils_zig);
    string_test_mod.addObject(list_zig);
    string_test_mod.addObject(dict_zig);
    string_test_mod.addObject(system_zig);
    string_test_mod.addObject(misc_zig);
    string_test_mod.addObject(base_zig);
    string_test_mod.addObject(edit_zig);
    string_test_mod.addObject(update_a_zig);
    string_test_mod.addObject(update_b_zig);
    string_test_mod.addObject(vt102_a_zig);
    string_test_mod.addObject(vt102_b_zig);
    string_test_mod.addObject(terminal_zig);
    string_test_mod.addObject(telopt_client_zig);
    string_test_mod.addObject(telopt_server_zig);
    string_test_mod.addObject(input_zig);
    string_test_mod.addObject(history_zig);
    string_test_mod.addObject(text_zig);
    string_test_mod.addObject(buffer_zig);
    string_test_mod.addObject(line_zig);
    string_test_mod.addObject(screen_zig);
    string_test_mod.addObject(cursor_zig);
    string_test_mod.addObject(show_zig);
    string_test_mod.addObject(draw_zig);

    const string_tests = b.addTest(.{
        .root_module = string_test_mod,
    });
    const run_string_tests = b.addRunArtifact(string_tests);
    test_step.dependOn(&run_string_tests.step);
}
