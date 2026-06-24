#!/bin/bash

FILES=("main" "draw" "help" "tables" "utf8")

echo "Starting Phase 9 Translation..."

for f in "${FILES[@]}"; do
    echo "Translating $f.c..."
    zig translate-c src/$f.c -lc -Isrc -I/opt/homebrew/include > src/$f.zig
done

echo "Running post-processing..."
python3 fix_absolute_final.py src/main.zig src/draw.zig src/help.zig src/tables.zig src/utf8.zig

echo "Done!"
