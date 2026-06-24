import re
with open('fix_absolute_final.py', 'r') as f:
    text = f.read()

# Fix the idx group bug
text = text.replace("idx = m.group(1)", "idx = m.group(2)")

# Move the += fix INSIDE the function.
# I'll just remove it from the bottom and insert it before the file write.
lines = text.split('\n')
new_lines = []
for line in lines:
    if line.startswith('    # 13. Fix invalid LHS'):
        continue
    if "content = re.sub(r'@as\(c_int,\s*(node" in line:
        continue
    if "content = re.sub(r'@as\(c_int,\s*(node" in line or "-='," in line:
        continue
    if "content = '\\n'.join(new_lines)" in line:
        new_lines.append("    # 13. Fix invalid LHS")
        new_lines.append(r"    content = re.sub(r'@as\(c_int,\s*(node\.\*\.root\.\*\.list[^\]]+\]\.\*\.unnamed_0\.val16[^\]]+\])\)\s*\+=', r'\1 +=', content)")
        new_lines.append(r"    content = re.sub(r'@as\(c_int,\s*(node\.\*\.root\.\*\.list[^\]]+\]\.\*\.unnamed_0\.val16[^\]]+\])\)\s*-=', r'\1 -=', content)")
        new_lines.append(line)
    else:
        new_lines.append(line)

with open('fix_absolute_final.py', 'w') as f:
    f.write('\n'.join(new_lines))
