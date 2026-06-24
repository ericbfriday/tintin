const std = @import("std");

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
        "src/missing_phase5.c",
        "src/missing_phase8.c",
        "src/missing_phase9.c",
        "src/missing_sort.c",
        "src/missing_variadics.c",
    };

    exe.root_module.addCSourceFiles(.{
        .files = src_files,
        .flags = c_flags,
    });
    exe.root_module.addIncludePath(b.path("src"));
    exe.root_module.linkSystemLibrary("pcre2-8", .{});
    exe.root_module.linkSystemLibrary("z", .{});
    exe.root_module.linkSystemLibrary("gnutls", .{});
    exe.root_module.linkSystemLibrary("util", .{});

    const banner_mod = b.createModule(.{
        .root_source_file = b.path("src/banner.zig"),
        .target = target,
        .optimize = optimize,
    });
    banner_mod.addIncludePath(b.path("src"));
    banner_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    banner_mod.link_libc = true;
    const banner_zig = b.addObject(.{ .name = "banner_zig", .root_module = banner_mod });
    exe.root_module.addObject(banner_zig);
    const base_mod = b.createModule(.{
        .root_source_file = b.path("src/base.zig"),
        .target = target,
        .optimize = optimize,
    });
    base_mod.addIncludePath(b.path("src"));
    base_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    base_mod.link_libc = true;
    const base_zig = b.addObject(.{ .name = "base_zig", .root_module = base_mod });
    exe.root_module.addObject(base_zig);
    const buffer_mod = b.createModule(.{
        .root_source_file = b.path("src/buffer.zig"),
        .target = target,
        .optimize = optimize,
    });
    buffer_mod.addIncludePath(b.path("src"));
    buffer_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    buffer_mod.link_libc = true;
    const buffer_zig = b.addObject(.{ .name = "buffer_zig", .root_module = buffer_mod });
    exe.root_module.addObject(buffer_zig);
    const chat_mod = b.createModule(.{
        .root_source_file = b.path("src/chat.zig"),
        .target = target,
        .optimize = optimize,
    });
    chat_mod.addIncludePath(b.path("src"));
    chat_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    chat_mod.link_libc = true;
    const chat_zig = b.addObject(.{ .name = "chat_zig", .root_module = chat_mod });
    exe.root_module.addObject(chat_zig);
    const class_mod = b.createModule(.{
        .root_source_file = b.path("src/class.zig"),
        .target = target,
        .optimize = optimize,
    });
    class_mod.addIncludePath(b.path("src"));
    class_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    class_mod.link_libc = true;
    const class_zig = b.addObject(.{ .name = "class_zig", .root_module = class_mod });
    exe.root_module.addObject(class_zig);
    const command_mod = b.createModule(.{
        .root_source_file = b.path("src/command.zig"),
        .target = target,
        .optimize = optimize,
    });
    command_mod.addIncludePath(b.path("src"));
    command_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    command_mod.link_libc = true;
    const command_zig = b.addObject(.{ .name = "command_zig", .root_module = command_mod });
    exe.root_module.addObject(command_zig);
    const config_mod = b.createModule(.{
        .root_source_file = b.path("src/config.zig"),
        .target = target,
        .optimize = optimize,
    });
    config_mod.addIncludePath(b.path("src"));
    config_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    config_mod.link_libc = true;
    const config_zig = b.addObject(.{ .name = "config_zig", .root_module = config_mod });
    exe.root_module.addObject(config_zig);
    const cursor_mod = b.createModule(.{
        .root_source_file = b.path("src/cursor.zig"),
        .target = target,
        .optimize = optimize,
    });
    cursor_mod.addIncludePath(b.path("src"));
    cursor_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    cursor_mod.link_libc = true;
    const cursor_zig = b.addObject(.{ .name = "cursor_zig", .root_module = cursor_mod });
    exe.root_module.addObject(cursor_zig);
    const daemon_mod = b.createModule(.{
        .root_source_file = b.path("src/daemon.zig"),
        .target = target,
        .optimize = optimize,
    });
    daemon_mod.addIncludePath(b.path("src"));
    daemon_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    daemon_mod.link_libc = true;
    const daemon_zig = b.addObject(.{ .name = "daemon_zig", .root_module = daemon_mod });
    exe.root_module.addObject(daemon_zig);
    const data_mod = b.createModule(.{
        .root_source_file = b.path("src/data.zig"),
        .target = target,
        .optimize = optimize,
    });
    data_mod.addIncludePath(b.path("src"));
    data_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    data_mod.link_libc = true;
    const data_zig = b.addObject(.{ .name = "data_zig", .root_module = data_mod });
    exe.root_module.addObject(data_zig);
    const debug_mod = b.createModule(.{
        .root_source_file = b.path("src/debug.zig"),
        .target = target,
        .optimize = optimize,
    });
    debug_mod.addIncludePath(b.path("src"));
    debug_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    debug_mod.link_libc = true;
    const debug_zig = b.addObject(.{ .name = "debug_zig", .root_module = debug_mod });
    exe.root_module.addObject(debug_zig);
    const dict_mod = b.createModule(.{
        .root_source_file = b.path("src/dict.zig"),
        .target = target,
        .optimize = optimize,
    });
    dict_mod.addIncludePath(b.path("src"));
    dict_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    dict_mod.link_libc = true;
    const dict_zig = b.addObject(.{ .name = "dict_zig", .root_module = dict_mod });
    exe.root_module.addObject(dict_zig);
    const draw_mod = b.createModule(.{
        .root_source_file = b.path("src/draw.zig"),
        .target = target,
        .optimize = optimize,
    });
    draw_mod.addIncludePath(b.path("src"));
    draw_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    draw_mod.link_libc = true;
    const draw_zig = b.addObject(.{ .name = "draw_zig", .root_module = draw_mod });
    exe.root_module.addObject(draw_zig);
    const edit_mod = b.createModule(.{
        .root_source_file = b.path("src/edit.zig"),
        .target = target,
        .optimize = optimize,
    });
    edit_mod.addIncludePath(b.path("src"));
    edit_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    edit_mod.link_libc = true;
    const edit_zig = b.addObject(.{ .name = "edit_zig", .root_module = edit_mod });
    exe.root_module.addObject(edit_zig);
    const event_mod = b.createModule(.{
        .root_source_file = b.path("src/event.zig"),
        .target = target,
        .optimize = optimize,
    });
    event_mod.addIncludePath(b.path("src"));
    event_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    event_mod.link_libc = true;
    const event_zig = b.addObject(.{ .name = "event_zig", .root_module = event_mod });
    exe.root_module.addObject(event_zig);
    const files_mod = b.createModule(.{
        .root_source_file = b.path("src/files.zig"),
        .target = target,
        .optimize = optimize,
    });
    files_mod.addIncludePath(b.path("src"));
    files_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    files_mod.link_libc = true;
    const files_zig = b.addObject(.{ .name = "files_zig", .root_module = files_mod });
    exe.root_module.addObject(files_zig);
    const forkpty_mod = b.createModule(.{
        .root_source_file = b.path("src/forkpty.zig"),
        .target = target,
        .optimize = optimize,
    });
    forkpty_mod.addIncludePath(b.path("src"));
    forkpty_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    forkpty_mod.link_libc = true;
    const forkpty_zig = b.addObject(.{ .name = "forkpty_zig", .root_module = forkpty_mod });
    exe.root_module.addObject(forkpty_zig);
    const help_mod = b.createModule(.{
        .root_source_file = b.path("src/help.zig"),
        .target = target,
        .optimize = optimize,
    });
    help_mod.addIncludePath(b.path("src"));
    help_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    help_mod.link_libc = true;
    const help_zig = b.addObject(.{ .name = "help_zig", .root_module = help_mod });
    exe.root_module.addObject(help_zig);
    const history_mod = b.createModule(.{
        .root_source_file = b.path("src/history.zig"),
        .target = target,
        .optimize = optimize,
    });
    history_mod.addIncludePath(b.path("src"));
    history_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    history_mod.link_libc = true;
    const history_zig = b.addObject(.{ .name = "history_zig", .root_module = history_mod });
    exe.root_module.addObject(history_zig);
    const input_mod = b.createModule(.{
        .root_source_file = b.path("src/input.zig"),
        .target = target,
        .optimize = optimize,
    });
    input_mod.addIncludePath(b.path("src"));
    input_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    input_mod.link_libc = true;
    const input_zig = b.addObject(.{ .name = "input_zig", .root_module = input_mod });
    exe.root_module.addObject(input_zig);
    const line_mod = b.createModule(.{
        .root_source_file = b.path("src/line.zig"),
        .target = target,
        .optimize = optimize,
    });
    line_mod.addIncludePath(b.path("src"));
    line_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    line_mod.link_libc = true;
    const line_zig = b.addObject(.{ .name = "line_zig", .root_module = line_mod });
    exe.root_module.addObject(line_zig);
    const list_mod = b.createModule(.{
        .root_source_file = b.path("src/list.zig"),
        .target = target,
        .optimize = optimize,
    });
    list_mod.addIncludePath(b.path("src"));
    list_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    list_mod.link_libc = true;
    const list_zig = b.addObject(.{ .name = "list_zig", .root_module = list_mod });
    exe.root_module.addObject(list_zig);
    const log_mod = b.createModule(.{
        .root_source_file = b.path("src/log.zig"),
        .target = target,
        .optimize = optimize,
    });
    log_mod.addIncludePath(b.path("src"));
    log_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    log_mod.link_libc = true;
    const log_zig = b.addObject(.{ .name = "log_zig", .root_module = log_mod });
    exe.root_module.addObject(log_zig);
    const mapper_mod = b.createModule(.{
        .root_source_file = b.path("src/mapper.zig"),
        .target = target,
        .optimize = optimize,
    });
    mapper_mod.addIncludePath(b.path("src"));
    mapper_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    mapper_mod.link_libc = true;
    const mapper_zig = b.addObject(.{ .name = "mapper_zig", .root_module = mapper_mod });
    exe.root_module.addObject(mapper_zig);
    const math_mod = b.createModule(.{
        .root_source_file = b.path("src/math.zig"),
        .target = target,
        .optimize = optimize,
    });
    math_mod.addIncludePath(b.path("src"));
    math_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    math_mod.link_libc = true;
    const math_zig = b.addObject(.{ .name = "math_zig", .root_module = math_mod });
    exe.root_module.addObject(math_zig);
    const mccp_mod = b.createModule(.{
        .root_source_file = b.path("src/mccp.zig"),
        .target = target,
        .optimize = optimize,
    });
    mccp_mod.addIncludePath(b.path("src"));
    mccp_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    mccp_mod.link_libc = true;
    const mccp_zig = b.addObject(.{ .name = "mccp_zig", .root_module = mccp_mod });
    exe.root_module.addObject(mccp_zig);
    const memory_mod = b.createModule(.{
        .root_source_file = b.path("src/memory.zig"),
        .target = target,
        .optimize = optimize,
    });
    memory_mod.addIncludePath(b.path("src"));
    memory_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    memory_mod.link_libc = true;
    const memory_zig = b.addObject(.{ .name = "memory_zig", .root_module = memory_mod });
    exe.root_module.addObject(memory_zig);
    const misc_mod = b.createModule(.{
        .root_source_file = b.path("src/misc.zig"),
        .target = target,
        .optimize = optimize,
    });
    misc_mod.addIncludePath(b.path("src"));
    misc_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    misc_mod.link_libc = true;
    const misc_zig = b.addObject(.{ .name = "misc_zig", .root_module = misc_mod });
    exe.root_module.addObject(misc_zig);
    const missing_regex_mod = b.createModule(.{
        .root_source_file = b.path("src/missing_regex.zig"),
        .target = target,
        .optimize = optimize,
    });
    missing_regex_mod.addIncludePath(b.path("src"));
    missing_regex_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    missing_regex_mod.link_libc = true;
    const missing_regex_zig = b.addObject(.{ .name = "missing_regex_zig", .root_module = missing_regex_mod });
    exe.root_module.addObject(missing_regex_zig);
    const missing_sort_tmpl_mod = b.createModule(.{
        .root_source_file = b.path("src/missing_sort_tmpl.zig"),
        .target = target,
        .optimize = optimize,
    });
    missing_sort_tmpl_mod.addIncludePath(b.path("src"));
    missing_sort_tmpl_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    missing_sort_tmpl_mod.link_libc = true;
    const missing_sort_tmpl_zig = b.addObject(.{ .name = "missing_sort_tmpl_zig", .root_module = missing_sort_tmpl_mod });
    exe.root_module.addObject(missing_sort_tmpl_zig);
    const msdp_mod = b.createModule(.{
        .root_source_file = b.path("src/msdp.zig"),
        .target = target,
        .optimize = optimize,
    });
    msdp_mod.addIncludePath(b.path("src"));
    msdp_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    msdp_mod.link_libc = true;
    const msdp_zig = b.addObject(.{ .name = "msdp_zig", .root_module = msdp_mod });
    exe.root_module.addObject(msdp_zig);
    const nest_mod = b.createModule(.{
        .root_source_file = b.path("src/nest.zig"),
        .target = target,
        .optimize = optimize,
    });
    nest_mod.addIncludePath(b.path("src"));
    nest_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    nest_mod.link_libc = true;
    const nest_zig = b.addObject(.{ .name = "nest_zig", .root_module = nest_mod });
    exe.root_module.addObject(nest_zig);
    const net_mod = b.createModule(.{
        .root_source_file = b.path("src/net.zig"),
        .target = target,
        .optimize = optimize,
    });
    net_mod.addIncludePath(b.path("src"));
    net_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    net_mod.link_libc = true;
    const net_zig = b.addObject(.{ .name = "net_zig", .root_module = net_mod });
    exe.root_module.addObject(net_zig);
    const parse_mod = b.createModule(.{
        .root_source_file = b.path("src/parse.zig"),
        .target = target,
        .optimize = optimize,
    });
    parse_mod.addIncludePath(b.path("src"));
    parse_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    parse_mod.link_libc = true;
    const parse_zig = b.addObject(.{ .name = "parse_zig", .root_module = parse_mod });
    exe.root_module.addObject(parse_zig);
    const path_mod = b.createModule(.{
        .root_source_file = b.path("src/path.zig"),
        .target = target,
        .optimize = optimize,
    });
    path_mod.addIncludePath(b.path("src"));
    path_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    path_mod.link_libc = true;
    const path_zig = b.addObject(.{ .name = "path_zig", .root_module = path_mod });
    exe.root_module.addObject(path_zig);
    const port_mod = b.createModule(.{
        .root_source_file = b.path("src/port.zig"),
        .target = target,
        .optimize = optimize,
    });
    port_mod.addIncludePath(b.path("src"));
    port_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    port_mod.link_libc = true;
    const port_zig = b.addObject(.{ .name = "port_zig", .root_module = port_mod });
    exe.root_module.addObject(port_zig);
    const regex_mod = b.createModule(.{
        .root_source_file = b.path("src/regex.zig"),
        .target = target,
        .optimize = optimize,
    });
    regex_mod.addIncludePath(b.path("src"));
    regex_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    regex_mod.link_libc = true;
    const regex_zig = b.addObject(.{ .name = "regex_zig", .root_module = regex_mod });
    exe.root_module.addObject(regex_zig);
    const scan_mod = b.createModule(.{
        .root_source_file = b.path("src/scan.zig"),
        .target = target,
        .optimize = optimize,
    });
    scan_mod.addIncludePath(b.path("src"));
    scan_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    scan_mod.link_libc = true;
    const scan_zig = b.addObject(.{ .name = "scan_zig", .root_module = scan_mod });
    exe.root_module.addObject(scan_zig);
    const screen_mod = b.createModule(.{
        .root_source_file = b.path("src/screen.zig"),
        .target = target,
        .optimize = optimize,
    });
    screen_mod.addIncludePath(b.path("src"));
    screen_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    screen_mod.link_libc = true;
    const screen_zig = b.addObject(.{ .name = "screen_zig", .root_module = screen_mod });
    exe.root_module.addObject(screen_zig);
    const session_mod = b.createModule(.{
        .root_source_file = b.path("src/session.zig"),
        .target = target,
        .optimize = optimize,
    });
    session_mod.addIncludePath(b.path("src"));
    session_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    session_mod.link_libc = true;
    const session_zig = b.addObject(.{ .name = "session_zig", .root_module = session_mod });
    exe.root_module.addObject(session_zig);
    const show_mod = b.createModule(.{
        .root_source_file = b.path("src/show.zig"),
        .target = target,
        .optimize = optimize,
    });
    show_mod.addIncludePath(b.path("src"));
    show_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    show_mod.link_libc = true;
    const show_zig = b.addObject(.{ .name = "show_zig", .root_module = show_mod });
    exe.root_module.addObject(show_zig);
    const sort_mod = b.createModule(.{
        .root_source_file = b.path("src/sort.zig"),
        .target = target,
        .optimize = optimize,
    });
    sort_mod.addIncludePath(b.path("src"));
    sort_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    sort_mod.link_libc = true;
    const sort_zig = b.addObject(.{ .name = "sort_zig", .root_module = sort_mod });
    exe.root_module.addObject(sort_zig);
    const split_mod = b.createModule(.{
        .root_source_file = b.path("src/split.zig"),
        .target = target,
        .optimize = optimize,
    });
    split_mod.addIncludePath(b.path("src"));
    split_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    split_mod.link_libc = true;
    const split_zig = b.addObject(.{ .name = "split_zig", .root_module = split_mod });
    exe.root_module.addObject(split_zig);
    const ssl_mod = b.createModule(.{
        .root_source_file = b.path("src/ssl.zig"),
        .target = target,
        .optimize = optimize,
    });
    ssl_mod.addIncludePath(b.path("src"));
    ssl_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    ssl_mod.link_libc = true;
    const ssl_zig = b.addObject(.{ .name = "ssl_zig", .root_module = ssl_mod });
    exe.root_module.addObject(ssl_zig);
    const string_mod = b.createModule(.{
        .root_source_file = b.path("src/string.zig"),
        .target = target,
        .optimize = optimize,
    });
    string_mod.addIncludePath(b.path("src"));
    string_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    string_mod.link_libc = true;
    const string_zig = b.addObject(.{ .name = "string_zig", .root_module = string_mod });
    exe.root_module.addObject(string_zig);
    const substitute_mod = b.createModule(.{
        .root_source_file = b.path("src/substitute.zig"),
        .target = target,
        .optimize = optimize,
    });
    substitute_mod.addIncludePath(b.path("src"));
    substitute_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    substitute_mod.link_libc = true;
    const substitute_zig = b.addObject(.{ .name = "substitute_zig", .root_module = substitute_mod });
    exe.root_module.addObject(substitute_zig);
    const system_mod = b.createModule(.{
        .root_source_file = b.path("src/system.zig"),
        .target = target,
        .optimize = optimize,
    });
    system_mod.addIncludePath(b.path("src"));
    system_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    system_mod.link_libc = true;
    const system_zig = b.addObject(.{ .name = "system_zig", .root_module = system_mod });
    exe.root_module.addObject(system_zig);
    const tables_mod = b.createModule(.{
        .root_source_file = b.path("src/tables.zig"),
        .target = target,
        .optimize = optimize,
    });
    tables_mod.addIncludePath(b.path("src"));
    tables_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    tables_mod.link_libc = true;
    const tables_zig = b.addObject(.{ .name = "tables_zig", .root_module = tables_mod });
    exe.root_module.addObject(tables_zig);
    const telopt_client_mod = b.createModule(.{
        .root_source_file = b.path("src/telopt_client.zig"),
        .target = target,
        .optimize = optimize,
    });
    telopt_client_mod.addIncludePath(b.path("src"));
    telopt_client_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    telopt_client_mod.link_libc = true;
    const telopt_client_zig = b.addObject(.{ .name = "telopt_client_zig", .root_module = telopt_client_mod });
    exe.root_module.addObject(telopt_client_zig);
    const telopt_server_mod = b.createModule(.{
        .root_source_file = b.path("src/telopt_server.zig"),
        .target = target,
        .optimize = optimize,
    });
    telopt_server_mod.addIncludePath(b.path("src"));
    telopt_server_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    telopt_server_mod.link_libc = true;
    const telopt_server_zig = b.addObject(.{ .name = "telopt_server_zig", .root_module = telopt_server_mod });
    exe.root_module.addObject(telopt_server_zig);
    const terminal_mod = b.createModule(.{
        .root_source_file = b.path("src/terminal.zig"),
        .target = target,
        .optimize = optimize,
    });
    terminal_mod.addIncludePath(b.path("src"));
    terminal_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    terminal_mod.link_libc = true;
    const terminal_zig = b.addObject(.{ .name = "terminal_zig", .root_module = terminal_mod });
    exe.root_module.addObject(terminal_zig);
    const test_mod = b.createModule(.{
        .root_source_file = b.path("src/test.zig"),
        .target = target,
        .optimize = optimize,
    });
    test_mod.addIncludePath(b.path("src"));
    test_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    test_mod.link_libc = true;
    const test_zig = b.addObject(.{ .name = "test_zig", .root_module = test_mod });
    exe.root_module.addObject(test_zig);
    const text_mod = b.createModule(.{
        .root_source_file = b.path("src/text.zig"),
        .target = target,
        .optimize = optimize,
    });
    text_mod.addIncludePath(b.path("src"));
    text_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    text_mod.link_libc = true;
    const text_zig = b.addObject(.{ .name = "text_zig", .root_module = text_mod });
    exe.root_module.addObject(text_zig);
    const tokenize_mod = b.createModule(.{
        .root_source_file = b.path("src/tokenize.zig"),
        .target = target,
        .optimize = optimize,
    });
    tokenize_mod.addIncludePath(b.path("src"));
    tokenize_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    tokenize_mod.link_libc = true;
    const tokenize_zig = b.addObject(.{ .name = "tokenize_zig", .root_module = tokenize_mod });
    exe.root_module.addObject(tokenize_zig);
    const trigger_mod = b.createModule(.{
        .root_source_file = b.path("src/trigger.zig"),
        .target = target,
        .optimize = optimize,
    });
    trigger_mod.addIncludePath(b.path("src"));
    trigger_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    trigger_mod.link_libc = true;
    const trigger_zig = b.addObject(.{ .name = "trigger_zig", .root_module = trigger_mod });
    exe.root_module.addObject(trigger_zig);
    const update_a_mod = b.createModule(.{
        .root_source_file = b.path("src/update_a.zig"),
        .target = target,
        .optimize = optimize,
    });
    update_a_mod.addIncludePath(b.path("src"));
    update_a_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    update_a_mod.link_libc = true;
    const update_a_zig = b.addObject(.{ .name = "update_a_zig", .root_module = update_a_mod });
    exe.root_module.addObject(update_a_zig);
    const update_b_mod = b.createModule(.{
        .root_source_file = b.path("src/update_b.zig"),
        .target = target,
        .optimize = optimize,
    });
    update_b_mod.addIncludePath(b.path("src"));
    update_b_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    update_b_mod.link_libc = true;
    const update_b_zig = b.addObject(.{ .name = "update_b_zig", .root_module = update_b_mod });
    exe.root_module.addObject(update_b_zig);
    const utf8_mod = b.createModule(.{
        .root_source_file = b.path("src/utf8.zig"),
        .target = target,
        .optimize = optimize,
    });
    utf8_mod.addIncludePath(b.path("src"));
    utf8_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    utf8_mod.link_libc = true;
    const utf8_zig = b.addObject(.{ .name = "utf8_zig", .root_module = utf8_mod });
    exe.root_module.addObject(utf8_zig);
    const utils_mod = b.createModule(.{
        .root_source_file = b.path("src/utils.zig"),
        .target = target,
        .optimize = optimize,
    });
    utils_mod.addIncludePath(b.path("src"));
    utils_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    utils_mod.link_libc = true;
    const utils_zig = b.addObject(.{ .name = "utils_zig", .root_module = utils_mod });
    exe.root_module.addObject(utils_zig);
    const variable_mod = b.createModule(.{
        .root_source_file = b.path("src/variable.zig"),
        .target = target,
        .optimize = optimize,
    });
    variable_mod.addIncludePath(b.path("src"));
    variable_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    variable_mod.link_libc = true;
    const variable_zig = b.addObject(.{ .name = "variable_zig", .root_module = variable_mod });
    exe.root_module.addObject(variable_zig);
    const vt102_a_mod = b.createModule(.{
        .root_source_file = b.path("src/vt102_a.zig"),
        .target = target,
        .optimize = optimize,
    });
    vt102_a_mod.addIncludePath(b.path("src"));
    vt102_a_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    vt102_a_mod.link_libc = true;
    const vt102_a_zig = b.addObject(.{ .name = "vt102_a_zig", .root_module = vt102_a_mod });
    exe.root_module.addObject(vt102_a_zig);
    const vt102_b_mod = b.createModule(.{
        .root_source_file = b.path("src/vt102_b.zig"),
        .target = target,
        .optimize = optimize,
    });
    vt102_b_mod.addIncludePath(b.path("src"));
    vt102_b_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    vt102_b_mod.link_libc = true;
    const vt102_b_zig = b.addObject(.{ .name = "vt102_b_zig", .root_module = vt102_b_mod });
    exe.root_module.addObject(vt102_b_zig);

    const test_runner_mod = b.createModule(.{
        .root_source_file = b.path("src/test_runner.zig"),
        .target = target,
        .optimize = optimize,
    });
    test_runner_mod.addIncludePath(b.path("src"));
    test_runner_mod.addIncludePath(.{ .cwd_relative = "/opt/homebrew/include" });
    test_runner_mod.link_libc = true;

    const unit_tests = b.addTest(.{
        .name = "unit_tests",
        .root_module = test_runner_mod,
    });

    unit_tests.root_module.addCSourceFiles(.{
        .files = src_files,
        .flags = c_flags,
    });
    unit_tests.root_module.addIncludePath(b.path("src"));
    unit_tests.root_module.linkSystemLibrary("pcre2-8", .{});
    unit_tests.root_module.linkSystemLibrary("z", .{});
    unit_tests.root_module.linkSystemLibrary("gnutls", .{});
    unit_tests.root_module.linkSystemLibrary("util", .{});

    const run_unit_tests = b.addRunArtifact(unit_tests);
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_unit_tests.step);

    b.installArtifact(exe);
}
