#!/bin/bash

FILES=("chat" "msdp" "port" "mccp" "files" "log" "debug" "daemon" "banner" "forkpty")

echo "Starting Phase 8 Translation..."

for f in "${FILES[@]}"; do
    echo "Translating $f.c..."
    zig translate-c src/$f.c -lc -Isrc -I/opt/homebrew/include > src/$f.zig
done

echo "Running post-processing..."
python3 fix_absolute_final.py src/chat.zig src/msdp.zig src/port.zig src/mccp.zig src/files.zig src/log.zig src/debug.zig src/daemon.zig src/banner.zig src/forkpty.zig

echo "Done!"
