import os

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

out = ""
for func in VARIADIC_FUNCS:
    out += f"void {func}();\n"

with open("src/variadics.h", "w") as f:
    f.write(out)

print("src/variadics.h generated.")
