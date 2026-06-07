with open('fix_all.sh', 'r') as f:
    text = f.read()

text = text.replace('zig translate-c -I src -I /opt/homebrew/include -lc src/vt102.c > src/vt102.zig\n', 
                    'zig translate-c -I src -I /opt/homebrew/include -lc src/vt102_a.c > src/vt102_a.zig\nzig translate-c -I src -I /opt/homebrew/include -lc src/vt102_b.c > src/vt102_b.zig\n')
text = text.replace('src/vt102.zig', 'src/vt102_a.zig src/vt102_b.zig')

with open('fix_all.sh', 'w') as f:
    f.write(text)
