import re
import sys

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Remove bad global aliases if present
    content = re.sub(r'pub const gtd = tintin_c\.gtd;\n?', '', content)
    content = re.sub(r'pub const gts = tintin_c\.gts;\n?', '', content)

    # Replace usages in code
    content = re.sub(r'\bgtd\b', 'tintin_c.gtd', content)
    content = re.sub(r'\bgts\b', 'tintin_c.gts', content)

    with open(filepath, 'w') as f:
        f.write(content)
        
for f in sys.argv[1:]:
    fix_file(f)
