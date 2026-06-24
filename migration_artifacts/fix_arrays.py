import re
import sys

def fix_file(filename):
    with open(filename, 'r') as f:
        content = f.read()

    # We want to safely replace `ptr.*.array[` with `ptr[0].array[`
    # The arrays we know have this problem: list, exit_grid, room_list, vars, cmds
    # We can just match: `\.\*\.(list|exit_grid|room_list|vars|cmds)\[`
    # and replace with: `[0].\1[`
    
    # We must also do this carefully. `ses.*.list[` -> `ses[0].list[`
    # What if it's `foo.*.bar.*.list[`? It becomes `foo.*.bar[0].list[`.
    # That still leaves `foo.*.bar`, but `bar` isn't one of the targeted arrays.
    # Actually, `bar` is `map` or something, which is a pointer! So `foo.*.map` should be `foo[0].map`.
    # To be safe, we can just replace `.\*.` with `[0].` for the specific arrays!
    
    new_content = re.sub(r'\.\*\.(list|exit_grid|room_list|vars|cmds)\[', r'[0].\1[', content)
    
    # What about `ses.*.map.*.room_list[` ?
    # It would become `ses.*.map[0].room_list[`. 
    # `ses.*.map` evaluates to `[*c]struct_map_data`.
    # And then `[0]` on it? Yes, `(ses.*.map)[0]` works in Zig!
    
    with open(filename, 'w') as f:
        f.write(new_content)

for f in ['src/mapper.zig', 'src/main.zig', 'src/event.zig', 'src/tokenize.zig', 'src/regex.zig']:
    fix_file(f)
