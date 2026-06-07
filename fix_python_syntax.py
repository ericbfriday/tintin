with open('fix_absolute_final.py', 'r') as f:
    content = f.read()

content = content.replace("gtd\\.\\*\\.(vars|cmds|match)\\[([^\\]]+)\\](.*?\\n)", r"gtd\.\*\.(vars|cmds|match)\[([^\]]+)\](.*?\n)")

# Wait, replace won't work well if there's a literal newline.
import re
content = re.sub(r'gtd\\\.\\\*\\\.\(vars\|cmds\|match\)\[\(\[\^\\\]\]\+\)\]\(\.\*\?\n\)', r'gtd\\.\\*\\.(vars|cmds|match)\\[([^\\]]+)\\](.*?\\n)', content)

# Actually let's just write the line correctly:
lines = content.split('\n')
for i, line in enumerate(lines):
    if "content = re.sub(r'gtd\.\*\.(vars|cmds|match)\[([^\]]+)\](.*?" in line:
        lines[i] = r"    content = re.sub(r'gtd\.\*\.(vars|cmds|match)\[([^\]]+)\](.*?\n)', repl_vars, content)"
        # The next line is just ')', repl_vars, content)' remove it
        lines[i+1] = ""

with open('fix_absolute_final.py', 'w') as f:
    f.write('\n'.join(lines))
