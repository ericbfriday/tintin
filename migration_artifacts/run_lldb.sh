lldb --batch -o "process handle SIGSEGV -s true -n true -p true" -o "run < /dev/null" -o "bt" -o "quit" ./zig-out/bin/tt++
