import os
import re

EXTERNS = """
pub extern fn is_abbrev(arg0: [*c]const u8, arg1: [*c]const u8) c_int;
pub extern fn get_arg_in_braces(arg0: [*c]const u8, arg1: [*c]u8, arg2: c_int) [*c]u8;
pub extern fn sub_arg_in_braces(arg0: [*c]const u8, arg1: [*c]u8, arg2: [*c]const u8, arg3: [*c]const u8, arg4: c_int) [*c]u8;
pub extern fn space_out(arg0: [*c]u8) [*c]u8;
pub extern fn get_number(arg0: [*c]struct_session, arg1: [*c]const u8, arg2: [*c]c_int) [*c]u8;
pub extern fn generate_rand(arg0: [*c]struct_session) c_int;
pub extern fn tintin_header(arg0: [*c]struct_session, arg1: [*c]u8, arg2: [*c]const u8) void;
pub extern fn tintin_printf2(arg0: [*c]struct_session, arg1: [*c]const u8, ...) void;
pub extern fn ntos(arg0: c_int) [*c]u8;
pub extern fn delete_node(arg0: [*c]struct_listroot, arg1: [*c]struct_listnode) void;
pub extern fn add_nest_node_ses(arg0: [*c]struct_session, arg1: c_int, arg2: [*c]u8, arg3: [*c]const u8, arg4: [*c]const u8, arg5: [*c]const u8) [*c]struct_listnode;
pub extern fn get_row_index(arg0: [*c]struct_session, arg1: c_int) c_int;
pub extern fn show_error(arg0: [*c]struct_session, arg1: c_int, arg2: [*c]const u8, ...) void;
pub extern fn cat_sprintf(arg0: [*c]u8, arg1: [*c]const u8, ...) [*c]u8;
pub extern fn script_driver(arg0: [*c]struct_session, arg1: c_int, arg2: [*c]u8) [*c]struct_listnode;
pub extern fn get_color_names(arg0: [*c]struct_session, arg1: [*c]u8) void;
pub extern fn strip_vt102_codes(arg0: [*c]u8, arg1: [*c]u8) void;
pub extern fn strip_vt102_strstr(arg0: [*c]u8, arg1: [*c]u8, arg2: [*c]c_int) [*c]u8;
pub extern fn str_alloc_stack(arg0: [*c]u8) [*c]u8;
pub extern fn is_number(arg0: [*c]const u8) c_int;
pub extern fn client_send_sb_naws(arg0: [*c]struct_session, arg1: c_int, arg2: c_int) void;
pub extern fn init_pos(arg0: [*c]struct_session, arg1: c_int) void;
pub extern fn reset_scroll_region(arg0: [*c]struct_session) void;
pub extern fn refresh_session_terminal(arg0: [*c]struct_session) void;
pub extern fn strip_vt102_width(arg0: [*c]u8) c_int;
pub extern fn substitute(arg0: [*c]struct_session, arg1: [*c]u8, arg2: [*c]u8, arg3: c_int) void;
pub extern fn is_euc_head(arg0: [*c]struct_session, arg1: [*c]u8, arg2: c_int) c_int;
pub extern fn hex_number_8bit(arg0: [*c]struct_session, arg1: [*c]const u8, arg2: [*c]c_int) c_int;
pub extern fn find_escaped_color_code(arg0: [*c]const u8, arg1: [*c]u8) [*c]u8;
"""

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # 1. strip local struct wrapper for externs
    content = re.sub(
        r'const ([a-zA-Z_0-9]+) = struct {\s+pub extern fn \1\([^\)]*\) [^;]+;\s+};\s*',
        r'',
        content
    )

    # 2. remove extern_local_ prefix
    content = re.sub(r'extern_local_([a-zA-Z_0-9]+)', r'\1', content)

    # 3. replace duplicate name calls XYZ.XYZ( -> XYZ(
    content = re.sub(r'\b([a-zA-Z_0-9]+)\.\1\(', r'\1(', content)

    # 4. array deref fixes: ptr.*.field[ -> ptr[0].field[
    content = re.sub(r'\.\*\.([a-zA-Z_0-9]+)\[', r'[0].\1[', content)
    
    # 5. variadic ternary slice fix
    content = re.sub(r'if \((.*?)\) @constCast\("(.*?)"\) else @constCast\("(.*?)"\)', 
                     r'if (\1) @as([*c]u8, @ptrCast(@constCast("\2"))) else @as([*c]u8, @ptrCast(@constCast("\3")))', content)

    # 6. inject externs
    if "pub extern fn is_abbrev" not in content:
        content = EXTERNS + "\n" + content

    with open(filepath, 'w') as f:
        f.write(content)

for root, _, files in os.walk("src"):
    for file in files:
        if file.endswith(".zig"):
            fix_file(os.path.join(root, file))

print("Fixed all zig files.")
