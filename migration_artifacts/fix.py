with open('src/vt102_b.c', 'r') as f:
    text = f.read()

text = text.replace('for (len = 2 ; str[len] ; len++)', 'for (len = 2 ; str[len] != 0 ; len++)')
text = text.replace('goto end;', 'pop_call(); return 0;')
text = text.replace('\tend:\n\n\tpop_call();', '\tpop_call();')
text = text.replace('start:\n\tpti = str;', '\twhile (hop < 2) {\n\t\tpti = str;')
text = text.replace('if (++hop == 1)\n\t{\n\t\tgoto start;\n\t}', '\t\thop++;\n\t}')
text = text.replace('\t\t\tif (*pti++ == \'m\')\n\t\t\t{\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}', '\t\t\tif (*pti++ == \'m\')\n\t\t\t{\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}')

with open('src/vt102_b.c', 'w') as f:
    f.write(text)
