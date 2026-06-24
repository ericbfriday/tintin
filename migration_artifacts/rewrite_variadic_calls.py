import os
import re

from generate_variadics_zig import VARIADIC_FUNCS

def split_args(arg_string):
    args = []
    paren = 0
    in_str = False
    in_char = False
    escape = False
    curr = ""
    
    for c in arg_string:
        if escape:
            curr += c
            escape = False
            continue
        if c == '\\':
            escape = True
            curr += c
            continue
            
        if not in_str and not in_char:
            if c == '"': in_str = True
            elif c == "'": in_char = True
            elif c in '({[': paren += 1
            elif c in ')}]': paren -= 1
            elif c == ',' and paren == 0:
                args.append(curr.strip())
                curr = ""
                continue
        elif in_str and c == '"': in_str = False
        elif in_char and c == "'": in_char = False
        
        curr += c
        
    args.append(curr.strip())
    return args

def process_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    original_content = content
    
    for func, fixed_count in VARIADIC_FUNCS.items():
        idx = 0
        while True:
            # Match optional prefix like tintin_c. or __root. or extern_local_func.
            prefix_pattern = r'(?:tintin_c\.|__root\.|extern_local_' + re.escape(func) + r'\.)?'
            match = re.search(r'\b' + prefix_pattern + re.escape(func) + r'\s*\(', content[idx:])
            if not match:
                break
            
            start_idx = idx + match.end() - 1 # Points to the opening '('
            
            paren_count = 1
            i = start_idx + 1
            in_string = False
            in_char = False
            escape = False
            
            while i < len(content):
                c = content[i]
                if escape:
                    escape = False
                elif c == '\\':
                    escape = True
                elif not in_string and not in_char:
                    if c == '"': in_string = True
                    elif c == "'": in_char = True
                    elif c == '(': paren_count += 1
                    elif c == ')':
                        paren_count -= 1
                        if paren_count == 0:
                            break
                elif in_string and c == '"': in_string = False
                elif in_char and c == "'": in_char = False
                i += 1
                
            end_idx = i
            
            # Extract arguments string
            args_str = content[start_idx+1:end_idx]
            args = split_args(args_str)
            
            if len(args) == fixed_count and (args[-1] == "" or args[-1] == " "):
                # It's an empty call (e.g. tintin_printf(ses, ""))
                args = args[:-1] # Remove the empty space
                
            if filepath.endswith("utils.zig"):
                new_call_prefix = f'@import("variadics.zig").{func}'
            else:
                new_call_prefix = func
                
            # The format argument is the last fixed argument: fixed_count - 1
            format_index = fixed_count - 1
            
            # Strip dangling ptrCasts and bitCasts from anytype arguments to avoid 'must have a known result type'
            for i in range(len(args)):
                if i == format_index:
                    continue
                arg_stripped = args[i].strip()
                if arg_stripped.startswith("@ptrCast(@alignCast("):
                    # Change to explicit *anyopaque cast
                    args[i] = args[i].replace("@ptrCast(@alignCast(", "@as(?*anyopaque, @ptrCast(@alignCast(", 1) + ")"
                elif arg_stripped.startswith("@bitCast("):
                    # Strip bitCast since anytype will just take the inner expression
                    # This finds the matching parenthesis for @bitCast(...)
                    # We can cheat and just replace "@bitCast(" with "" and remove the last ")"
                    # assuming it wraps the whole thing.
                    if args[i].endswith(")"):
                        args[i] = args[i].replace("@bitCast(", "", 1)[::-1].replace(")", "", 1)[::-1]

            if len(args) <= fixed_count:
                fixed_part = ", ".join(args)
                new_call = f'{new_call_prefix}({fixed_part}, .{{}})'
            else:
                fixed_part = ", ".join(args[:fixed_count])
                var_part = ", ".join(args[fixed_count:])
                new_call = f'{new_call_prefix}({fixed_part}, .{{{var_part}}})'
                
            old_call = content[idx+match.start():end_idx+1]
            
            # Don't replace if it's already an extern declaration
            line_start = content.rfind('\n', 0, idx+match.start())
            line_str = content[line_start:idx+match.start()]
            if 'extern fn' in line_str or 'export fn' in line_str or 'fn ' in line_str:
                idx = end_idx + 1
                continue
                
            content = content[:idx+match.start()] + new_call + content[end_idx+1:]
            idx = idx + match.start() + len(new_call)

    if content != original_content:
        with open(filepath, 'w') as f:
            f.write(content)
        print(f"Updated {filepath}")

for root, _, files in os.walk("src"):
    for file in files:
        if file.endswith(".zig") and file != "variadics.zig":
            process_file(os.path.join(root, file))

print("Rewrite complete.")
