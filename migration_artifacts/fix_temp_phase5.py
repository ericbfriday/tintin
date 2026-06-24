import re

with open('src/temp_phase5.c', 'r') as f:
    content = f.read()

# Replace all goto with dummy function calls
content = re.sub(r'goto end;', r'ZIG_GOTO_END();', content)
content = re.sub(r'goto eof;', r'ZIG_GOTO_EOF();', content)
content = re.sub(r'goto start;', r'ZIG_GOTO_START();', content)
content = re.sub(r'goto display;', r'ZIG_GOTO_DISPLAY();', content)

# Remove the labels
content = re.sub(r'^\s*end:\s*$', r'/* end: */', content, flags=re.MULTILINE)
content = re.sub(r'^\s*eof:\s*$', r'/* eof: */', content, flags=re.MULTILINE)
content = re.sub(r'^\s*start:\s*$', r'/* start: */', content, flags=re.MULTILINE)
content = re.sub(r'^\s*display:\s*$', r'/* display: */', content, flags=re.MULTILINE)

# Ensure the dummy functions are declared at the top
header = """
void ZIG_GOTO_END(void);
void ZIG_GOTO_EOF(void);
void ZIG_GOTO_START(void);
void ZIG_GOTO_DISPLAY(void);
"""

with open('src/temp_phase5.c', 'w') as f:
    f.write(header + content)
