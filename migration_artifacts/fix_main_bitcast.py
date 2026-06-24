import re

file_path = "src/main.zig"
with open(file_path, "r") as f:
    content = f.read()

# Replace [@bitCast(@as(isize, @intCast(expr)))] with [@as(usize, @intCast(expr))]
pattern = r'\[@bitCast\(@as\(isize,\s*@intCast\((.*?)\)\)\)\]'
replacement = r'[@as(usize, @intCast(\1))]'

new_content, count = re.subn(pattern, replacement, content)
print(f"Replaced {count} occurrences in {file_path}")

with open(file_path, "w") as f:
    f.write(new_content)
