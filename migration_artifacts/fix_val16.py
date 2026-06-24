import re
with open("fix_absolute_final.py", "r") as f:
    text = f.read()

# I will just replace the strict val16 regex with a generic one that matches any val16[...] +=
new_val16 = r'''
    # 13. Generic fix for invalid LHS cast of val16
    content = re.sub(r'@as\(c_int,\s*(.*?\.val16\[.*?\])\)\s*\+=', r'\1 +=', content)
    content = re.sub(r'@as\(c_int,\s*(.*?\.val16\[.*?\])\)\s*-=', r'\1 -=', content)
'''

text = re.sub(r'# 13\. Fix invalid LHS for val16 in draw\.zig.*?content = re\.sub\(r\'@as\\\(c_int,\\s\*\(node[^\]]+\\\]\)\\)\\s\*-=\', r\'\\1 -=\', content\)', new_val16, text, flags=re.DOTALL)

with open("fix_absolute_final.py", "w") as f:
    f.write(text)
