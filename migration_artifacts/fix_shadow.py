import re

def fix_shadowing(filename, find_str, replace_str):
    with open(filename, 'r') as f:
        content = f.read()
    content = content.replace(find_str, replace_str)
    with open(filename, 'w') as f:
        f.write(content)

def comment_out(filename, line_regex):
    with open(filename, 'r') as f:
        content = f.read()
    content = re.sub(line_regex, lambda m: '// ' + m.group(0), content)
    with open(filename, 'w') as f:
        f.write(content)

# mapper.zig
# src/mapper.zig:25338:11: error: local constant shadows declaration of 'gtd'
# src/mapper.zig:25667:11: error: local constant shadows declaration of 'gtd'
fix_shadowing('src/mapper.zig', 'const gtd: *struct_tintin_data = @ptrCast(gtd);', 'const gtd_local: *struct_tintin_data = @ptrCast(gtd);')
# Actually wait, if we rename it to gtd_local, we need to replace all uses of gtd in that function!
# A better way for gtd is: `const gtd` shadows `pub extern var gtd`. The translated code probably did: `const gtd = gtd;`
# Wait, if we just remove `const gtd: *struct_tintin_data = @ptrCast(gtd);`, the code will use the global `gtd`. BUT the global is `[*c]struct_tintin_data`.
