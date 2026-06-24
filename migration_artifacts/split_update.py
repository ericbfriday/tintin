import re

with open('src/update.c', 'r') as f:
    content = f.read()

# Find a good function to split at near the middle. Let's find "void *check_all_events"
start = content.find('void *check_all_events')

with open('src/update_a.c', 'w') as f:
    f.write(content[:start])

with open('src/update_b.c', 'w') as f:
    f.write('#include "tintin.h"\n')
    f.write(content[start:])

