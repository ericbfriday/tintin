with open("src/buffer.c", "r") as f:
    content = f.read()

content = content.replace("goto eof;", "skip_rest = 1;")
content = content.replace("int scroll_size, scroll_cnt, scroll_tmp, scroll_add, scroll_cut, start, end, row;", "int scroll_size, scroll_cnt, scroll_tmp, scroll_add, scroll_cut, start, end, row;\n\tint skip_rest = 0;")
content = content.replace("""		scroll_cnt++;
		scroll_cut = 0;
	}

	while (TRUE)""", """		scroll_cnt++;
		scroll_cut = 0;
	}

	if (!skip_rest) {
	while (TRUE)""")

content = content.replace("""	if (scroll_cnt < ses->scroll->used && ses->scroll->base)
	{
		scroll_tmp = ses->scroll->buffer[scroll_cnt]->height;

		start = 0;
		end   = scroll_tmp - ses->scroll->base;

		buffer_print(ses, scroll_cnt, start, end);
	}

	eof:""", """	if (scroll_cnt < ses->scroll->used && ses->scroll->base)
	{
		scroll_tmp = ses->scroll->buffer[scroll_cnt]->height;

		start = 0;
		end   = scroll_tmp - ses->scroll->base;

		buffer_print(ses, scroll_cnt, start, end);
	}
	} // end if (!skip_rest)""")

with open("src/buffer.c", "w") as f:
    f.write(content)

with open("src/tokenize.c", "r") as f:
    content = f.read()

content = content.replace("goto end;", "return split ? split : token;")
# we don't need the end: label anymore, we can leave it or remove it. Let's comment it out to be safe.
content = content.replace("end:", "// end:")

with open("src/tokenize.c", "w") as f:
    f.write(content)

with open("src/cursor.c", "r") as f:
    content = f.read()

content = content.replace("goto end;", "{ while (*ptb && !is_space(*ptb)) { ptb++; } continue; }")
content = content.replace("end:", "// end:")

with open("src/cursor.c", "w") as f:
    f.write(content)

