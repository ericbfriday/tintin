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

    # REMOVE any previously injected EXTERNS to start fresh
    for line in EXTERNS.strip().split('\n'):
        if line in content:
            content = content.replace(line + "\n", "")
            content = content.replace(line, "")

    # Strip local wrapper structs for extern functions (handles pub and non-pub)
    content = re.sub(
        r'const ([a-zA-Z_0-9]+) = struct \{\s+(?:pub\s+)?extern fn \1\([^\)]*\) [^;]+;\s+\};\s*',
        r'',
        content
    )

    # We only inject EXTERNS if struct_session is actually defined or imported in this file
    # Or if the file contains the text `struct_session` it probably needs it, but we MUST make sure it defines struct_session or it imports it!
    # Wait, `translate-c` puts ALL structs in the file! So if `struct_session` is used, it should be defined inside.
    # BUT wait, what if it's `test.zig` which doesn't have `struct_session`?
    # Let's just only inject the specific externs if they are USED in the file!
    
    lines_to_inject = []
    for line in EXTERNS.strip().split('\n'):
        match = re.search(r'fn ([a-zA-Z_0-9]+)\(', line)
        if match:
            func_name = match.group(1)
            # if func_name is used in the file, we inject the line
            # but wait, `func_name` might be defined IN the file!
            if re.search(r'\b' + func_name + r'\b', content) and not re.search(r'pub export fn ' + func_name + r'\b', content):
                lines_to_inject.append(line)

    if lines_to_inject:
        # inject at the top, but after imports and struct definitions if possible. Let's just inject at top!
        # wait, `struct_session` might be used in the signature.
        # Zig is order independent for declarations! So we can just put it at the very top.
        content = "\n".join(lines_to_inject) + "\n\n" + content

    with open(filepath, 'w') as f:
        f.write(content)

for root, _, files in os.walk("src"):
    for file in files:
        if file.endswith(".zig"):
            fix_file(os.path.join(root, file))

print("Fixed local constants and externs.")
