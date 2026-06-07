import re
import sys

def fix_session(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Fix kill by using a locally declared c_kill
    content = re.sub(r'std\.c\.kill\(', 'c_kill(', content)
    # Add c_kill definition at the top of the file
    if 'extern "c" fn c_kill' not in content:
        content = 'extern "c" fn kill(pid: c_int, sig: c_int) c_int;\nconst c_kill = kill;\n' + content

    # Fix ses.*.list indexing.
    # If list is a pointer to an array or something, let's just use @ptrCast to [*c]struct_listroot
    # Actually, if ses.*.list is [22]... then &ses.*.list[index] ? No, ses.*.list is returning an array.
    # What if we just do: @as([*c]cimport.struct_listroot, @ptrCast(&ses.*.list[@intCast(index_1)]))? No.
    # Let's see how `copy_list` and `init_list` are assigned.
    # newses.*.list[cnt] = copy_list(...)
    # If it says "expected T, found [22]T", it literally means the expression `ses.*.list[@intCast(index_1)]` evaluates to `[22]T`.
    # How could `array[index]` evaluate to `[22]T`? ONLY if it's `array` of arrays.
    # Wait, in C it is: struct listroot *list[LIST_MAX];
    # Did zig translate it as `list: [22][*c]struct_listroot`?
    # Let's just cast it! If it's returning the whole array, maybe it's missing a dereference? `ses.*.list.*[@intCast(index_1)]`
    # Let's try @ptrCast to cast whatever it is to [*c][*c]struct_listroot and then index it!
    # c_list = @as([*c][*c]cimport.struct_listroot, @ptrCast(&ses.*.list)); kill_list(c_list[@intCast(index_1)]);
    content = re.sub(r'kill_list\(ses\.\*\.list\[@intCast\(([^)]+)\)\]\);', r'kill_list(@as([*c][*c]cimport.struct_listroot, @ptrCast(&ses.*.list))[@intCast(\1)]);', content)
    content = re.sub(r'free_list\(ses\.\*\.list\[@intCast\(([^)]+)\)\]\);', r'free_list(@as([*c][*c]cimport.struct_listroot, @ptrCast(&ses.*.list))[@intCast(\1)]);', content)
    content = re.sub(r'newses\.\*\.list\[([^\]]+)\] = copy_list\(([^,]+), tintin_c\.gts\.\*\.list\[([^\]]+)\], ([^)]+)\);', 
                     r'@as([*c][*c]cimport.struct_listroot, @ptrCast(&newses.*.list))[\1] = copy_list(\2, @as([*c][*c]cimport.struct_listroot, @ptrCast(&tintin_c.gts.*.list))[\3], \4);', content)
    content = re.sub(r'newses\.\*\.list\[([^\]]+)\] = init_list\(([^,]+), ([^,]+), ([^)]+)\);', 
                     r'@as([*c][*c]cimport.struct_listroot, @ptrCast(&newses.*.list))[\1] = init_list(\2, \3, \4);', content)

    with open(filepath, 'w') as f:
        f.write(content)

fix_session('src/session.zig')

def fix_data(filepath):
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Remove `pub extern var tintin_c.gts: [*c]struct_session;` and similar
    content = re.sub(r'pub extern var tintin_c\.gts: \[\*c\]struct_session;\n?', '', content)
    content = re.sub(r'pub extern var tintin_c\.gtd: \[\*c\]struct_tintin_data;\n?', '', content)
    content = re.sub(r'pub extern var tintin_c\.[a-zA-Z0-9_]+: \[\*c\][a-zA-Z0-9_]+;\n?', '', content)
    
    with open(filepath, 'w') as f:
        f.write(content)

fix_data('src/data.zig')

