import re
import os

def fix_file(filename):
    with open(filename, "r") as f:
        content = f.read()

    # 1. Remove all local structs that wrap extern functions
    content = re.sub(r'\s*const extern_local_[a-zA-Z0-9_]+\s*=\s*struct\s*\{.*?\};\n(\s*_ = &extern_local_[a-zA-Z0-9_]+;\n)?', '\n', content, flags=re.DOTALL)
    
    # 2. Specifically remove tintin function global declarations
    funcs = ["is_abbrev", "is_math", "find", "get_number", "is_utf8_head", "is_utf8_tail", "str_len", "sub_arg_in_braces"]
    for func in funcs:
        content = re.sub(rf'^pub extern fn {func}\([^)]*\).*?;\n', '', content, flags=re.MULTILINE)

    # 3. Inject our own global extern functions at the top!
    externs = """
pub extern fn is_abbrev(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn is_math(ses: [*c]struct_session, str: [*c]const u8) c_int;
pub extern fn find(ses: [*c]struct_session, str: [*c]const u8, exp: [*c]const u8, sub: c_int, flag: c_int) c_int;
pub extern fn get_number(ses: [*c]struct_session, str: [*c]const u8) c_longdouble;
pub extern fn is_utf8_head(str: [*c]const u8) c_int;
pub extern fn is_utf8_tail(str: [*c]const u8) c_int;
pub extern fn str_len(str: [*c]const u8) c_int;
pub extern fn sub_arg_in_braces(ses: [*c]struct_session, string: [*c]const u8, result: [*c]u8, flag: c_int, sub: c_int) [*c]u8;
"""
    content = externs + "\n" + content

    # Fix gtd.*.ses.*.list[X] -> @ptrCast(gtd.*.ses.*.list[X])
    def replace_list(match):
        s = match.group(0)
        if "@ptrCast" in s: return s
        return f"@ptrCast({s})"
        
    content = re.sub(r'gtd\.\*\.ses\.\*\.list\[[^\]]+\]', replace_list, content)
    content = re.sub(r'ses\.\*\.list\[[^\]]+\]', replace_list, content)
    
    content = content.replace("@ptrCast(@ptrCast(", "@ptrCast(")
    
    content = re.sub(r'macro_buf\[@as\(c_int,\s*0\)\]', r'macro_buf[0]', content)

    # mapper.zig sprintf fix
    content = content.replace('if (static_local_symbol_color.symbol_color.* != 0) static_local_room_color.room_color else @constCast("")', 'if (static_local_symbol_color.symbol_color.* != 0) @as([*c]const u8, @ptrCast(static_local_room_color.room_color)) else @as([*c]const u8, @ptrCast(@constCast(""))) ')

    # Fix extern_local_XXX calls to use just XXX
    for func in funcs:
        content = content.replace(f'extern_local_{func}.{func}', func)

    with open(filename, "w") as f:
        f.write(content)

for f in ["src/buffer.zig", "src/cursor.zig", "src/mapper.zig"]:
    fix_file(f)

print("Fixed exactly!")
