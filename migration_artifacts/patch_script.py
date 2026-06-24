import re

with open('fix_absolute_final.py', 'r') as f:
    content = f.read()

# Fix prefixes: order them by length descending, and include gtd.*.ses.*
new_prefixes = """    prefixes = [
        'root.*.ses.*',
        'gtd.*.ses.*',
        'newses.*',
        'gts.*',
        'ses.*'
    ]"""
content = re.sub(r'    prefixes = \[\s*\'root\.\*\.ses\.\*\',\s*\'gts\.\*\',\s*\'newses\.\*\',\s*\'ses\.\*\'\s*\]', new_prefixes, content)
content = re.sub(r"f'@as\(\[\*c\]\[\*c\]struct_listroot, @ptrCast\(&\{p\}\.list\)\)\[\\\\1\]'", r"f'@as([*c][*c]struct_listroot, @ptrCast(&{p}.list))[{m.group(1)}]' if p == m.group(0).split('.list')[0] else m.group(0)", content) # wait, python replace might be tricky

# Just rewrite that part entirely
replacement_code = """
    # 2. .list[...]
    prefixes = [
        'root.*.ses.*',
        'gtd.*.ses.*',
        'newses.*',
        'gts.*',
        'ses.*'
    ]
    def repl_list(m):
        full = m.group(0)
        idx = m.group(1)
        for p in prefixes:
            if full.startswith(p + ".list["):
                return f"@as([*c][*c]struct_listroot, @ptrCast(&{p}.list))[{idx}]"
        return full
    content = re.sub(r'([a-zA-Z0-9_.*]+)\.list\[([^\]]+)\]', repl_list, content)
"""

content = re.sub(r'    # 2\. \.list\[\.\.\.\]\n.*?    # 3\. \.val32\[\.\.\.\]', replacement_code + '    # 3. .val32[...]', content, flags=re.DOTALL)

# Fix 6. vars, cmds, match variadic decay -> ONLY replace if not followed by ' =' (so we avoid LHS)
# Even better, only cast if we really need to, or just let LHS be `gtd.*.cmds[idx]`
# Actually, just replace `gtd.*.cmds[idx]` if it is NOT on the LHS.
# Let's change repl_vars to not do the replacement if it is LHS.
# We can use a regex that looks ahead for `=`
replacement_code_6 = """
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
"""
content = re.sub(r'    # 6\. vars, cmds, match variadic decay\n.*?    # 7\. script_stack', replacement_code_6 + '    # 7. script_stack', content, flags=re.DOTALL)

# Let's also add a fix for @as(c_int, LHS) += 1 in draw.zig
# E.g. @as(c_int, node.*.root.*.list[...].val16[...]) += 1
content += r"""
    # 13. Fix invalid LHS caused by zig translate-c for += on val16
    content = re.sub(r'@as\(c_int,\s*(node\.\*\.root\.\*\.list[^\]]+\]\.\*\.unnamed_0\.val16[^\]]+\])\)\s*\+=', r'\1 +=', content)
    # also for -=, ++, --
    content = re.sub(r'@as\(c_int,\s*(node\.\*\.root\.\*\.list[^\]]+\]\.\*\.unnamed_0\.val16[^\]]+\])\)\s*-=', r'\1 -=', content)
"""

with open('fix_absolute_final.py', 'w') as f:
    f.write(content)
print("Updated fix_absolute_final.py")
