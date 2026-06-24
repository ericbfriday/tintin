import os

def fix_file(filepath):
    if not os.path.exists(filepath):
        return
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Simple replace for the known problematic lines
    content = content.replace(
        "@ptrCast(@alignCast(&arg2))", 
        "@as([*c]u8, @ptrCast(@alignCast(&arg2)))"
    )
    content = content.replace(
        "@ptrCast(@alignCast(&name))", 
        "@as([*c]u8, @ptrCast(@alignCast(&name)))"
    )
    
    
    with open(filepath, 'w') as f:
        f.write(content)

def fix_darwin_fd_set(filepath):
    if not os.path.exists(filepath):
        return
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Replace the body of __darwin_fd_set with a simpler, working version
    pattern = "pub inline fn __darwin_fd_set(arg__fd: c_int, _p: [*c]struct_fd_set) void {"
    new_body = """pub inline fn __darwin_fd_set(_fd: c_int, _p: [*c]struct_fd_set) void {
    const fd_val: usize = @intCast(_fd);
    _p[0].fds_bits[fd_val / 32] |= @as(c_int, @intCast(@as(u32, 1) << @intCast(fd_val % 32)));
}
pub inline fn __darwin_fd_clr(_fd: c_int, _p: [*c]struct_fd_set) void {
    const fd_val: usize = @intCast(_fd);
    _p[0].fds_bits[fd_val / 32] &= ~@as(c_int, @intCast(@as(u32, 1) << @intCast(fd_val % 32)));
}
pub inline fn __darwin_fd_isset(_fd: c_int, _p: [*c]const struct_fd_set) c_int {
    const fd_val: usize = @intCast(_fd);
    return if ((_p[0].fds_bits[fd_val / 32] & @as(c_int, @intCast(@as(u32, 1) << @intCast(fd_val % 32)))) != 0) 1 else 0;
}
// """
    # We will just replace all instances of __darwin_fd_set with our custom one!
    import re
    content = re.sub(r'pub inline fn __darwin_fd_set\(arg__fd: c_int, _p: \[\*c\]struct_fd_set\) void \{.*?^\}', new_body, content, flags=re.DOTALL|re.MULTILINE)
    content = re.sub(r'pub inline fn __darwin_fd_clr\(arg__fd: c_int, _p: \[\*c\]struct_fd_set\) void \{.*?^\}', "", content, flags=re.DOTALL|re.MULTILINE)
    content = re.sub(r'pub inline fn __darwin_fd_isset\(arg__fd: c_int, arg__p: \[\*c\]const struct_fd_set\) c_int \{.*?^\}', "", content, flags=re.DOTALL|re.MULTILINE)

    # Remove unused local constants
    content = re.sub(r'[ \t]*const extern_local_kill = struct \{[^}]+\};', "", content)
    content = re.sub(r'[ \t]*const extern_local_get_daemon_dir = struct \{[^}]+\};', "", content)
    content = re.sub(r'[ \t]*const extern_local_fcntl = struct \{[^}]+\};', "", content)
    content = re.sub(r'[ \t]*const extern_local_process_port_input = struct \{[^}]+\};', "", content)

    with open(filepath, 'w') as f:
        f.write(content)

fix_file("src/path.zig")
fix_file("src/data.zig")
fix_darwin_fd_set("src/missing_phase8.zig")
print("Casts fixed.")
