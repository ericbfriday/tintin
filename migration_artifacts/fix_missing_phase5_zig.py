import re

with open('src/missing_phase5.zig', 'r') as f:
    content = f.read()

# 1. ZIG_GOTO_EOF in show_buffer
eof_logic = """
            tintin_c.buffer_print(ses, 0, 0, 0);
            tintin_c.restore_pos(tintin_c.gtd.*.ses);
            if (tintin_c.gtd.*.screen.*.rows != ses.*.split.*.bot_row) {
                ses.*.flags &= ~(@as(c_int, 1) << @intCast(@as(c_int, 7)));
            }
            if ((tintin_c.gtd.*.screen.*.flags & (@as(c_int, 1) << @intCast(@as(c_int, 6)))) != 0) {
                tintin_c.gtd.*.screen.*.flags |= @as(c_int, 1) << @intCast(@as(c_int, 7));
            }
            tintin_c.pop_call();
            return tintin_c.TRUE;
"""
content = re.sub(r'\s*ZIG_GOTO_EOF\(\);', eof_logic, content)

# 2. ZIG_GOTO_END in check_buffer
end_logic_check_buffer = """
            ses.*.scroll.*.wrap = wrap;
            ses.*.scroll.*.time = tintin_c.gtd.*.time;
            ses.*.scroll.*.base = 0;
            ses.*.scroll.*.line = -1;
            return;
"""
# check_buffer is around line 8500 in original, but in the cleaned file it's earlier.
# ZIG_GOTO_END in check_buffer replaces ZIG_GOTO_END();
# Wait, ZIG_GOTO_END is ALSO used in cursor_input_tab_add!
# So we need to be careful!
