import re
with open('src/session.c', 'r') as f:
    content = f.read()

# Replace reconnect label with while(1) {
content = re.sub(r'\treconnect:\n\n\tsock = connect_mud', r'\twhile (1) {\n\tsock = connect_mud', content)

# Replace goto reconnect with continue
content = re.sub(r'goto reconnect;', r'continue;', content)

# Close the while loop before the final block
content = re.sub(r'\t\tcontinue;\n\t\t}\n\t}\n\n\tif \(ses->connect_error\)', r'\t\tcontinue;\n\t\t}\n\t}\n\tbreak;\n\t}\n\n\tif (ses->connect_error)', content)

with open('src/session.c', 'w') as f:
    f.write(content)

