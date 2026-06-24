with open('src/update.c', 'r') as f:
    lines = f.readlines()

# Test first half
with open('src/test_update.c', 'w') as f:
    for i in range(600):
        f.write(lines[i])

