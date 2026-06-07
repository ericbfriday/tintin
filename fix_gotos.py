import re

# 1. buffer.c
with open("src/buffer.c", "r") as f:
    text = f.read()
text = text.replace("goto end;", "{ ses->scroll->wrap = wrap; ses->scroll->time = gtd->time; ses->scroll->base = 0; ses->scroll->line = -1; return; }")
text = text.replace("\tend:\n", "")
text = text.replace("goto eof;", "{ buffer_print(ses, 0, 0, 0); restore_pos(gtd->ses); pop_call(); return 1; }")
text = text.replace("\teof:\n", "")
with open("src/buffer.c", "w") as f:
    f.write(text)

# 2. cursor.c
with open("src/cursor.c", "r") as f:
    text = f.read()
text = text.replace("goto end;", "{ while (*ptb && !is_space(*ptb)) ptb++; continue; }")
text = text.replace("\t\t\tend:\n", "")
text = text.replace("\t\t\t\tend:\n", "")
with open("src/cursor.c", "w") as f:
    f.write(text)

# 3. draw.c
with open("src/draw.c", "r") as f:
    text = f.read()
text = text.replace("goto option;", "break;")
text = text.replace("\toption:\n", "")

text = text.replace("\tstart:\n", "\twhile (1) {\n")
text = text.replace("\t\tgoto start;\n", "\t\tcontinue;\n")
text = re.sub(r'(\t\*arg3 = 0;\n)', r'\1\n\tbreak;\n\t}\n', text)
with open("src/draw.c", "w") as f:
    f.write(text)

# 4. screen.c
with open("src/screen.c", "r") as f:
    text = f.read()
text = text.replace("\t\tstart:\n\n", "")
text = text.replace("\t\t\t\t\t\t\tgoto start;\n", "\t\t\t\t\t\t\tcontinue;\n")
with open("src/screen.c", "w") as f:
    f.write(text)
