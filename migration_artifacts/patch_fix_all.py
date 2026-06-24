with open('fix_all.sh', 'r') as f:
    lines = f.readlines()

new_files = ['input', 'cursor', 'line', 'text', 'screen', 'draw', 'show', 'history', 'buffer']

# Insert translate-c commands before the python script call
insert_idx = 0
for i, line in enumerate(lines):
    if line.startswith('python3 fix_absolute_final.py'):
        insert_idx = i
        break

for file in new_files:
    lines.insert(insert_idx, f"zig translate-c -I src -I /opt/homebrew/include -lc src/{file}.c > src/{file}.zig\n")
    insert_idx += 1

# Add to python3 fix_absolute_final.py line
for i, line in enumerate(lines):
    if line.startswith('python3 fix_absolute_final.py'):
        new_line = line.strip()
        for file in new_files:
            new_line += f" src/{file}.zig"
        new_line += '\n'
        lines[i] = new_line
        break

with open('fix_all.sh', 'w') as f:
    f.writelines(lines)
print("fix_all.sh patched")
