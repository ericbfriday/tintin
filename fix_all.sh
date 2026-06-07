#!/bin/bash
zig translate-c -I src -I /opt/homebrew/include -lc src/variable.c > src/variable.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/nest.c > src/nest.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/parse.c > src/parse.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/command.c > src/command.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/net.c > src/net.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/ssl.c > src/ssl.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/telopt_client.c > src/telopt_client.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/telopt_server.c > src/telopt_server.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/terminal.c > src/terminal.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/vt102_a.c > src/vt102_a.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/vt102_b.c > src/vt102_b.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/update_a.c > src/update_a.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/update_b.c > src/update_b.zig

zig translate-c -I src -I /opt/homebrew/include -lc src/input.c > src/input.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/cursor.c > src/cursor.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/line.c > src/line.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/text.c > src/text.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/screen.c > src/screen.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/draw.c > src/draw.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/show.c > src/show.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/history.c > src/history.zig
zig translate-c -I src -I /opt/homebrew/include -lc src/buffer.c > src/buffer.zig
python3 fix_absolute_final.py src/variable.zig src/nest.zig src/parse.zig src/command.zig src/net.zig src/ssl.zig src/telopt_client.zig src/telopt_server.zig src/terminal.zig src/vt102_a.zig src/vt102_b.zig src/update_a.zig src/update_b.zig src/input.zig src/cursor.zig src/line.zig src/text.zig src/screen.zig src/draw.zig src/show.zig src/history.zig src/buffer.zig
python3 extract_nest.py
python3 extract_command.py
zig build
