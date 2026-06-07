import re

with open('src/session.zig', 'r') as f:
    content = f.read()

content = re.sub(r'pub const c_kill = tintin_c\.c_kill;\n?', '', content)

if 'extern "C" fn kill' not in content:
    content += '\nextern "C" fn kill(pid: c_int, sig: c_int) c_int;\n'
    content += 'pub const c_kill = kill;\n'

with open('src/session.zig', 'w') as f:
    f.write(content)
