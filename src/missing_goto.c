#include "tintin.h"

extern void buffer_print(struct session *ses, int index, int start, int end);
extern void string_to_stamp(struct session *ses, long long flags, char *in, char *out);
extern void string_to_font(struct session *ses, long long flags, char *in, char *out);
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
			goto end;
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

	end:

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

			goto eof;
		}

		// top chunk

		else if (scroll_add == 0)
		{
			start = ses->scroll->base;
			end   = scroll_tmp - scroll_cut;

			buffer_print(ses, scroll_cnt, start, end);

			goto eof;
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

	eof:

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
					goto end;
				}
			}
			else
			{
				if (*ptb != *tail || strncmp(ptb, tail, tail_len) != 0)
				{
					goto end;
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
				goto end;
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

			end:

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
					goto end;
				}
			}
			else
			{
				if (*ptb != *tail || strncmp(ptb, tail, tail_len) != 0)
				{
					goto end;
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
				goto end;
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

			end:

			while (*ptb && !is_space(*ptb))
			{
				ptb++;
			}
		}
	}
	return FALSE;
}

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
		start:

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
							goto start;
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

