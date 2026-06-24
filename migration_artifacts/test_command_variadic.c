
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
