import re

with open("src/missing_variadics.c", "r") as f:
    content = f.read()

# 1. Replace signatures
# e.g. void tintin_printf(struct session *ses, char *format, ...)
# -> void tintin_printf_impl(struct session *ses, char *buffer_in)
# We will use buffer_in to avoid conflicts with local "char *buffer;"
content = re.sub(
    r'\b([a-zA-Z0-9_]+)\s*\((.*?)(?:char\s*\*format|char\s*\*fmt)\s*,\s*\.\.\.\s*\)',
    r'\1_impl(\2char *buffer_in)',
    content
)

# 2. Comment out va_list, va_start, va_end
content = re.sub(r'(\bva_list\s+[a-zA-Z0-9_]+;)', r'// \1', content)
content = re.sub(r'(\bva_start\s*\(.*?\);)', r'// \1', content)
content = re.sub(r'(\bva_end\s*\(.*?\);)', r'// \1', content)

# 3. Replace vasprintf
# e.g. if (vasprintf(&buffer, format, args) == -1)
# We replace it with an assignment: buffer = buffer_in;
# But there's usually an error check. We can just use a regex to match the vasprintf line
# and if it's in an if statement, we can hack it.
content = re.sub(r'if\s*\(\s*vasprintf\s*\(\s*&([a-zA-Z0-9_]+)\s*,.*?\)\s*==\s*-1\s*\)', r'if (0) /* vasprintf removed */ ', content)
content = re.sub(r'vasprintf\s*\(\s*&([a-zA-Z0-9_]+)\s*,.*?\)\s*;\s*', r'', content)

# Also we must assign the local buffer pointer to buffer_in!
# We can just insert "buf = buffer_in;" right after the commented va_start.
def insert_assignment(match):
    # match.group(0) is the commented va_start line
    return match.group(0) + '\n\t/* HACK */\n'

# Wait, we need to know the name of the local variable (buffer or buf).
# Let's just do a manual assignment for the 3 common names.
content = content.replace('// va_start', 'buf = buffer_in; buffer = buffer_in; // va_start')

# 4. Remove free(buf) and free(buffer) because buffer_in is managed by the caller
content = re.sub(r'\bfree\s*\(\s*buf\s*\)\s*;', '// free(buf);', content)
content = re.sub(r'\bfree\s*\(\s*buffer\s*\)\s*;', '// free(buffer);', content)

with open("src/missing_variadics_prepared.c", "w") as f:
    f.write(content)

print("missing_variadics_prepared.c created!")
