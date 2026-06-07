with open('build.zig', 'r') as f:
    text = f.read()

text = text.replace('        .target = target,\n        .optimize = optimize,\n        .target = target,\n        .optimize = optimize,\n', '        .target = target,\n        .optimize = optimize,\n')

with open('build.zig', 'w') as f:
    f.write(text)
