import re

def main():
    filepath = "src/regex.zig"
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
        
    # Pattern to match:
    # gtd.*.args[
    #     @bitCast(@as(isize, @intCast(if (@"var" < @as(c_int, 99)) blk: {
    #         const ref = &@"var";
    #         const tmp = ref.*;
    #         ref.* += 1;
    #         break :blk tmp;
    #     } else @"var")))
    # ] = if (arg < @as(c_int, 99)) blk: {
    #     const ref = &arg;
    #     const tmp = ref.*;
    #     ref.* += 1;
    #     break :blk tmp;
    # } else arg;
    
    # We will use a regex with re.VERBOSE and re.DOTALL to match it regardless of indentation.
    pattern = re.compile(
        r'gtd\.\*\.args\['
        r'\s*@bitCast\(@as\(isize,\s*@intCast\(if\s+\(@"var"\s+<\s+@as\(c_int,\s*99\)\)\s*blk:\s*\{\s*const\s+ref\s*=\s*&@"var";\s*const\s+tmp\s*=\s*ref\.\*;\s*ref\.\*\s*\+=\s*1;\s*break\s*:\s*blk\s+tmp;\s*\}\s*else\s+@"var"\)\)\)\s*\]'
        r'\s*=\s*if\s*\(arg\s+<\s+@as\(c_int,\s*99\)\)\s*blk:\s*\{\s*const\s+ref\s*=\s*&arg;\s*const\s+tmp\s*=\s*ref\.\*;\s*ref\.\*\s*\+=\s*1;\s*break\s*:\s*blk\s+tmp;\s*\}\s*else\s+arg;',
        re.DOTALL
    )
    
    replacement = """{
                                    const idx = @"var";
                                    if (@"var" < @as(c_int, 99)) {
                                        @"var" += 1;
                                    }
                                    const val = arg;
                                    if (arg < @as(c_int, 99)) {
                                        arg += 1;
                                    }
                                    @as([*c]c_int, @ptrCast(&gtd.*.args))[@intCast(idx)] = val;
                                }"""
                                
    new_content, count = pattern.subn(replacement, content)
    print(f"Replaced {count} occurrences in regex.zig")
    
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(new_content)

if __name__ == "__main__":
    main()
