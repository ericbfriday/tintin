import re

with open('build.zig', 'r') as f:
    text = f.read()

def add_target(match):
    return match.group(0) + '\n        .target = target,\n        .optimize = optimize,'

for mod in ['update_a', 'update_b', 'vt102_a', 'vt102_b']:
    pattern = r'\.root_source_file = b\.path\("src/' + mod + r'\.zig"\),'
    text = re.sub(pattern, add_target, text)

with open('build.zig', 'w') as f:
    f.write(text)
