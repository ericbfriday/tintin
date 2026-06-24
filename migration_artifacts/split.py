import re

with open('src/vt102.c', 'r') as f:
    content = f.read()

start = content.find('int interpret_vt102_codes')

with open('src/vt102_a.c', 'w') as f:
    f.write(content[:start])

with open('src/vt102_b.c', 'w') as f:
    f.write('#include "tintin.h"\n')
    f.write(content[start:])

