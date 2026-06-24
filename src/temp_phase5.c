
void ZIG_GOTO_END(void);
void ZIG_GOTO_EOF(void);
void ZIG_GOTO_START(void);
void ZIG_GOTO_DISPLAY(void);
#include "tintin.h"

// Forward declarations for missing symbols
extern void buffer_print(struct session *ses, int index, int start, int end);

extern void string_to_stamp(struct session *ses, long long flags, char *in, char *out);
extern void string_to_font(struct session *ses, long long flags, char *in, char *out);

// --- Extracted from src/buffer.c ---

void check_buffer(struct session *ses)
{
	struct buffer_data *buffer;
	char temp[STRING_SIZE];
	int index, wrap;

	if (!HAS_BIT(ses->scroll->flags, SCROLL_FLAG_RESIZE))
	{
		return;
	}

	DEL_BIT(ses->scroll->flags, SCROLL_FLAG_RESIZE);

	wrap = get_scroll_cols(ses);

	if (ses->scroll->width)
	{
		if (wrap == ses->scroll->wrap)
		{
			return;
		}

		if (ses->scroll->width < ses->scroll->wrap && ses->scroll->width < wrap)
		{
			ZIG_GOTO_END();
		}
	}

	ses->scroll->width = 0;

	for (index = ses->scroll->used - 1 ; index >= 0 ; index--)
	{
		buffer = ses->scroll->buffer[index];

		if (buffer->width < wrap && buffer->width < ses->scroll->wrap)
		{
			buffer->height = buffer->lines;
		}
		else
		{
			buffer->lines = word_wrap_split(ses, buffer->str, temp, wrap, 0, 0, FLAG_NONE, &buffer->height, &buffer->width);
		}

		if (ses->scroll->width < buffer->width)
		{
			ses->scroll->width = buffer->width;
		}
	}
/* end: */
	ses->scroll->wrap = wrap;
	ses->scroll->time = gtd->time;
	ses->scroll->base = 0;
	ses->scroll->line = -1;

	return;
}

int show_buffer(struct session *ses)
{
	int scroll_size, scroll_cnt, scroll_tmp, scroll_add, scroll_cut, start, end, row;

	if (ses != gtd->ses && !HAS_BIT(ses->flags, SES_FLAG_SNOOPSCROLL))
	{
		return TRUE;
	}

	push_call("show_buffer(%p)",ses);

	check_buffer(ses);

	scroll_size = get_scroll_rows(ses);
	scroll_add  = 0;
	scroll_cnt  = URANGE(0, ses->scroll->line, ses->scroll->used - 1);
	scroll_cut  = 0;

	if (ses->scroll->base)
	{
		scroll_add -= ses->scroll->base;
	}

	// scroll_cut is cut from top line

	while (TRUE)
	{
		scroll_tmp = ses->scroll->buffer[scroll_cnt]->height;

		if (scroll_add + scroll_tmp >= scroll_size)
		{
			if (scroll_add + scroll_tmp == scroll_size)
			{
				scroll_add += scroll_tmp;
			}
			else
			{
				scroll_cut = scroll_size - scroll_add;
			}
			break;
		}

		scroll_add += scroll_tmp;

		if (scroll_cnt == 0) // home
		{
			erase_scroll_region(ses);

			break;
		}

		scroll_cnt--;
	}

	save_pos(gtd->ses);

	if (scroll_cnt == 0) // home
	{
		row = ses->split->bot_row - scroll_add;
	}
	else
	{
		row = ses->split->top_row;
	}
	goto_pos(ses, row, ses->split->top_col);

	if (IS_SPLIT(ses))
	{
		SET_BIT(ses->flags, SES_FLAG_READMUD);
	}

	// scroll_cut is taken from top line
	// scroll_base is taken from the bot line

	if (scroll_cut)
	{
		scroll_tmp = ses->scroll->buffer[scroll_cnt]->height;

		// bottom

		if (scroll_cut == scroll_size)
		{
			start = scroll_tmp - scroll_cut;
			end   = scroll_tmp;

			buffer_print(ses, scroll_cnt, start, end);
		}

		// middle chunk

		else if (scroll_cut > scroll_size)
		{
			start = scroll_tmp - scroll_cut;
			end   = scroll_tmp - scroll_cut + scroll_size;

			buffer_print(ses, scroll_cnt, start, end);

			ZIG_GOTO_EOF();
		}

		// top chunk

		else if (scroll_add == 0)
		{
			start = ses->scroll->base;
			end   = scroll_tmp - scroll_cut;

			buffer_print(ses, scroll_cnt, start, end);

			ZIG_GOTO_EOF();
		}

		// bot chunk

		else
		{
			start = scroll_tmp - scroll_cut;
			end   = scroll_tmp;

			buffer_print(ses, scroll_cnt, start, end);
		}
		scroll_cnt++;
		scroll_cut = 0;
	}

	while (TRUE)
	{
		if (scroll_cnt == ses->scroll->used)
		{
			break;
		}

		scroll_tmp = ses->scroll->buffer[scroll_cnt]->height;

		if (scroll_add - scroll_tmp < 0)
		{
			break;
		}

		scroll_add -= scroll_tmp;

		start = 0;
		end   = scroll_tmp;

		buffer_print(ses, scroll_cnt, start, end);

		scroll_cnt++;
	}

	if (scroll_cnt < ses->scroll->used && ses->scroll->base)
	{
		scroll_tmp = ses->scroll->buffer[scroll_cnt]->height;

		start = 0;
		end   = scroll_tmp - ses->scroll->base;

		buffer_print(ses, scroll_cnt, start, end);
	}
/* eof: */
	// prompt

	buffer_print(ses, 0, 0, 0);

	restore_pos(gtd->ses);

	if (IS_SPLIT(ses))
	{
		DEL_BIT(ses->flags, SES_FLAG_READMUD);
	}

	if (HAS_BIT(gtd->screen->flags, SCREEN_FLAG_SCROLLMODE))
	{
		SET_BIT(gtd->screen->flags, SCREEN_FLAG_SCROLLUPDATE);
	}

	pop_call();
	return TRUE;
}

// --- Extracted from src/cursor.c ---

int cursor_input_tab_add(int flag)
{
	char tab[BUFFER_SIZE];
	struct listroot *root = gtd->ses->list[LIST_COMMAND];
	struct listnode *node;
	int scroll_cnt, tab_len, tail_len;
	char *ptb, *ptt, *tail;

	tail     = root->list[0]->arg1;
	tail_len = str_len(tail);

	if (root->list[root->used - 1]->val32[0])
	{
		scroll_cnt = UMIN(root->list[root->used - 1]->val32[0], gtd->ses->list[LIST_HISTORY]->used - 1);
	}
	else
	{
		scroll_cnt = gtd->ses->list[LIST_HISTORY]->used - 1;
	}

	for ( ; scroll_cnt > 0 ; scroll_cnt--)
	{
		ptb = gtd->ses->list[LIST_HISTORY]->list[scroll_cnt]->arg1;

		while (*ptb)
		{
			while (*ptb)
			{
				switch (*ptb)
				{
					case ' ':
					case '[':
					case ']':
					case '"':
					case ':':
					case '\t':
					case '\n':
					case '\r':
					case '\v':
					case '\f':
						ptb++;
						continue;
				}
				break;
			}

			if (HAS_BIT(flag, TAB_FLAG_CASELESS))
			{
				if (strncasecmp(ptb, tail, tail_len) != 0)
				{
					ZIG_GOTO_END();
				}
			}
			else
			{
				if (*ptb != *tail || strncmp(ptb, tail, tail_len) != 0)
				{
					ZIG_GOTO_END();
				}
			}
			ptt = tab;

			for (tab_len = 0 ; tab_len < tail_len ; tab_len++)
			{
				*ptt++ = *ptb++;
			}

			while (*ptb && *ptb != ' ')
			{
				switch (*ptb)
				{
					case ';':
					case '.':
					case ',':
					case '!':
					case '?':
					case ':':
					case '"':
					case '[':
					case ']':
						*ptt++ = 0;
						ptb++;
						break;

					default:
						*ptt++ = *ptb++;
						break;
				}
			}
			*ptt = 0;

			if (search_node_list(gtd->ses->list[LIST_COMMAND], tab))
			{
				ZIG_GOTO_END();
			}

			node = create_node_list(gtd->ses->list[LIST_COMMAND], tab, "", "", "");

			node->val32[0] = scroll_cnt;

			if (HAS_BIT(flag, TAB_FLAG_FORWARD))
			{
				return TRUE;
			}

			if (root->used > 100)
			{
				return FALSE;
			}
/* end: */
			while (*ptb && !is_space(*ptb))
			{
				ptb++;
			}
		}
	}
	return FALSE;
}

int cursor_scrollback_tab_add(int flag)
{
	char tab[BUFFER_SIZE], buf[BUFFER_SIZE];
	struct listroot *root = gtd->ses->list[LIST_COMMAND];
	struct listnode *node;
	int scroll_cnt, tab_len, tail_len;
	char *ptb, *ptt, *tail;

	tail     = root->list[0]->arg1;
	tail_len = str_len(tail);

	if (root->list[root->used - 1]->val32[0])
	{
		scroll_cnt = UMIN(root->list[root->used - 1]->val32[0], gtd->ses->scroll->used - 1);
	}
	else
	{
		scroll_cnt = gtd->ses->scroll->used - 1;
	}

	for ( ; scroll_cnt > 0 ; scroll_cnt--)
	{
		if (HAS_BIT(gtd->ses->scroll->buffer[scroll_cnt]->flags, BUFFER_FLAG_GREP))
		{
			continue;
		}

		strip_vt102_codes(gtd->ses->scroll->buffer[scroll_cnt]->str, buf);

		ptb = buf;

		while (*ptb)
		{
			while (*ptb)
			{
				switch (*ptb)
				{
					case ' ':
					case '[':
					case ']':
					case '"':
					case ':':
					case '\t':
					case '\n':
					case '\r':
					case '\v':
					case '\f':
						ptb++;
						continue;
				}
				break;
			}

			if (HAS_BIT(flag, TAB_FLAG_CASELESS))
			{
				if (strncasecmp(ptb, tail, tail_len) != 0)
				{
					ZIG_GOTO_END();
				}
			}
			else
			{
				if (*ptb != *tail || strncmp(ptb, tail, tail_len) != 0)
				{
					ZIG_GOTO_END();
				}
			}
			ptt = tab;

			for (tab_len = 0 ; tab_len < tail_len ; tab_len++)
			{
				*ptt++ = *ptb++;
			}

			while (*ptb && *ptb != ' ')
			{
				switch (*ptb)
				{
					case ';':
					case '.':
					case ',':
					case '!':
					case '?':
					case ':':
					case '"':
					case '[':
					case ']':
						*ptt++ = 0;
						ptb++;
						break;

					default:
						*ptt++ = *ptb++;
						break;
				}
			}
			*ptt = 0;

			if (search_node_list(gtd->ses->list[LIST_COMMAND], tab))
			{
				ZIG_GOTO_END();
			}

			node = create_node_list(gtd->ses->list[LIST_COMMAND], tab, "", "", "");

			node->val32[0] = scroll_cnt;

			if (HAS_BIT(flag, TAB_FLAG_FORWARD))
			{
				return TRUE;
			}

			if (root->used > 100)
			{
				return FALSE;
			}
/* end: */
			while (*ptb && !is_space(*ptb))
			{
				ptb++;
			}
		}
	}
	return FALSE;
}

// --- Extracted from src/input.c ---

void input_printf(char *format, ...)
{
	char *buf;
	va_list args;

	if (!HAS_BIT(gtd->ses->input->flags, INPUT_FLAG_HISTORYSEARCH) && !HAS_BIT(gtd->ses->input->flags, INPUT_FLAG_REDRAW))
	{
		if (!HAS_BIT(gtd->ses->telopts, TELOPT_FLAG_ECHO) && gtd->ses->input->buf[0] != gtd->tintin_char)
		{
			return;
		}
	}

	va_start(args, format);

	if (vasprintf(&buf, format, args) == -1)
	{
		syserr_printf(gtd->ses, "input_printf(%s): vasprintf:", format);
	}
	else
	{
		print_stdout(0, 0, "%s", buf);

		free(buf);
	}
	va_end(args);

	return;
}

// --- Extracted from src/screen.c ---

int get_link_screen(struct session *ses, char *var, char *val, int flags, int row, int col)
{
	char *pts, *ptl, *ptw;
	int skip, width, len, start, opt, level;

	ptl     = NULL;

	*var = *val = start = len = opt = level = 0;

	if (inside_scroll_region(ses, row, col))
	{
		col -= ses->split->top_col;
		pts = gtd->screen->line[row - 1]->str;
		ptw = pts;
	}
	else
	{
		col -= 1;
		pts = gtd->screen->grid[row - 1]->str;
		ptw = pts;
	}

	while (*pts)
	{
/* start: */
		if (*pts == ASCII_ESC)
		{
//			tintin_printf2(gtd->ses, "link debug: %3d %c %c", *pts, pts[1], pts[2]);

			if (pts[1] == ']' && pts[2] == '6' && pts[3] == '8' && pts[4] == ';')
			{
				char *pto;
				int nest, state[100], last;

				var[0] = val[0] = state[0] = nest = last = opt = 0;

				pts += 5;

				opt = 0;

				while (is_digit(*pts))
				{
					opt = opt * 10 + (*pts++ - '0');
				}

				if (opt == 0 || *pts != ';')
				{
					show_error(ses, LIST_EVENT, "get_link_screen: invalid link: invalid option or missing semicolon.");

					return FALSE;
				}
				pts++;

				pto = var;

				while (is_varchar(*pts))
				{
					*pto++ = *pts++;
				}

				*pto = 0;

				if (*pts++ != ';')
				{
					show_error(ses, LIST_EVENT, "get_link_screen: invalid link: missing semicolon.");

					return FALSE;
				}

				pto = val;

				if (opt != 2 && *pts == gtd->tintin_char)
				{
					pto += sprintf(pto, "\\x%x", *pts++);
				}

				while (*pts)
				{
					switch (*pts)
					{
						case DEFAULT_OPEN:
							level++;
							*pto++ = *pts++;
							break;
						case DEFAULT_CLOSE:
							level--;
							*pto++ = *pts++;
							break;

						case ASCII_BEL:
							*pto = 0;

							if (level)
							{
								if (level < 0)
								{
									show_error(ses, LIST_EVENT, "get_link_screen: invalid link: missing %d opening braces.", abs(level));
								}
								else
								{
									show_error(ses, LIST_EVENT, "get_link_screen: invalid link: missing %d closing braces.", abs(level));
								}
								return FALSE;
							}
							pts++;
//							tintin_printf2(gtd->ses, "link osc: %s opt: %d", result, opt);
							ZIG_GOTO_START();
							break;

						case '\\':
						case '$':
						case '*':
						case '@':
						case COMMAND_SEPARATOR:
							if (opt != 2)
							{
								*pto++ = '\\';
								*pto++ = *pts++;
							}
							else
							{
								*pto++ = *pts++;
							}
							break;

						default:
							*pto++ = *pts++;
							break;
					}
				}
				show_error(ses, LIST_EVENT, "get_link_screen: invalid link: missing string terminator");

				return 0;
			}
			else if (pts[1] == '[' && pts[2] == '4')
			{
				if (pts[3] == 'm')
				{
					ptl   = &pts[4];
					start = len;
				}
				else if (pts[3] == ';' && pts[4] == '2' && pts[5] == '4' && pts[6] == 'm')
				{
					ptl   = &pts[7];
					start = len;
				}
			}
			else if (pts[1] == '[' && pts[2] == '2' && pts[3] == '4' && pts[4] == 'm')
			{
//				tintin_printf2(gtd->ses, "\e[1;32mfound link: (%d,%d,%d) [%s]", start,col, len, val);

				if (ptl && col >= start && col < len)
				{
					if (*val == 0)
					{
						snprintf(val, BUFFER_SIZE, "%.*s", (int) (pts - ptl), ptl);
					}
					return opt ? opt : 1;
				}
				else
				{
					ptl = NULL;
					*val = 0;
				}
			}
		}
		else if (*pts == ' ')
		{
			if (ptl == NULL && len >= col)
			{
				break;
			}
			ptw = pts;
		}

		skip = get_vt102_width(gtd->ses, pts, &width);

		len += width;
		pts += skip;
	}

	if (ptl && col >= start && col < len)
	{
		if (*val == 0)
		{
			snprintf(val, BUFFER_SIZE, "%.*s", (int) (pts - ptl), ptl);
		}
		return opt ? opt : 1;
	}

	snprintf(val, BUFFER_SIZE, "%.*s", (int) (pts - ptw), ptw);

	return FALSE;
}

// --- Extracted from src/show.c ---

void print_lines(struct session *ses, int flags, char *color, char *format, ...)
{
	char *buffer, *str_buf;
	va_list args;

	push_call("print_lines(%p,%d,%p,...)",ses,flags,format);

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "print_lines: vasprintf:");

		pop_call();
		return;
	}

	va_end(args);

	if (flags)
	{
		str_buf = str_alloc_stack(strlen(buffer) * 2);

		substitute(ses, buffer, str_buf, flags);

		show_lines(ses, color, str_buf);
	}
	else
	{
		show_lines(ses, color, buffer);
	}

	free(buffer);

	pop_call();
	return;
}

void show_debug(struct session *ses, int index, struct listnode *node, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_debug(%p,%p,%p)",ses,index,format);

	root = ses->list[index];

	if (node == NULL || !HAS_BIT(node->flags, NODE_FLAG_DEBUG))
	{
		if (gtd->level->debug == 0 && !HAS_BIT(root->flags, LIST_FLAG_DEBUG) && !HAS_BIT(root->flags, LIST_FLAG_LOG))
		{
			pop_call();
			return;
		}
	}

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "show_debug(%s): vasprintf:", format);

		buffer = strdup("vasprintf error");
	}
	va_end(args);

	if (gtd->level->debug || HAS_BIT(root->flags, LIST_FLAG_DEBUG) || (node != NULL && HAS_BIT(node->flags, NODE_FLAG_DEBUG)))
	{
		gtd->level->verbose++;

		tintin_puts2(ses, buffer);

		gtd->level->verbose--;

		ZIG_GOTO_END();
	}

	if (HAS_BIT(root->flags, LIST_FLAG_LOG))
	{
		if (ses->log->file)
		{
			logit(ses, buffer, ses->log->file, LOG_FLAG_LINEFEED);
		}
	}
/* end: */
	free(buffer);

	pop_call();
	return;
}

void show_error(struct session *ses, int index, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_error(%p,%p,%p)",ses,index,format);

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);
	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "show_error: vasprintf:");

		pop_call();
		return;
	}
	va_end(args);

	check_all_events(ses, SUB_SEC|EVENT_FLAG_SYSTEM, 0, 1, "RECEIVED ERROR", buffer);

	if (gtd->level->verbose || gtd->level->debug)
	{
		tintin_puts2(ses, buffer);

		ZIG_GOTO_END();
	}

	root = ses->list[index];

	if (HAS_BIT(root->flags, LIST_FLAG_DEBUG))
	{
		tintin_puts2(ses, buffer);

		ZIG_GOTO_END();
	}

	if (HAS_BIT(root->flags, LIST_FLAG_MESSAGE))
	{
		tintin_puts2(ses, buffer);

		ZIG_GOTO_END();
	}

	if (HAS_BIT(root->flags, LIST_FLAG_LOG))
	{
		if (ses->log->file)
		{
			logit(ses, buffer, ses->log->file, LOG_FLAG_LINEFEED);
		}
	}
/* end: */
	free(buffer);

	pop_call();
	return;
}

void show_info(struct session *ses, int index, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_info(%p,%p,%p)",ses,index,format);

	root = ses->list[index];

	if (gtd->level->info == 0 && !HAS_BIT(root->flags, LIST_FLAG_INFO))
	{
		pop_call();
		return;
	}
	buffer = str_alloc_stack(0);

	va_start(args, format);
	vsprintf(buffer, format, args);
	va_end(args);

	gtd->level->verbose++;

	tintin_puts(ses, buffer);

	gtd->level->verbose--;

	pop_call();
	return;
}

void show_message(struct session *ses, int index, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_message(%p,%p,%p)",ses,index,format);

	root = ses->list[index];

	if (gtd->level->verbose || gtd->level->debug)
	{
		ZIG_GOTO_DISPLAY();
	}

	if (HAS_BIT(root->flags, LIST_FLAG_DEBUG))
	{
		ZIG_GOTO_DISPLAY();
	}

	if (!HAS_BIT(root->flags, LIST_FLAG_MESSAGE))
	{
		ZIG_GOTO_END();
	}

	if (gtd->level->input)
	{
		ZIG_GOTO_END();
	}
/* display: */
	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "show_message: vasprintf1:");

		pop_call();
		return;
	}

	va_end(args);

	tintin_puts2(ses, buffer);

	free(buffer);

	pop_call();
	return;
/* end: */
	if (HAS_BIT(root->flags, LIST_FLAG_LOG))
	{
		if (ses->log->file)
		{
			va_start(args, format);

			if (vasprintf(&buffer, format, args) == -1)
			{
				syserr_printf(ses, "show_message: vasprintf2:");

				pop_call();
				return;
			}
			va_end(args);

			logit(ses, buffer, ses->log->file, LOG_FLAG_LINEFEED);

			free(buffer);
		}
	}

	pop_call();
	return;
}

void tintin_header(struct session *ses, int width, char *format, ...)
{
	char *title, *buffer;
	va_list args;
	int cols;

	push_call("tintin_header(%p,%p)",ses,format);

	if (width)
	{
		cols = UMIN(width, get_scroll_cols(ses));
	}
	else
	{
		cols = get_scroll_cols(ses);
	}

	if (cols < 2)
	{
		pop_call();
		return;
	}

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);
	if (vasprintf(&title, format, args) == -1)
	{
		syserr_printf(ses, "tintin_header(%s): vasprintf:", format);

		buffer = strdup("vasprintf error");
	}
	va_end(args);

	if ((int) strlen(title) > cols - 2)
	{
		title[cols - 2] = 0;
	}

	buffer = calloc(1, cols + 1);

	if (HAS_BIT(ses->config_flags, CONFIG_FLAG_SCREENREADER))
	{
		memset(buffer, ' ', cols);
	}
	else
	{
		memset(buffer, '#', cols);
	}

	memcpy(&buffer[(cols - strlen(title)) / 2], title, strlen(title));

	tintin_puts2(ses, buffer);

	free(title);
	free(buffer);

	pop_call();
	return;
}

void tintin_printf(struct session *ses, char *format, ...)
{
	char *buffer;
	va_list args;

	push_call("tintin_printf(%p,%p,...)",ses,format);

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	buffer = str_alloc_stack(0);

	va_start(args, format);
	vsprintf(buffer, format, args);
	va_end(args);

	tintin_puts(ses, buffer);

	pop_call();
	return;
}

void tintin_printf2(struct session *ses, char *format, ...)
{
	char *buffer;
	va_list args;

	push_call("tintin_printf2(%p,%p,...)",ses,format);

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);
	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "tintin_printf2: vasprintf:");

		pop_call();
		return;
	}
	va_end(args);

	tintin_puts2(ses, buffer);

	free(buffer);

	pop_call();
	return;
}

void tintin_printf3(struct session *ses, char *format, ...)
{
	char *buffer;
	va_list args;

	push_call("tintin_printf3(%p,%p,...)",ses,format);

	va_start(args, format);
	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "tintin_printf3: vasprintf:");

		pop_call();
		return;
	}
	va_end(args);

	tintin_puts3(ses, buffer, FALSE);

	free(buffer);

	pop_call();
	return;
}

// --- Extracted from src/nest.c ---

struct listnode *set_nest_node(struct listroot *root, char *arg1, char *format, ...)
{
	struct listroot *base;
	struct listnode *node;
	char *arg, *arg2, name[BUFFER_SIZE];
	va_list args;

	push_call("set_nest_node(%p,%s,%p,...)",root,arg1,format);

	va_start(args, format);
	if (vasprintf(&arg2, format, args) == -1)
	{
		syserr_printf(root->ses, "set_nest_node: vasprintf");
	}

	va_end(args);

	arg = get_arg_to_brackets(root->ses, arg1, name);

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_LOCAL))
	{
		base = search_nest_base_ses(root->ses, name);

		if (base)
		{
			root = base;
		}
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);

	if (node && node->root)
	{
		free_list(node->root);

		node->root = NULL;
	}

	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		update_nest_node(update_nest_root(root, name), arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cpy(&node->arg2, arg2);
	}
	else
	{
		if (*name == '-' || *name == '+')
		{
			get_number_string(root->ses, name, name);
//			printf("debug: set_nest_node - or +\n");
		}
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}
	}

	free(arg2);

	pop_call();
	return node;
}

struct listnode *set_nest_node_ses(struct session *ses, char *arg1, char *format, ...)
{
	struct listnode *node;
	struct listroot *root;
	char *arg, *arg2, name[BUFFER_SIZE];
	va_list args;

	push_call("set_nest_node_ses(%p,%s,%p,...)",ses,arg1,format);

	va_start(args, format);

	if (vasprintf(&arg2, format, args) == -1)
	{
		syserr_printf(ses, "set_nest_node_ses: vasprintf");
	}

	va_end(args);

	arg = get_arg_to_brackets(ses, arg1, name);

	if (HAS_BIT(ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	root = search_nest_base_ses(ses, name);

	if (root == NULL)
	{
		if (gtd->level->local)
		{
			root = local_list(ses);
		}
		else
		{
			root = ses->list[LIST_VARIABLE];
		}
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);

	if (node && node->root)
	{
		free_list(node->root);

		node->root = NULL;
	}

	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		update_nest_node(update_nest_root(root, name), arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cpy(&node->arg2, arg2);
	}
	else
	{
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}
	}
	free(arg2);

	pop_call();
	return node;
}

struct listnode *add_nest_node(struct listroot *root, char *arg1, char *format, ...)
{
	struct listroot *base;
	struct listnode *node;
	char *arg, *arg2, name[BUFFER_SIZE];
	va_list args;

	push_call("add_nest_node(%p,%s,%p,...)",root,arg1,format);

	va_start(args, format);

	if (vasprintf(&arg2, format, args) == -1)
	{
		syserr_printf(root->ses, "add_nest_node: vasprintf");
	}

	va_end(args);

	arg = get_arg_to_brackets(root->ses, arg1, name);

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_LOCAL))
	{
		base = search_nest_base_ses(root->ses, name);

		if (base)
		{
			root = base;
		}
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);
/*
	if (node && node->root)
	{
		free_list(node->root);

		node->root = NULL;
	}
*/

	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		root = update_nest_root(root, name);

		update_nest_node(root, arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cat(&node->arg2, arg2);
	}
	else
	{
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}
	}

	free(arg2);

	pop_call();
	return node;
}

struct listnode *add_nest_node_ses(struct session *ses, char *arg1, char *format, ...)
{
	struct listnode *node;
	struct listroot *root;
	char *arg, *arg2, *name;
	va_list args;

	push_call("add_nest_node_ses(%p,%s,%p,...)",ses,arg1,format);

	name = str_alloc_stack(0);

	va_start(args, format);

	if (vasprintf(&arg2, format, args) == -1)
	{
		syserr_printf(ses, "add_nest_node_ses: vasprintf");
	}

	va_end(args);

	arg = get_arg_to_brackets(ses, arg1, name);

	if (HAS_BIT(ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	root = search_nest_base_ses(ses, name);

	if (root == NULL)
	{
		root = ses->list[LIST_VARIABLE];
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);
/*
	if (node && node->root)
	{
		free_list(node->root);

		node->root = NULL;
	}
*/
	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		update_nest_node(update_nest_root(root, name), arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cat(&node->arg2, arg2);
	}
	else
	{
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}

	}
	free(arg2);

	pop_call();
	return node;
}

// --- Extracted from src/command.c ---

struct session *execute(struct session *ses, char *format, ...)
{
	char *buffer;
	va_list args;

	push_call("execute(%p,%p,...)",ses,format);

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "execute: vasprintf:");
	}

	va_end(args);

	if (*buffer)
	{
		if (*buffer != gtd->tintin_char)
		{
			*buffer = gtd->tintin_char;
		}
		get_arg_all(ses, buffer, buffer, FALSE);
	}

	ses = script_driver(ses, LIST_COMMAND, NULL, buffer);

	free(buffer);

	pop_call();
	return ses;
}

struct session *command(struct session *ses, COMMAND *cmd, char *format, ...)
{
	char *arg1, *arg2, *arg3, *arg4, *buffer;
	va_list args;

	push_call("command(%p,%p,%p,...)",ses,cmd,format);

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "command: vasprintf:");
	}

	va_end(args);

	arg1 = str_alloc_stack(0);
	arg2 = str_alloc_stack(0);
	arg3 = str_alloc_stack(0);
	arg4 = "";

	ses = cmd(ses, buffer, arg1, arg2, arg3, arg4);

	free(buffer);

	pop_call();
	return ses;
}


// --- Extracted from src/text.c ---
void print_stdout(int row, int col, char *format, ...)
{
	char *buffer;
	va_list args;
	int len;

	va_start(args, format);
	len = vasprintf(&buffer, format, args);
	va_end(args);

	if (gtd->detach_port)
	{
		if (gtd->detach_sock)
		{
			if (write(gtd->detach_sock, buffer, len) == -1)
			{
				syserr_printf(gtd->ses, "print_stdout: write:");
			}
		}
	}
	else
	{
		if (gtd->level->ignore == 0)
		{
			SET_BIT(gtd->flags, TINTIN_FLAG_DISPLAYUPDATE);
		}

		fputs(buffer, stdout);
//		printf("%s", buffer);

		if (row && col)
		{
			set_line_screen(gtd->ses, buffer, row, col);
		}
	}
	free(buffer);
}


