import sys
import re
import subprocess
import os

def clean_file(filepath):
    print(f"Cleaning {filepath}...")
    with open(filepath, 'r') as f:
        content = f.read()

    # Find the first 'pub export fn'
    match = re.search(r'^pub export fn ', content, flags=re.MULTILINE)
    if not match:
        print(f"No exported functions found in {filepath}!")
        return

    first_fn_idx = match.start()
    
    # We want to keep everything from first_fn_idx onwards
    code_part = content[first_fn_idx:]

    # Base header
    header = """const std = @import("std");

pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

"""
    
    # Write the initial cleaned file
    with open(filepath, 'w') as f:
        f.write(header + code_part)

    aliases = set()

    # Loop until it compiles or we hit a max loop
    for i in range(50):
        print(f"Iteration {i}: Running zig build...")
        result = subprocess.run(["zig", "build"], capture_output=True, text=True)
        
        if result.returncode == 0:
            print(f"Success! {filepath} compiles.")
            break
            
        stderr = result.stderr
        
        # Look for undeclared identifiers
        # e.g., src/base.zig:14:32: error: use of undeclared identifier 'strlen'
        # e.g., src/base.zig:14:32: error: use of undeclared identifier 'struct_session'
        new_aliases = set()
        
        for line in stderr.split('\n'):
            if filepath in line and "use of undeclared identifier" in line:
                m = re.search(r"use of undeclared identifier '([^']+)'", line)
                if m:
                    ident = m.group(1)
                    if ident not in aliases and ident not in ['std', 'tintin_c']:
                        new_aliases.add(ident)
        
        if not new_aliases:
            print("No new undeclared identifiers found. Build failed for another reason.")
            print(stderr)
            break
            
        aliases.update(new_aliases)
        
        # Add new aliases to the file
        alias_lines = [f"pub const {a} = tintin_c.{a};" for a in sorted(list(aliases))]
        
        new_content = header + "\n" + "\n".join(alias_lines) + "\n\n" + code_part
        with open(filepath, 'w') as f:
            f.write(new_content)
            
    print(f"Finished {filepath}.")

if __name__ == "__main__":
    for f in sys.argv[1:]:
        clean_file(f)
