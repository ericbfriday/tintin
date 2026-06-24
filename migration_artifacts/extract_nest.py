import re

with open("test_nest_variadic.zig", "r") as f:
    content = f.read()

funcs = [
    "set_nest_node_ses_inner",
    "add_nest_node_ses_inner",
    "set_nest_node_inner",
    "add_nest_node_inner"
]

extracted = ""

for func in funcs:
    match = re.search(r'pub export fn ' + func + r'.*?^\}', content, re.MULTILINE | re.DOTALL)
    if match:
        func_content = match.group(0)
        func_content = re.sub(r'ses\.\*\.list\[LIST_VARIABLE\]', r'@as([*c][*c]struct_listroot, @ptrCast(&ses.*.list))[LIST_VARIABLE]', func_content)
        extracted += func_content + "\n\n"

wrappers = """
pub export fn set_nest_node_ses(ses: [*c]struct_session, arg1: [*c]u8, format: [*c]const u8, ...) [*c]struct_listnode {
    var args = @cVaStart();
    var arg2: [*c]u8 = null;
    _ = vasprintf(&arg2, format, args);
    @cVaEnd(&args);
    return set_nest_node_ses_inner(ses, arg1, arg2);
}

pub export fn add_nest_node_ses(ses: [*c]struct_session, arg1: [*c]u8, format: [*c]const u8, ...) [*c]struct_listnode {
    var args = @cVaStart();
    var arg2: [*c]u8 = null;
    _ = vasprintf(&arg2, format, args);
    @cVaEnd(&args);
    return add_nest_node_ses_inner(ses, arg1, arg2);
}

pub export fn set_nest_node(root: [*c]struct_listroot, arg1: [*c]u8, format: [*c]const u8, ...) [*c]struct_listnode {
    var args = @cVaStart();
    var arg2: [*c]u8 = null;
    _ = vasprintf(&arg2, format, args);
    @cVaEnd(&args);
    return set_nest_node_inner(root, arg1, arg2);
}

pub export fn add_nest_node(root: [*c]struct_listroot, arg1: [*c]u8, format: [*c]const u8, ...) [*c]struct_listnode {
    var args = @cVaStart();
    var arg2: [*c]u8 = null;
    _ = vasprintf(&arg2, format, args);
    @cVaEnd(&args);
    return add_nest_node_inner(root, arg1, arg2);
}
"""

with open("src/nest.zig", "a") as f:
    f.write("\n" + extracted + wrappers)

