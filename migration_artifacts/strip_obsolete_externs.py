import re
import os
import sys

OBSOLETE_EXTERNS = {
    "is_abbrev",
    "get_arg_in_braces",
    "sub_arg_in_braces",
    "space_out",
    "get_number",
    "generate_rand",
    "tintin_header",
    "tintin_printf2",
    "ntos",
    "delete_node",
    "add_nest_node_ses",
    "get_row_index",
    "show_error",
    "cat_sprintf",
    "script_driver",
    "get_color_names",
    "strip_vt102_codes",
    "strip_vt102_strstr",
    "str_alloc_stack",
    "is_number",
    "client_send_sb_naws",
    "init_pos",
    "reset_scroll_region",
    "refresh_session_terminal",
    "strip_vt102_width",
    "substitute",
    "is_euc_head",
    "hex_number_8bit",
    "find_escaped_color_code",
}

def strip_externs_from_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Count occurrences of each function declaration / alias
    counts = {}
    for name in OBSOLETE_EXTERNS:
        # Match pub const name, pub fn name, pub extern fn name, pub var name, etc.
        pattern = r'\b(?:pub\s+)?(?:const|fn|var|extern\s+fn)\s+' + name + r'\b'
        counts[name] = len(re.findall(pattern, content))
        
    lines = content.splitlines(keepends=True)
    new_lines = []
    in_prefix = True
    stripped_any = False
    
    for line in lines:
        stripped = line.strip()
        if in_prefix:
            if not stripped or stripped.startswith("//") or stripped.startswith("/*") or stripped.startswith("*"):
                new_lines.append(line)
                continue
            
            # Check if it's a pub extern fn declaration
            match = re.match(r'^pub\s+extern\s+fn\s+([a-zA-Z0-9_]+)\b', stripped)
            if match:
                func_name = match.group(1)
                if func_name in OBSOLETE_EXTERNS:
                    # ONLY strip if it is duplicated elsewhere in the file!
                    if counts.get(func_name, 0) > 1:
                        stripped_any = True
                        counts[func_name] -= 1
                        continue
            
            # If we hit anything else, we are out of the prefix block
            in_prefix = False
        
        new_lines.append(line)
        
    if stripped_any:
        with open(filepath, 'w') as f:
            f.writelines(new_lines)
        print(f"Stripped duplicate externs from {filepath}")

def main():
    src_dir = "src"
    for root, _, files in os.walk(src_dir):
        for file in files:
            if file.endswith(".zig"):
                filepath = os.path.join(root, file)
                strip_externs_from_file(filepath)

if __name__ == "__main__":
    main()
