#!/bin/bash
FILES=("trigger" "substitute" "event" "regex" "tokenize" "scan" "sort" "split")
for f in "${FILES[@]}"; do
    echo "Translating $f.c..."
    zig translate-c src/$f.c -lc -Isrc -I/opt/homebrew/include > src/$f.zig
done
echo "Done translating."
