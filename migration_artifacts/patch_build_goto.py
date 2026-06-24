with open("build.zig", "r") as f:
    content = f.read()

content = content.replace(
    '        "src/missing_phase5.c",\n    };\n',
    '        "src/missing_phase5.c",\n        "src/missing_goto.c",\n    };\n'
)

with open("build.zig", "w") as f:
    f.write(content)
