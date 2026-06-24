import os
import re
from generate_variadics_zig import VARIADIC_FUNCS

def fix_declarations(filepath):
    with open(filepath, 'r') as f:
        content = f.read()
        
    original_content = content
    
    for func, count in VARIADIC_FUNCS.items():
        ret_type = "void"
        if func in ["check_all_events", "push_call_printf"]:
            ret_type = "c_int"
        elif func in ["set_nest_node", "set_nest_node_ses", "add_nest_node", "add_nest_node_ses"]:
            ret_type = "[*c]struct_listnode"
        elif func in ["execute", "command"]:
            ret_type = "[*c]struct_session"
        elif func == "create_room":
            ret_type = "[*c]struct_room_data"
        elif func == "create_exit":
            ret_type = "[*c]struct_exit_data"
            
        args_decl = []
        args_call = []
        for i in range(count - 1):
            args_decl.append(f"arg{i}: anytype")
            args_call.append(f"arg{i}")
        args_decl.append("arg_format: [*c]const u8")
        args_call.append("arg_format")
        args_decl.append("args: anytype")
        args_call.append("args")
        
        args_decl_str = ", ".join(args_decl)
        args_call_str = ", ".join(args_call)
        
        # Build the wrapper
        if ret_type == "void":
            wrapper = f'pub fn {func}({args_decl_str}) void {{ @import("variadics.zig").{func}({args_call_str}); }}'
        elif ret_type == "c_int":
            wrapper = f'pub fn {func}({args_decl_str}) c_int {{ return @intCast(@import("variadics.zig").{func}({args_call_str})); }}'
        else:
            wrapper = f'pub fn {func}({args_decl_str}) {ret_type} {{ return @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@import("variadics.zig").{func}({args_call_str}))))); }}'
            
        # Match pub extern fn
        pattern1 = r'(pub\s+extern\s+fn\s+(' + re.escape(func) + r')\s*\([^)]*\)\s*[a-zA-Z0-9_.*?\[\]()]+;)'
        pattern2 = r'(pub\s+const\s+(' + re.escape(func) + r')\s*=\s*[^;]+;)'
        
        def replacement(m):
            return wrapper
            
        content = re.sub(pattern1, replacement, content)
        content = re.sub(pattern2, replacement, content)

    if content != original_content:
        with open(filepath, 'w') as f:
            f.write(content)
        print(f"Fixed declarations in {filepath}")

for root, _, files in os.walk("src"):
    for file in files:
        if file.endswith(".zig") and file != "variadics.zig":
            fix_declarations(os.path.join(root, file))

print("Declaration rewrite complete.")
