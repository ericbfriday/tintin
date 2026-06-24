with open("build.zig", "r") as f:
    content = f.read()
content = content.replace('        "src/missing_goto.c",\n', '')
with open("build.zig", "w") as f:
    f.write(content)
