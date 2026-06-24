import os
import re

VARIADIC_FUNCS = [
    "tintin_printf", "tintin_printf2", "tintin_printf3",
    "show_debug", "show_error", "show_info", "show_message",
    "syserr_printf", "tintin_header", "execute", "command",
    "print_lines", "chat_printf", "chat_socket_printf",
    "msdp_update_varf", "msdp_update_all", "port_socket_printf",
    "port_telnet_printf", "port_log_printf", "port_printf",
    "push_call", "push_call_printf", "arachnos_devel", "arachnos_mudlist",
    "set_nest_node", "set_nest_node_ses", "add_nest_node", "add_nest_node_ses",
    "check_all_events", "add_undo", "create_exit", "create_room",
    "input_printf"
]

def wrap_variadics(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    original_content = content
    
    for func in VARIADIC_FUNCS:
        # Match: void func(..., char *format, ...)
        # It must be a definition, so followed by \n{
        pattern = r'((?:void|int)\s+' + re.escape(func) + r'\s*\([^)]*\.\.\.\s*\)\s*\{)'
        
        # We need to find this pattern, then match the braces to find the end of the function.
        match = re.search(pattern, content)
        if match:
            start_idx = match.start()
            
            # Find the opening brace
            brace_idx = match.end() - 1
            
            brace_count = 1
            i = brace_idx + 1
            while i < len(content):
                if content[i] == '{':
                    brace_count += 1
                elif content[i] == '}':
                    brace_count -= 1
                    if brace_count == 0:
                        break
                i += 1
                
            end_idx = i
            # Wrap in #ifndef SKIP_VARIADICS
            wrapped = "\n#ifndef SKIP_VARIADICS\n" + content[start_idx:end_idx+1] + "\n#endif\n"
            content = content[:start_idx] + wrapped + content[end_idx+1:]

    if "int chat_printf();\n" not in content:
        content = "int chat_printf();\n" + content
        
    if '#include "variadics.h"\n' in content:
        content = content.replace('#include "variadics.h"\n', '')
        
    if content != original_content:
        with open(filepath, 'w') as f:
            f.write(content)
        print(f"Wrapped variadics in {filepath}")

for file in ["src/missing_phase5.c", "src/missing_phase8.c"]:
    wrap_variadics(file)

print("Wrapping complete.")
