with open('src/update.c', 'r') as f:
    text = f.read()

text = text.replace('; ses ;', '; ses != NULL ;')
text = text.replace('; buddy ;', '; buddy != NULL ;')
text = text.replace('; timer ;', '; timer != 0 ;')  # Just in case

with open('src/update.c', 'w') as f:
    f.write(text)
