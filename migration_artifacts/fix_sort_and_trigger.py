import re

def fix_sort():
    filepath = "src/sort.zig"
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
        
    # Standardize to LF line endings
    content = content.replace("\r\n", "\n")
        
    # Replace @intCast(!(x != 0)) and @intCast(!(y != 0)) with @intFromBool
    content = re.sub(r'@intCast\(!\(([a-zA-Z0-9_]+) != 0\)\)', r'@intFromBool(!(\1 != 0))', content)
    
    # For quadsort32:
    target_32_full = 'var pta: [*c]c_int = @ptrCast(@alignCast(array));\n    _ = &pta;\n    if (nmemb < @as(usize, 32)) {\n        const swap = if (true) @compileError("unable to translate variable declaration type");'
    replacement_32_full = 'var pta: [*c]c_int = @ptrCast(@alignCast(array));\n    _ = &pta;\n    if (nmemb < @as(usize, 32)) {\n        var swap_buf: [32]c_int = undefined;\n        const swap = @as([*c]c_int, @ptrCast(&swap_buf));'
    content = content.replace(target_32_full, replacement_32_full)
    
    # For quadsort64:
    target_64_full = 'var pta: [*c]c_longlong = @ptrCast(@alignCast(array));\n    _ = &pta;\n    if (nmemb < @as(usize, 32)) {\n        const swap = if (true) @compileError("unable to translate variable declaration type");'
    replacement_64_full = 'var pta: [*c]c_longlong = @ptrCast(@alignCast(array));\n    _ = &pta;\n    if (nmemb < @as(usize, 32)) {\n        var swap_buf: [32]c_longlong = undefined;\n        const swap = @as([*c]c_longlong, @ptrCast(&swap_buf));'
    content = content.replace(target_64_full, replacement_64_full)
    
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)
    print("Fixed sort.zig")

def fix_trigger():
    filepath = "src/trigger.zig"
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
        
    content = content.replace("\r\n", "\n")
        
    # Replace @intCast(@as(c_int, node.*.arg1.*) == @as(c_int, '~')) with @intFromBool(node.*.arg1.* == '~')
    target = '@intCast(@as(c_int, node.*.arg1.*) == @as(c_int, \'~\'))'
    replacement = '@intFromBool(node.*.arg1.* == \'~\')'
    content = content.replace(target, replacement)
    
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)
    print("Fixed trigger.zig")

if __name__ == "__main__":
    fix_sort()
    fix_trigger()
