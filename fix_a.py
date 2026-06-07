with open('src/vt102_a.c', 'r') as f:
    text = f.read()

text = text.replace('start:\n\n\tpti = hop ? str : old;', '\twhile (hop < 2) {\n\tpti = hop ? str : old;')
text = text.replace('if (++hop == 1)\n\t{\n\t\tgoto start;\n\t}', '\thop++;\n\t}')

with open('src/vt102_a.c', 'w') as f:
    f.write(text)
