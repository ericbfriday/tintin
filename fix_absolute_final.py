import re
import sys
import os

def fix_file_final(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # 1. string slices
    content = re.sub(r'@constCast\("([^"]*)"\)', r'@as([*c]u8, @ptrCast(@constCast("\1")))', content)
    

    # 2. .list[...]
    prefixes = [
        'gtd.*.ses.*',
        'root.*.ses.*',
        'gtd.*',
        'ses.*.screen.*',
        'node.*',
        'node.*.root.*',
        'root.*',
        'newses.*',
        'gts.*',
        'ses.*'
    ]
    def repl_list(m):
        full = m.group(0)
        idx = m.group(2)
        for p in prefixes:
            if full.startswith(p + ".list["):
                if p == 'node.*.root.*' or p == 'root.*':
                    return f"@as([*c][*c]struct_listnode, @ptrCast(&{p}.list))[{idx}]"
                else:
                    return f"@as([*c][*c]struct_listroot, @ptrCast(&{p}.list))[{idx}]"
        return full
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.list\[([^\]]+)\]', repl_list, content)
    # 3. .val32[...]
    def repl_val32(m):
        base = m.group(1)
        idx = m.group(2)
        return f'@as([*c]c_int, @ptrCast(@constCast(&{base}.val32)))[{idx}]'
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.val32\[([^\]]+)\]', repl_val32, content)

    # 4. Unused structs (Delete them completely to avoid shadowing)
    content = re.sub(r'(const extern_local_[a-zA-Z0-9_]+ = struct \{[^}]+\};\s*(?:_\s*=\s*&extern_local_[a-zA-Z0-9_]+;\s*)?)', '', content)

    # 5. Remove extern_local prefixes from function calls
    content = re.sub(r'extern_local_[a-zA-Z0-9_]+\.', '', content)



    # 6. vars, cmds, match variadic decay
    def repl_vars(m):
        arr = m.group(1)
        idx = m.group(2)
        following = m.group(3)
        if following.lstrip().startswith('='):
            return m.group(0) # LHS, do not cast
        ptr_type = "[*c]usize" if arr == "match" else "[*c]u8"
        cast = f"@ptrCast(&gtd.*.{arr})" if arr == "match" else f"@ptrCast(@constCast(&gtd.*.{arr}[{idx}]))"
        if arr == "match":
            return f'@as({ptr_type}, {cast})[{idx}]{following}'
        else:
            return f'@as({ptr_type}, {cast}){following}'
    content = re.sub(r'gtd\.\*\.(vars|cmds|match)\[([^\]]+)\](.*?\n)', repl_vars, content)

    # 7. script_stack array pointer index
    content = re.sub(
        r'gtd\.\*\.script_stack\[([^\]]+)\]',
        r'@as([*c][*c]struct_scriptroot, @ptrCast(&gtd.*.script_stack))[\1]',
        content
    )

    # 7. args array pointer index
    content = re.sub(
        r'gtd\.\*\.args\[@bitCast\(@as\(isize, @intCast\((.*?)\)\)\)\]',
        r'@as([*c]c_int, @ptrCast(&gtd.*.args))[@intCast(\1)]',
        content
    )

    # 7. Fix command_ref array indexing
    content = re.sub(
        r'gtd\.\*\.command_ref\[@bitCast\(@as\(isize, @intCast\((.*?)\)\)\)\]',
        r'@as([*c]c_ushort, @ptrCast(&gtd.*.command_ref))[@intCast(\1)]',
        content
    )

    # 8. Fix array access for sav_row, sav_col
    content = re.sub(
        r'gtd\.\*\.screen\.\*\.(sav_row|sav_col)\[([^\]]+)\]',
        r'@as([*c]c_int, @ptrCast(&gtd.*.screen.*.\1))[\2]',
        content
    )

    # 9. Fix array access for telopt_flag
    content = re.sub(
        r'ses\.\*\.telopt_flag\[([^\]]+)\]',
        r'@as([*c]c_int, @ptrCast(&ses.*.telopt_flag))[\1]',
        content
    )

    # 10. Fix @ptrCast discards const qualifier in struct initializers by replacing @alignCast with @constCast
    content = re.sub(
        r'@ptrCast\(@alignCast\(&@as\(\[([0-9]+)\]u8,\s*\[\1\]u8\{',
        r'@ptrCast(@constCast(&@as([\1]u8, [\1]u8{',
        content
    )

    # 11. Remove demoted variadic declarations and duplicate vasprintf ONLY in nest.zig and command.zig
    if filepath.endswith("nest.zig"):
        content = re.sub(r'pub extern fn (set_nest_node_ses|add_nest_node_ses|set_nest_node|add_nest_node)\([^)]*\).*;', '', content)
    if filepath.endswith("command.zig"):
        content = re.sub(r'pub extern fn (execute|command)\([^)]*\).*;', '', content)

    if filepath.endswith("telopt_client.zig"):
        content = re.sub(r'pub extern fn client_telopt_debug\([^)]*\).*;', '', content)
        print("MATCHED telopt_client.zig!")
        wrapper = """
pub export fn client_telopt_debug(ses: [*c]struct_session, format: [*c]const u8, ...) void {
    var args = @cVaStart();
    var buf: [*c]u8 = null;
    if (vasprintf(&buf, format, args) != -1) {
        client_telopt_debug_inner(ses, buf);
        @import("std").c.free(buf);
    }
    @cVaEnd(&args);
}
"""
        if "pub export fn client_telopt_debug(" not in content:
            print("ADDING client wrapper!")
            content += "\n" + wrapper

    if filepath.endswith("telopt_server.zig"):
        content = re.sub(r'pub extern fn server_telopt_debug\([^)]*\).*;', '', content)
        wrapper = """
pub export fn server_telopt_debug(ses: [*c]struct_session, format: [*c]const u8, ...) void {
    var args = @cVaStart();
    var buf: [*c]u8 = null;
    if (vasprintf(&buf, format, args) != -1) {
        server_telopt_debug_inner(ses, buf);
        @import("std").c.free(buf);
    }
    @cVaEnd(&args);
}
"""
        if "pub export fn server_telopt_debug(" not in content:
            content += "\n" + wrapper


    # 12. Fix __darwin_fd_set, __darwin_fd_clr, __darwin_fd_isset



    # 12. Fix __darwin_fd functions
    lines = content.split('\n')
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
    
    # 13. Fix invalid LHS


    content = '\n'.join(new_lines)

    # Fix array indexing issues that expect [100][*c]u8 or [50000]u8
    content = content.replace("gtd.*.cmds[@as(c_int, 0)]", "@as([*c][*c]u8, @ptrCast(&gtd.*.cmds))[0]")
    content = re.sub(r'gtd\.\*\.macro_buf\[@as\(c_int,\s*([^\]]+)\)\]', r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[\1]', content)
    # Fix macro_buf array indexing with bitCast variables
    content = re.sub(r'gtd\.\*\.macro_buf\[@bitCast\(@as\(isize,\s*@intCast\(([^)]+)\)\)\)\]', r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[@bitCast(@as(usize, @intCast(\1)))]', content)

    # 13. Generic fix for invalid LHS cast of val16
    content = re.sub(r'@as\(c_int,\s*(.*?\.val16\[.*?\])\)\s*\+=', r'\1 +=', content)
    content = re.sub(r'@as\(c_int,\s*(.*?\.val16\[.*?\])\)\s*-=', r'\1 -=', content)



    # Final targeted fix for draw.zig val16 read array indexing
    content = re.sub(
        r'(@as\(\[\*c\]\[\*c\]struct_listnode, @ptrCast\(&node\.\*\.root\.\*\.list\)\)\[@bitCast\(@as\(isize,\s*@intCast\(([^)]+)\)\)\)\]\.\*\.unnamed_0\.val16)\[@as\(c_int,\s*(\d+)\)\]',
        r'@as([*c]c_short, @ptrCast(&\1))[\3]',
        content
    )

    # Final targeted fix for input.zig macro_buf read array indexing with complex expressions
    content = re.sub(
        r'gtd\.\*\.macro_buf\[@bitCast\(@as\(isize,\s*@intCast\((len - @as\(c_int,\s*1\))\)\)\)\]',
        r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[@bitCast(@as(usize, @intCast(\1)))]',
        content
    )



    # Final targeted fix for input.zig macro_buf read array indexing with len + 1 expression
    content = re.sub(
        r'gtd\.\*\.macro_buf\[@bitCast\(@as\(isize,\s*@intCast\((len \+ @as\(c_int,\s*1\))\)\)\)\]',
        r'@as([*c]u8, @ptrCast(&gtd.*.macro_buf))[@bitCast(@as(usize, @intCast(\1)))]',
        content
    )


    with open(filepath, 'w') as f:
        f.write(content)

if __name__ == "__main__":
    for f in sys.argv[1:]:
        fix_file_final(f)



    # also for -=, ++, --

    
    