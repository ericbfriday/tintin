import re

# 1. Fix help.zig VLA
with open('src/help.zig', 'r') as f:
    content = f.read()
content = content.replace('const tutorial = if (true) @compileError("unable to translate variable declaration type");', 'var tutorial: [2000]c_int = undefined;')
with open('src/help.zig', 'w') as f:
    f.write(content)

# 2. Fix regex.zig duplicate
with open('src/regex.zig', 'r') as f:
    content = f.read()
content = re.sub(r'pub extern fn get_regex_range.*?;', '', content)
with open('src/regex.zig', 'w') as f:
    f.write(content)

# 3. Fix event.zig duplicate
with open('src/event.zig', 'r') as f:
    content = f.read()
content = re.sub(r'pub extern fn check_all_events.*?;\n', '', content)
with open('src/event.zig', 'w') as f:
    f.write(content)

# 4. Fix shadowing in mapper.zig
with open('src/mapper.zig', 'r') as f:
    content = f.read()
content = content.replace('const gtd: *struct_tintin_data = @ptrCast(gtd);', 'const gtd_local: *struct_tintin_data = @ptrCast(gtd);')
content = content.replace('gtd.*.map', 'gtd_local.*.map')
content = content.replace('gtd.*.room', 'gtd_local.*.room')

content = re.sub(r'\bvar index\b', 'var idx', content)
content = re.sub(r'\bindex =', 'idx =', content)
content = re.sub(r'\bindex <', 'idx <', content)
content = re.sub(r'\bindex \+', 'idx +', content)
content = re.sub(r'\[index\]', '[idx]', content)

content = re.sub(r'\bvar link\b', 'var lnk', content)
content = re.sub(r'\blink =', 'lnk =', content)
content = re.sub(r'\blink\.', 'lnk.', content)

with open('src/mapper.zig', 'w') as f:
    f.write(content)

# 5. Fix shadowing in tokenize.zig
with open('src/tokenize.zig', 'r') as f:
    content = f.read()
content = content.replace('const gtd: *struct_tintin_data = @ptrCast(gtd);', 'const gtd_local: *struct_tintin_data = @ptrCast(gtd);')
content = content.replace('gtd.*.', 'gtd_local.*.')
with open('src/tokenize.zig', 'w') as f:
    f.write(content)

