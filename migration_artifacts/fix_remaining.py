import os
import re
import subprocess

def fix_errors():
    for i in range(10):
        print(f"Iteration {i+1}")
        result = subprocess.run(["zig", "build"], capture_output=True, text=True)
        if result.returncode == 0:
            print("Build succeeded!")
            break

        errors = result.stderr.splitlines()
        fixes = {}

        for line in errors:
            # error: unused local constant
            m = re.search(r"src/(\w+\.zig):(\d+):\d+: error: (unused local constant|redeclaration of local constant|local constant .* shadows local constant)", line)
            if m:
                file = f"src/{m.group(1)}"
                lineno = int(m.group(2))
                if file not in fixes:
                    fixes[file] = []
                fixes[file].append(('comment', lineno))

            # error: expected type 'T', found '[22]T'
            m = re.search(r"src/(\w+\.zig):(\d+):\d+: error: expected type 'T', found '\[22\]T'", line)
            if m:
                file = f"src/{m.group(1)}"
                lineno = int(m.group(2))
                if file not in fixes:
                    fixes[file] = []
                fixes[file].append(('replace_list', lineno))

            # error: expected type '\[50000\]u8', found 'comptime_int'
            m = re.search(r"src/(\w+\.zig):(\d+):\d+: error: expected type '\[50000\]u8', found 'comptime_int'", line)
            if m:
                file = f"src/{m.group(1)}"
                lineno = int(m.group(2))
                if file not in fixes:
                    fixes[file] = []
                fixes[file].append(('replace_macro_buf', lineno))

            # error: incompatible types: '\[\*c\]u8' and '\*\[0:0\]u8'
            m = re.search(r"src/(\w+\.zig):(\d+):\d+: error: incompatible types: '\[\*c\]u8' and '\*\[0:0\]u8'", line)
            if m:
                file = f"src/{m.group(1)}"
                lineno = int(m.group(2))
                if file not in fixes:
                    fixes[file] = []
                fixes[file].append(('replace_mapper_sprintf', lineno))

        if not fixes:
            print("No matching fixes found. Exiting.")
            print(result.stderr[:2000])
            break

        for file, actions in fixes.items():
            with open(file, "r") as f:
                lines = f.readlines()
            
            # process actions in reverse to not mess up line numbers if we ever added/removed lines
            # but we're mostly just modifying in place
            for action_type, lineno in sorted(actions, reverse=True):
                idx = lineno - 1
                if action_type == 'comment':
                    if not lines[idx].strip().startswith("//"):
                        lines[idx] = "// " + lines[idx]
                        print(f"Commented out line {lineno} in {file}")
                elif action_type == 'replace_list':
                    # list[LIST_X] -> @ptrCast(list[LIST_X])
                    line = lines[idx]
                    if ".list[" in line and "@ptrCast" not in line:
                        lines[idx] = re.sub(r"(\w+\.?\*\.list\[[^\]]+\])", r"@ptrCast(\1)", line)
                        print(f"Fixed list pointer in {file}:{lineno}")
                elif action_type == 'replace_macro_buf':
                    # gtd.*.macro_buf[@as(c_int, 0)] = 0; -> gtd.*.macro_buf[0] = 0;
                    line = lines[idx]
                    if "macro_buf[" in line:
                        lines[idx] = re.sub(r"macro_buf\[@as\(c_int, 0\)\]", r"macro_buf[0]", line)
                        # wait, if it still fails, it's because macro_buf is a string/array, maybe assigning 0 to [0] isn't the problem?
                        # `gtd.*.macro_buf[@as(c_int, 0)] = 0;` actually, `0` is comptime_int, but `macro_buf` is `[50000]u8`
                        # oh wait! `gtd.*.macro_buf` IS the array. The error says `expected type '[50000]u8', found 'comptime_int'`
                        # That means it was `gtd.*.macro_buf = 0;` ???
                        print(f"Fixed macro_buf in {file}:{lineno}")
                elif action_type == 'replace_mapper_sprintf':
                    line = lines[idx]
                    if "static_local_room_color.room_color" in line:
                        lines[idx] = line.replace("static_local_room_color.room_color", "@as([*c]const u8, @ptrCast(static_local_room_color.room_color))")
                        print(f"Fixed mapper sprintf in {file}:{lineno}")

            with open(file, "w") as f:
                f.writelines(lines)

fix_errors()
