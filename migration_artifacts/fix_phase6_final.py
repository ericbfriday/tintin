import os
import re

files_to_patch = [
    "src/trigger.zig",
    "src/substitute.zig",
    "src/event.zig",
    "src/regex.zig",
    "src/tokenize.zig",
    "src/scan.zig",
    "src/sort.zig",
    "src/split.zig"
]

def patch_file(filepath):
    if not os.path.exists(filepath):
        return
        
    with open(filepath, 'r') as f:
        content = f.read()

    # Restore the [0] fixes for all arrays accessed through C pointers
    content = content.replace('(&gtd.*.vars)[', 'gtd[0].vars[')
    content = content.replace('(&gtd.*.cmds)[', 'gtd[0].cmds[')
    content = content.replace('(&gtd.*.screen.*.sav_col)[', 'gtd[0].screen[0].sav_col[')
    content = content.replace('(&gtd.*.screen.*.sav_row)[', 'gtd[0].screen[0].sav_row[')
    content = content.replace('(&gtd.*.script_stack)[', 'gtd[0].script_stack[')
    content = content.replace('(&node.*.unnamed_0.val16)[', 'node[0].unnamed_0.val16[')
    content = content.replace('(&gtd.*.line)[', 'gtd[0].line[')
    content = content.replace('(&ses.*.list)[', 'ses[0].list[')
    content = content.replace('(&gtd.*.match)[', 'gtd[0].match[')
    content = content.replace('(&gtd.*.command_ref)[', 'gtd[0].command_ref[')
    content = content.replace('(&node.*.unnamed_0.val32)[', 'node[0].unnamed_0.val32[')

    # Apply them to any remaining un-patched ones
    content = content.replace('gtd.*.vars[', 'gtd[0].vars[')
    content = content.replace('gtd.*.cmds[', 'gtd[0].cmds[')
    content = content.replace('gtd.*.screen.*.sav_col[', 'gtd[0].screen[0].sav_col[')
    content = content.replace('gtd.*.screen.*.sav_row[', 'gtd[0].screen[0].sav_row[')
    content = content.replace('gtd.*.script_stack[', 'gtd[0].script_stack[')
    content = content.replace('node.*.unnamed_0.val16[', 'node[0].unnamed_0.val16[')
    content = content.replace('gtd.*.line[', 'gtd[0].line[')
    content = content.replace('ses.*.list[', 'ses[0].list[')
    content = content.replace('gtd.*.match[', 'gtd[0].match[')
    content = content.replace('gtd.*.command_ref[', 'gtd[0].command_ref[')
    content = content.replace('node.*.unnamed_0.val32[', 'node[0].unnamed_0.val32[')

    # Fix regex.zig regex syntax error caused by bad part 3 script
    # It produced: if (@as(c_int, 3))))), pto
    # We should restore the original files and start over to be safe, but since I don't have git checkout...
    # Let me just fix the regex.zig syntax error manually:
    content = content.replace('get_regex_range(pti + @as(usize, if (@as(c_int, 3))))), pto, null, null)) 1 else 0);', 'get_regex_range(pti + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 3))))), pto, null, null));')
    
    # 2. trigger.zig bool cast
    # Actually part 3 already did this: `+ @as(usize, if (@as(c_int, node.*.arg1.*) == @as(c_int, '~')) 1 else 0);`
    # We'll just leave it since it worked.
    
    # Let's fix `regex.zig:8371:36: error: expected type '[100]c_int', found 'c_int'`
    # `break :blk tmp;`
    # What was this? It was `gtd[0].info[@as(usize, ...)]`.
    # Let's add `gtd.*.info[` -> `gtd[0].info[` just in case.
    content = content.replace('gtd.*.info[', 'gtd[0].info[')
    content = content.replace('(&gtd.*.info)[', 'gtd[0].info[')

    with open(filepath, 'w') as f:
        f.write(content)

for f in files_to_patch:
    patch_file(f)
    print(f"Patched {f}")
