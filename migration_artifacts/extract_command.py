import subprocess
import re

c_code = """
#include "tintin.h"
#include <stdarg.h>

struct session *execute_inner(struct session *ses, char *format, char *arg2)
{
    char *buffer = arg2;

    push_call("execute(%p,%p,...)",ses,format);

    if (buffer && *buffer)
    {
        if (*buffer != gtd->tintin_char)
        {
            *buffer = gtd->tintin_char;
        }
        get_arg_all(ses, buffer, buffer, FALSE);
    }

    ses = script_driver(ses, LIST_COMMAND, NULL, buffer);

    free(buffer);

    pop_call();
    return ses;
}

struct session *command_inner(struct session *ses, COMMAND *cmd, char *format, char *arg2)
{
    char *arg1, *arg2_stack, *arg3, *arg4, *buffer;

    buffer = arg2;

    push_call("command(%p,%p,%p,...)",ses,cmd,format);

    arg1 = str_alloc_stack(0);
    arg2_stack = str_alloc_stack(0);
    arg3 = str_alloc_stack(0);
    arg4 = "";

    ses = cmd(ses, buffer, arg1, arg2_stack, arg3, arg4);

    free(buffer);

    pop_call();

    return ses;
}
"""

with open("test_command_variadic.c", "w") as f:
    f.write(c_code)

subprocess.run(["zig", "translate-c", "-I", "src", "-I", "/opt/homebrew/include", "-lc", "test_command_variadic.c"], stdout=open("test_command_variadic.zig", "w"), check=True)

with open("test_command_variadic.zig", "r") as f:
    content = f.read()

funcs = [
    "execute_inner",
    "command_inner"
]

extracted = ""

for func in funcs:
    match = re.search(r'pub export fn ' + func + r'.*?^\}', content, re.MULTILINE | re.DOTALL)
    if match:
        extracted += match.group(0) + "\n\n"

wrappers = """
pub export fn execute(ses: [*c]struct_session, format: [*c]const u8, ...) [*c]struct_session {
    var args = @cVaStart();
    var arg2: [*c]u8 = null;
    _ = vasprintf(&arg2, format, args);
    @cVaEnd(&args);
    return execute_inner(ses, @as([*c]u8, @ptrCast(@constCast(format))), arg2);
}

pub export fn command(ses: [*c]struct_session, cmd: ?*const COMMAND, format: [*c]const u8, ...) [*c]struct_session {
    var args = @cVaStart();
    var arg2: [*c]u8 = null;
    _ = vasprintf(&arg2, format, args);
    @cVaEnd(&args);
    return command_inner(ses, cmd, @as([*c]u8, @ptrCast(@constCast(format))), arg2);
}
"""

with open("src/command.zig", "a") as f:
    f.write("\n" + extracted + wrappers)

