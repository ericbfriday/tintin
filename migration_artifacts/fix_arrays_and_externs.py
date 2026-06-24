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
"""

def fix_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Apply array index fix: `.*.field[` -> `[0].field[`
    content = re.sub(r'\.\*\.([a-zA-Z_0-9]+)\[', r'[0].\1[', content)

    # Re-apply my previous `@ptrCast` fix because it might have matched differently?
    # No! I removed the ptrCast wrapper in the previous step and the array bug is the real culprit!
    # Wait, if the array bug is fixed, I DON'T NEED `@ptrCast(ses[0].list[LIST_PATHDIR])`!
    # Actually, `search_node_list` takes `[*c]struct_listroot`.
    # `ses[0].list[LIST_PATHDIR]` evaluates to `[*c]struct_listroot`!
    # So I DO NOT need `@ptrCast`! It matches perfectly!

    # Wait, my previous script added `@ptrCast` to `ses.*.list[...]`.
    # Let me remove the custom `@ptrCast` if it exists.
    content = content.replace("@ptrCast(ses.*.list[LIST_PATHDIR])", "ses[0].list[LIST_PATHDIR]")
    content = content.replace("@ptrCast(gtd.*.ses.*.list[LIST_PATHDIR])", "gtd[0].ses[0].list[LIST_PATHDIR]")

    # Inject externs if not present
    if "pub extern fn tintin_header" not in content:
        # insert after the first struct_session or at the top
        content = EXTERNS + "\n" + content

    with open(filepath, 'w') as f:
        f.write(content)

fix_file("src/mapper.zig")
fix_file("src/buffer.zig")
fix_file("src/cursor.zig")
print("Fixed array access and externs.")
