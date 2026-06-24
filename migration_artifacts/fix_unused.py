import os
import re

def fix_file(filename):
    with open(filename, "r") as f:
        content = f.read()

    # Find all struct blocks for extern_local_
    # They look like:
    # const extern_local_XXX = struct {
    #     extern fn XXX(...) ...;
    # };
    #
    # We want to replace it with:
    # const extern_local_XXX = struct { ... };
    # _ = &extern_local_XXX;

    pattern = re.compile(r'(const (extern_local_\w+) = struct \{.*?\};\n)(?!.*_ = &\2;)', re.DOTALL)
    
    # Wait, the negative lookahead isn't strictly necessary if we just do a replace using a function that checks
    # Let's do it safer:
    
    lines = content.split('\n')
    i = 0
    while i < len(lines):
        line = lines[i]
        m = re.match(r'^\s*const (extern_local_\w+|static_local_\w+) = struct \{', line)
        if m:
            var_name = m.group(1)
            # find the closing };
            j = i + 1
            while j < len(lines) and "};" not in lines[j]:
                j += 1
            if j < len(lines):
                # check if the next non-empty line is _ = &var_name;
                k = j + 1
                while k < len(lines) and lines[k].strip() == "":
                    k += 1
                
                if k < len(lines) and f"_ = &{var_name};" not in lines[k]:
                    # insert it right after the };
                    lines.insert(j + 1, f"        _ = &{var_name};")
        i += 1

    content = '\n'.join(lines)
    
    # Also fix mapper.zig sprintf issues
    content = content.replace('if (static_local_symbol_color.symbol_color.* != 0) static_local_room_color.room_color else @constCast("")', 'if (static_local_symbol_color.symbol_color.* != 0) @as([*c]const u8, @ptrCast(static_local_room_color.room_color)) else @as([*c]const u8, @ptrCast(@constCast(""))) ')

    # Fix gtd.*.ses.*.list[X] -> @ptrCast(gtd.*.ses.*.list[X])
    # But carefully to not double ptrCast
    
    def replace_list(match):
        s = match.group(0)
        if "@ptrCast" in s: return s
        return f"@ptrCast({s})"
        
    content = re.sub(r'gtd\.\*\.ses\.\*\.list\[[^\]]+\]', replace_list, content)
    content = re.sub(r'ses\.\*\.list\[[^\]]+\]', replace_list, content)
    
    content = content.replace("@ptrCast(@ptrCast(", "@ptrCast(")
    
    content = re.sub(r'macro_buf\[@as\(c_int,\s*0\)\]', r'macro_buf[0]', content)


    with open(filename, "w") as f:
        f.write(content)

for f in ["src/buffer.zig", "src/cursor.zig", "src/mapper.zig"]:
    fix_file(f)

print("Done")
