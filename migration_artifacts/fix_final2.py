import re

def fix_file(filename):
    with open(filename, "r") as f:
        content = f.read()

    # Remove the bad externs we added at the top
    content = re.sub(r'pub extern fn is_abbrev[^\n]+\n', '', content)
    content = re.sub(r'pub extern fn is_math[^\n]+\n', '', content)
    content = re.sub(r'pub extern fn find[^\n]+\n', '', content)
    content = re.sub(r'pub extern fn get_number[^\n]+\n', '', content)
    content = re.sub(r'pub extern fn is_utf8_head[^\n]+\n', '', content)
    content = re.sub(r'pub extern fn is_utf8_tail[^\n]+\n', '', content)
    content = re.sub(r'pub extern fn str_len[^\n]+\n', '', content)

    # Fix the @ptrCast nesting
    content = content.replace('gtd.*.@ptrCast(ses.*.list', 'gtd.*.ses.*.list')

    with open(filename, "w") as f:
        f.write(content)

for f in ["src/buffer.zig", "src/cursor.zig", "src/mapper.zig"]:
    fix_file(f)

print("Fixed!")
