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

    # 1. Fix substitute.zig += 1
    content = re.sub(r'@as\(c_int, ([^\[]+\[[^\]]+\])\) \+= 1;', r'\1 += 1;', content)

    # 2. Fix array indexing value bugs (gtd.*.vars -> gtd[0].vars, node.*.unnamed_0 -> node[0].unnamed_0, gtd.*.cmds -> gtd[0].cmds, gtd.*.screen.*.sav_col -> gtd[0].screen[0].sav_col, gtd.*.script_stack -> gtd[0].script_stack)
    content = re.sub(r'gtd\.\*\.vars\[', r'gtd[0].vars[', content)
    content = re.sub(r'gtd\.\*\.cmds\[', r'gtd[0].cmds[', content)
    content = re.sub(r'gtd\.\*\.screen\.\*\.sav_col\[', r'gtd[0].screen[0].sav_col[', content)
    content = re.sub(r'gtd\.\*\.script_stack\[', r'gtd[0].script_stack[', content)
    content = re.sub(r'node\.\*\.unnamed_0\.val16\[', r'node[0].unnamed_0.val16[', content)
    content = re.sub(r'gtd\.\*\.line\[', r'gtd[0].line[', content)
    content = re.sub(r'ses\.\*\.list\[', r'ses[0].list[', content)

    # 3. Fix sort.zig syntax error
    content = content.replace('if (x != 0) @as(usize, 0) else @as(usize, 1))', 'if (x != 0) @as(usize, 0) else @as(usize, 1)')

    # 4. Fix regex.zig sprintf '[:0]u8' variadic function issue
    # We will just replace all `@constCast("...")` with `@as([*c]u8, @ptrCast(@constCast("...")))` everywhere in regex.zig
    # The previous regex missed complex strings. We can use a regex that matches @constCast("(.*?)") correctly.
    # Be careful not to match too much.
    def replace_constcast(m):
        return f'@as([*c]u8, @ptrCast(@constCast({m.group(1)})))'
    
    content = re.sub(r'@constCast\((@as\(\[\*c\]const u8, "[^"]*"\))\)', replace_constcast, content)
    content = re.sub(r'@constCast\(("[^"]*")\)', replace_constcast, content)
    
    with open(filepath, 'w') as f:
        f.write(content)

for f in files_to_patch:
    patch_file(f)
    print(f"Patched {f}")
