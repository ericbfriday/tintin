#!/bin/bash
set -e

# Regenerate pristine files
for f in event mapper tokenize main regex; do
    echo "Translating $f.c..."
    zig translate-c src/$f.c -I src -I /opt/homebrew/include -lc > src/$f.zig
done

