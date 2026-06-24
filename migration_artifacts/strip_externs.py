import re
import os

def fix_file(filename):
    with open(filename, "r") as f:
        content = f.read()

    # 1. Remove all local structs that wrap extern functions
    # Pattern:
    # const extern_local_XXX = struct {
    #     extern fn XXX(...);
    # };
    # _ = &extern_local_XXX;
    content = re.sub(r'\s*const extern_local_[a-zA-Z0-9_]+\s*=\s*struct\s*\{.*?\};\n(\s*_ = &extern_local_[a-zA-Z0-9_]+;\n)?', '\n', content, flags=re.DOTALL)
    
    # Also strip sub_arg_in_braces
    content = re.sub(r'\s*const extern_local_sub_arg_in_braces\s*=\s*struct\s*\{.*?\};\n(\s*_ = &extern_local_sub_arg_in_braces;\n)?', '\n', content, flags=re.DOTALL)
    
    # 2. Remove all global pub extern fn that translate-c put at the bottom
    content = re.sub(r'^pub extern fn [a-zA-Z0-9_]+\([^)]*\).*?;\n', '', content, flags=re.MULTILINE)

    # 3. Inject our own global extern functions at the top!
    externs = """
pub extern fn is_abbrev(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn is_math(ses: [*c]struct_session, str: [*c]const u8) c_int;
pub extern fn find(ses: [*c]struct_session, str: [*c]const u8, exp: [*c]const u8, sub: c_int, flag: c_int) c_int;
pub extern fn get_number(ses: [*c]struct_session, str: [*c]const u8) c_int;
pub extern fn is_utf8_head(str: [*c]const u8) c_int;
pub extern fn is_utf8_tail(str: [*c]const u8) c_int;
pub extern fn str_len(str: [*c]const u8) c_int;
pub extern fn sub_arg_in_braces(ses: [*c]struct_session, string: [*c]const u8, result: [*c]const u8, flag: c_int, sub: c_int) [*c]u8;
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

    # Fix extern_local_sub_arg_in_braces calls
    content = content.replace('extern_local_sub_arg_in_braces.sub_arg_in_braces', 'sub_arg_in_braces')

    with open(filename, "w") as f:
        f.write(content)

for f in ["src/buffer.zig", "src/cursor.zig", "src/mapper.zig"]:
    fix_file(f)

print("Stripped and injected!")
