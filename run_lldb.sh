#!/bin/bash
lldb --batch -o "run tests/smoke_test.tin" -o "bt" -o "quit" ./zig-out/bin/tt++ > lldb.log 2>&1
