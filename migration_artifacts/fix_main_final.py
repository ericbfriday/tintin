import re

file_path = "src/main.zig"
with open(file_path, "r") as f:
    content = f.read()

# 1. Replace the signal block
old_signal_block = """    const sig_err = @as(?*const fn (c_int) callconv(.c) void, @ptrFromInt(@as(usize, @bitCast(@as(isize, -1)))));
    if (signal(SIGTERM, trap_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGTERM"))))))));
    }
    if (signal(SIGSEGV, trap_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGSEGV"))))))));
    }
    if (signal(SIGHUP, trap_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGHUP"))))))));
    }
    if (signal(SIGABRT, abort_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGABRT"))))))));
    }
    if (signal(SIGFPE, fpe_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGFPE"))))))));
    }
    if (signal(SIGTSTP, suspend_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGTSTP"))))))));
    }
    if (signal(SIGUSR1, usr_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGUSR1"))))))));
    }
    if (signal(SIGUSR2, usr_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGUSR1"))))))));
    }
    if (signal(SIGWINCH, winch_handler) == sig_err) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGWINCH"))))))));
    }"""

new_signal_block = """    const sig_err_val = @as(usize, @bitCast(@as(isize, -1)));
    if (@intFromPtr(signal(SIGTERM, trap_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGTERM"))))))));
    }
    if (@intFromPtr(signal(SIGSEGV, trap_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGSEGV"))))))));
    }
    if (@intFromPtr(signal(SIGHUP, trap_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGHUP"))))))));
    }
    if (@intFromPtr(signal(SIGABRT, abort_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGABRT"))))))));
    }
    if (@intFromPtr(signal(SIGFPE, fpe_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGFPE"))))))));
    }
    if (@intFromPtr(signal(SIGTSTP, suspend_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGTSTP"))))))));
    }
    if (@intFromPtr(signal(SIGUSR1, usr_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGUSR1"))))))));
    }
    if (@intFromPtr(signal(SIGUSR2, usr_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGUSR1"))))))));
    }
    if (@intFromPtr(signal(SIGWINCH, winch_handler)) == sig_err_val) {
        syserr_fatal(-@as(c_int, 1), @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("signal SIGWINCH"))))))));
    }"""

if old_signal_block in content:
    content = content.replace(old_signal_block, new_signal_block)
    print("Replaced signal block successfully.")
else:
    print("WARNING: Could not find old signal block in file content.")

# 2. Insert gtd_zig definition in main after init_tintin(greeting);
old_init_call = "    init_tintin(greeting);"
new_init_call = "    init_tintin(greeting);\n    const gtd_zig: *struct_tintin_data = @ptrCast(gtd);"
content = content.replace(old_init_call, new_init_call, 1)

# 3. Insert gtd_zig definition in init_tintin after allocating gtd
old_alloc_call = "    gtd = @ptrCast(@alignCast(calloc(1, @sizeOf(struct_tintin_data))));"
new_alloc_call = "    gtd = @ptrCast(@alignCast(calloc(1, @sizeOf(struct_tintin_data))));\n    const gtd_zig: *struct_tintin_data = @ptrCast(gtd);"
content = content.replace(old_alloc_call, new_alloc_call, 1)

# 4. Replace gtd.*.vars and gtd.*.cmds with gtd_zig.vars and gtd_zig.cmds in the main and init_tintin functions
# Let's target the exact text of both functions (from line 7562 to 8006 approx). We can just do a global replacement, since these variables aren't used elsewhere in this module, but let's be careful and replace only vars and cmds fields.
content = content.replace("gtd.*.vars", "gtd_zig.vars")
content = content.replace("gtd.*.cmds", "gtd_zig.cmds")

with open(file_path, "w") as f:
    f.write(content)
print("Applied all modifications to src/main.zig.")
