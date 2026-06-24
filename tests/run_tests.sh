#!/bin/bash

# Simple automated testing framework for TinTin++ Zigified

TT_BIN="./zig-out/bin/tt++"
SMOKE_TEST="tests/smoke_test.tin"

if [ ! -f "$TT_BIN" ]; then
    echo "Error: TinTin++ binary not found at $TT_BIN. Run 'zig build' first."
    exit 1
fi

echo "Running smoke test..."
OUTPUT=$($TT_BIN -H "$SMOKE_TEST" 2>&1)

if echo "$OUTPUT" | grep -q "SMOKE TEST SUCCESS"; then
    echo "Smoke test passed!"
else
    echo "Smoke test failed. Output:"
    echo "$OUTPUT"
    exit 1
fi

echo "Running list tokenize test..."
OUTPUT=$($TT_BIN -H "tests/list_test.tin" 2>&1)

if echo "$OUTPUT" | grep -q "LIST 1: a ; b ; c" && echo "$OUTPUT" | grep -q "LIST 2 ITEMS 1,2,7,8: { a } {"; then
    echo "List tokenize test passed!"
else
    echo "List tokenize test failed. Output:"
    echo "$OUTPUT"
    exit 1
fi

# Add more tests here as they are developed
echo "Running string regression test..."
OUTPUT=$($TT_BIN -H "tests/string_regression.tin" 2>&1)

if echo "$OUTPUT" | grep -q "FORMAT 1: '     hello'" && echo "$OUTPUT" | grep -q "FORMAT 2: 'world     '" && echo "$OUTPUT" | grep -q "FORMAT 3: '    center'" && echo "$OUTPUT" | grep -q "FORMAT 5: 'tru'"; then
    echo "String regression test passed!"
else
    echo "String regression test failed. Output:"
    echo "$OUTPUT"
    exit 1
fi

echo "All tests completed successfully."
exit 0
