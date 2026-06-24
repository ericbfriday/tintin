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

    # The previous script replaced gtd.*.vars[ with gtd[0].vars[
    # That made them rvalues. We need lvalues.
    # We will replace gtd[0].vars[ with (&gtd.*.vars)[
    content = content.replace('gtd[0].vars[', '(&gtd.*.vars)[')
    content = content.replace('gtd[0].cmds[', '(&gtd.*.cmds)[')
    content = content.replace('gtd[0].screen[0].sav_col[', '(&gtd.*.screen.*.sav_col)[')
    content = content.replace('gtd[0].screen[0].sav_row[', '(&gtd.*.screen.*.sav_row)[')
    content = content.replace('gtd[0].script_stack[', '(&gtd.*.script_stack)[')
    content = content.replace('node[0].unnamed_0.val16[', '(&node.*.unnamed_0.val16)[')
    content = content.replace('gtd[0].line[', '(&gtd.*.line)[')
    content = content.replace('ses[0].list[', '(&ses.*.list)[')
    content = content.replace('gtd.*.match[', '(&gtd.*.match)[')
    content = content.replace('gtd.*.command_ref[', '(&gtd.*.command_ref)[')
    content = content.replace('node.*.unnamed_0.val32[', '(&node.*.unnamed_0.val32)[')

    # Revert my previous regex which did node[0].unnamed_0.val16[ -> (&node.*.unnamed_0.val16.*)[
    # if it ran already. But it hasn't been run yet! Wait, I ran part 2, not part 3. I will just run part 3 now.

    # 1. substitute.zig += 1
    content = content.replace('@as(c_int, buf[@as(c_int, 2)]) += 1;', 'buf[@as(c_int, 2)] += 1;')
    content = content.replace('@as(c_int, buf[@as(c_int, 3)]) += 1;', 'buf[@as(c_int, 3)] += 1;')
    content = content.replace('@as(c_int, buf[@as(c_int, 4)]) += 1;', 'buf[@as(c_int, 4)] += 1;')
    
    # 2. trigger.zig bool cast
    content = re.sub(r'\+ @as\(usize, @bitCast\(@as\(isize, @intCast\((.*?)\)\)\)\);', r'+ @as(usize, if (\1) 1 else 0);', content)

    # 3. scan.zig: strdup(ntos(strlen(str_sub)))
    content = content.replace('strdup(ntos(strlen(str_sub)))', 'strdup(ntos(@as(c_longlong, @intCast(strlen(str_sub)))))')

    with open(filepath, 'w') as f:
        f.write(content)

for f in files_to_patch:
    patch_file(f)
    print(f"Patched {f}")
