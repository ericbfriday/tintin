with open('fix_absolute_final.py', 'r') as f:
    text = f.read()

# remove the broken regex replacements
text = text.replace("""    fd_set_repl = \"\"\"pub inline fn __darwin_fd_set(arg__fd: c_int, _p: [*c]struct_fd_set) void {
    const idx = @as(usize, @intCast(arg__fd)) / 32;
    const bit = @as(u5, @intCast(@as(usize, @intCast(arg__fd)) % 32));
    _p.*.fds_bits[idx] |= @as(c_int, 1) << bit;
}\"\"\"
    content = re.sub(r'pub inline fn __darwin_fd_set\\([^)]*\\)\\s*void\\s*\\{[^}]*\\}', fd_set_repl, content, flags=re.MULTILINE|re.DOTALL)

    fd_clr_repl = \"\"\"pub inline fn __darwin_fd_clr(arg__fd: c_int, _p: [*c]struct_fd_set) void {
    const idx = @as(usize, @intCast(arg__fd)) / 32;
    const bit = @as(u5, @intCast(@as(usize, @intCast(arg__fd)) % 32));
    _p.*.fds_bits[idx] &= ~(@as(c_int, 1) << bit);
}\"\"\"
    content = re.sub(r'pub inline fn __darwin_fd_clr\\([^)]*\\)\\s*void\\s*\\{[^}]*\\}', fd_clr_repl, content, flags=re.MULTILINE|re.DOTALL)

    fd_isset_repl = \"\"\"pub inline fn __darwin_fd_isset(arg__fd: c_int, _p: anytype) c_int {
    const idx = @as(usize, @intCast(arg__fd)) / 32;
    const bit = @as(u5, @intCast(@as(usize, @intCast(arg__fd)) % 32));
    return if ((_p.*.fds_bits[idx] & (@as(c_int, 1) << bit)) != 0) 1 else 0;
}\"\"\"
    content = re.sub(r'pub inline fn __darwin_fd_isset\\([^)]*\\)\\s*c_int\\s*\\{[^}]*\\}', fd_isset_repl, content, flags=re.MULTILINE|re.DOTALL)""", '')

# Add a line-by-line processor for fd functions instead
new_code = """
    # 12. Fix __darwin_fd functions
    lines = content.split('\\n')
    new_lines = []
    skip = False
    for line in lines:
        if line.startswith('pub inline fn __darwin_fd_set('):
            skip = True
            new_lines.append('''pub inline fn __darwin_fd_set(arg__fd: c_int, _p: anytype) void {
    const idx = @as(usize, @intCast(arg__fd)) / 32;
    const bit = @as(u5, @intCast(@as(usize, @intCast(arg__fd)) % 32));
    _p.*.fds_bits[idx] |= @as(c_int, 1) << bit;
}''')
        elif line.startswith('pub inline fn __darwin_fd_clr('):
            skip = True
            new_lines.append('''pub inline fn __darwin_fd_clr(arg__fd: c_int, _p: anytype) void {
    const idx = @as(usize, @intCast(arg__fd)) / 32;
    const bit = @as(u5, @intCast(@as(usize, @intCast(arg__fd)) % 32));
    _p.*.fds_bits[idx] &= ~(@as(c_int, 1) << bit);
}''')
        elif line.startswith('pub inline fn __darwin_fd_isset('):
            skip = True
            new_lines.append('''pub inline fn __darwin_fd_isset(arg__fd: c_int, _p: anytype) c_int {
    const idx = @as(usize, @intCast(arg__fd)) / 32;
    const bit = @as(u5, @intCast(@as(usize, @intCast(arg__fd)) % 32));
    return if ((_p.*.fds_bits[idx] & (@as(c_int, 1) << bit)) != 0) 1 else 0;
}''')
        elif skip and line == '}':
            skip = False
        elif not skip:
            new_lines.append(line)
    
    content = '\\n'.join(new_lines)
"""

insert_pos = text.find("    with open(filepath, 'w') as f:")
text = text[:insert_pos] + new_code + text[insert_pos:]

with open('fix_absolute_final.py', 'w') as f:
    f.write(text)

