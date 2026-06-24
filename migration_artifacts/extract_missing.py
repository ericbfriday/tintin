import sys
import re

funcs = {
    "src/chat.c": ["chat_printf", "chat_socket_printf", "threaded_chat_call"],
    "src/msdp.c": ["arachnos_devel", "arachnos_mudlist", "msdp_update_varf", "msdp_update_all", "tintin2msdp"],
    "src/port.c": ["port_socket_printf", "port_telnet_printf", "port_log_printf", "port_printf", "port_call"],
    "src/debug.c": ["push_call", "push_call_printf"],
    "src/daemon.c": ["daemon_attach"]
}

out_c = 'src/missing_phase8.c'

with open(out_c, 'w') as out:
    out.write('#include "tintin.h"\n')
    out.write('#include "telnet.h"\n')
    out.write('#include <sys/types.h>\n')
    out.write('#include <sys/stat.h>\n')
    out.write('#include <sys/un.h>\n')
    out.write('#include <sys/socket.h>\n')
    out.write('#include <netdb.h>\n')
    out.write('#include <netinet/in.h>\n')
    out.write('#include <arpa/inet.h>\n')
    out.write('#include <fcntl.h>\n')
    out.write('#include <signal.h>\n')
    out.write('#include <dirent.h>\n')
    out.write('#include <termios.h>\n')
    out.write('#ifdef HAVE_PTY_H\n#include <pty.h>\n#endif\n')
    out.write('#ifdef HAVE_UTIL_H\n#include <util.h>\n#endif\n')
    out.write('#define CALL_TIMEOUT 5\n')
    out.write('#define DEFAULT_PORT 4050\n\n')
    out.write('void port_socket_write(struct session *ses, struct port_data *buddy, char *str, int len);\n')
    out.write('char *get_daemon_dir(struct session *ses, char *filename);\n')
    out.write('int process_chat_input(struct chat_data *buddy);\n')
    out.write('void close_chat(struct chat_data *buddy, int active);\n\n')
    
    for filename, fn_names in funcs.items():
        with open(filename, 'r') as f:
            lines = f.readlines()
            
            for fn_name in fn_names:
                start_line = -1
                for i, line in enumerate(lines):
                    if 'extern ' in line: continue
                    if ';' in line: continue
                    if re.search(r'\b' + re.escape(fn_name) + r'\b\s*\(', line) or re.search(r'DO_\w+\(' + re.escape(fn_name) + r'\)', line):
                        start_line = i
                        break
                
                if start_line == -1:
                    print(f"Warning: {fn_name} not found in {filename}")
                    continue
                    
                # Now extract
                fn_lines = []
                brace_count = 0
                found_brace = False
                in_string = False
                in_char = False
                escape = False
                
                for i in range(start_line, len(lines)):
                    line = lines[i]
                    fn_lines.append(line)
                    
                    for c in line:
                        if escape:
                            escape = False
                            continue
                        if c == '\\':
                            escape = True
                            continue
                        if c == '"' and not in_char:
                            in_string = not in_string
                        elif c == "'" and not in_string:
                            in_char = not in_char
                            
                        if not in_string and not in_char:
                            if c == '{':
                                brace_count += 1
                                found_brace = True
                            elif c == '}':
                                brace_count -= 1
                                
                    if found_brace and brace_count == 0:
                        break
                        
                out.write(f"/* Extracted {fn_name} from {filename} */\n")
                out.write("".join(fn_lines) + "\n\n")

print("Done.")
