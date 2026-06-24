import os

def remove_debug_prints_zig(filename):
    with open(filename, 'r') as f:
        lines = f.readlines()
    
    with open(filename, 'w') as f:
        for line in lines:
            if '@import("std").debug.print("DEBUG:' not in line:
                f.write(line)

def remove_debug_prints_c(filename):
    with open(filename, 'r') as f:
        lines = f.readlines()
    
    with open(filename, 'w') as f:
        for line in lines:
            if 'printf("DEBUG:' not in line and 'fprintf(stderr, "DEBUG:' not in line:
                f.write(line)

remove_debug_prints_zig('src/data.zig')
remove_debug_prints_zig('src/config.zig')
remove_debug_prints_c('src/missing_phase5.c')

