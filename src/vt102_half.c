/******************************************************************************
*   This file is part of TinTin++                                             *
*                                                                             *
*   Copyright 2004-2020 Igor van den Hoven                                    *
*                                                                             *
*   TinTin++ is free software; you can redistribute it and/or modify          *
*   it under the terms of the GNU General Public License as published by      *
*   the Free Software Foundation; either version 3 of the License, or         *
*   (at your option) any later version.                                       *
*                                                                             *
*   This program is distributed in the hope that it will be useful,           *
*   but WITHOUT ANY WARRANTY; without even the implied warranty of            *
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             *
*   GNU General Public License for more details.                              *
*                                                                             *
*   You should have received a copy of the GNU General Public License         *
*   along with TinTin++.  If not, see https://www.gnu.org/licenses.           *
******************************************************************************/

/******************************************************************************
*                               T I N T I N + +                               *
*                                                                             *
*                      coded by Igor van den Hoven 2004                       *
******************************************************************************/

#include "tintin.h"

void init_pos(struct session *ses, int row, int col)
{
	push_call("init_pos(%p)",ses);

	goto_pos(ses, row, col);

	gtd->screen->sav_row[0] = ses->cur_row;
	gtd->screen->sav_col[0] = ses->cur_col;

	gtd->screen->sav_lev = 1;

	pop_call();
	return;
}

void hide_cursor(struct session *ses)
{
	if (!HAS_BIT(gtd->flags, TINTIN_FLAG_HIDDENCURSOR))
	{
		print_stdout(0, 0, "\e[?25l");
	}
}

void show_cursor(struct session *ses)
{
	if (!HAS_BIT(gtd->flags, TINTIN_FLAG_HIDDENCURSOR))
	{
		print_stdout(0, 0, "\e[?25h");
	}
}

void save_pos(struct session *ses)
{
	gtd->screen->sav_row[gtd->screen->sav_lev] = ses->cur_row;
	gtd->screen->sav_col[gtd->screen->sav_lev] = ses->cur_col;

	if (gtd->screen->sav_lev < STACK_SIZE)
	{
		gtd->screen->sav_lev++;
	}
	else
	{
		syserr_printf(ses, "sav_lev++ above 1000.");
	}

	hide_cursor(ses);
}

void restore_pos(struct session *ses)
{
	if (gtd->screen->sav_lev > 0)
	{
		gtd->screen->sav_lev--;
	}
	else
	{
		gtd->screen->sav_lev = 0;
		syserr_printf(ses, "restore_pos: sav_lev-- below 0.");
	}

	if (gtd->screen->sav_lev == 1 /* gtd->screen->sav_row[gtd->screen->sav_lev] == inputline_cur_row()*/ /*gtd->screen->rows*/)
	{
		goto_pos(ses, inputline_cur_row(), inputline_cur_col());
	}
	else
	{
		goto_pos(ses, gtd->screen->sav_row[gtd->screen->sav_lev], gtd->screen->sav_col[gtd->screen->sav_lev]);
	}
	show_cursor(ses);
}

void goto_pos(struct session *ses, int row, int col)
{
	if (row < 1 || col < 1)
	{
		tintin_printf2(NULL, "\e[1;31merror: invalid row,col: goto_pos(%d,%d)\n",row,col);

		dump_stack();

		return;
	}
	// Add \r to capture a stray \e in broken packets

	print_stdout(0, 0, "\r\e[%d;%dH", row, col);

	ses->cur_row = row;
	ses->cur_col = col;
}

void erase_cols(int cnt)
{
	if (cnt)
	{
		print_stdout(0, 0, "\e[%dX", cnt);
	}
}

/*
	unused
*/

void reset(struct session *ses)
{
	ses->cur_row = 1;
	ses->cur_col = 1;

	print_stdout(0, 0, "\ec");
}


void scroll_region(struct session *ses, int top, int bot)
{
	push_call("scroll_region(%p,%d,%d)",ses,top,bot);

	if (ses == gtd->ses)
	{
		if (top != 1)
		{
			print_stdout(0, 0, "\e[?1049h\e[?7787h\e[%d;%dr", top, bot);
		}
		else
		{
			print_stdout(0, 0, "\e[?1049l\e[?7787l\e[%d;%dr", top, bot);
		}
	}
	ses->split->top_row = top;
	ses->split->bot_row = bot;

	check_all_events(ses, EVENT_FLAG_VT100, 0, 4, "VT100 SCROLL REGION", ntos(top), ntos(bot), ntos(gtd->screen->rows), ntos(gtd->screen->cols), ntos(get_scroll_cols(ses)));

	pop_call();
	return;
}

void reset_scroll_region(struct session *ses)
{
	if (ses == gtd->ses)
	{
		print_stdout(0, 0, "\e[?1049l\e[?7787l\e[r");
	}
	ses->split->top_row = 1;
	ses->split->top_col = 1;
	ses->split->bot_row = gtd->screen->rows;
	ses->split->bot_col = gtd->screen->cols;
}


int skip_vt102_codes(char *str)
{
	int skip;

	switch (str[0])
	{
		case   7:   /* BEL */
		case   8:   /* BS  */
	//	case   9:      HT
	//	case  10:      LF
		case  11:   /* VT  */
		case  12:   /* FF  */
		case  13:   /* CR  */
		case  14:   /* SO  */
		case  15:   /* SI  */
		case  17:   /* DC1 */
		case  19:   /* DC3 */
		case  24:   /* CAN */
		case  26:   /* SUB */
			return 1;

		case  27:   /* ESC */
			break;

		case  28: // HTML_OPEN
			for (skip = 1 ; str[skip] ; skip++)
			{
				if (str[skip] == 30) // HTML_CLOSE
				{
					return skip + 1;
				}
			}
			return 0;

		case 127:   /* DEL */
			return 1;

		default:
			return 0;
	}

	switch (str[1])
	{
		case '\0':
			return 1;

		case '%':
		case '#':
		case '(':
		case ')':
			return str[2] ? 3 : 2;

		case ']':
			switch (str[2])
			{
				case 0:
					return 2;

				case 'P':
					for (skip = 3 ; skip < 10 ; skip++)
					{
						if (str[skip] == 0)
						{
							break;
						}
					}
					return skip;

				case 'R':
					return 3;

				default:
					for (skip = 2 ; str[skip] ; skip++)
					{
						if (str[skip] == '\a')
						{
							return skip + 1;
						}

						if (str[skip] == '\e' && str[skip+1] == '\\')
						{
							return skip + 2;
						}
					}
					break;
			}
			return 2;

		case '[':
			break;

		default:
			return 2;
	}

	for (skip = 2 ; str[skip] != 0 ; skip++)
	{
		if (is_csichar(str[skip]))
		{
			return skip + 1;
		}
	}
	return skip;
}

int skip_vt102_codes_non_graph(char *str)
{
	int skip = 0;

	switch (str[skip])
	{
		case   7:   // BEL
//		case   8:   // BS  
//		case   9:   // HT  
//		case  10:   // LF  
		case  11:   // VT  
		case  12:   // FF  
		case  13:   // CR  
		case  14:   // SO  
		case  15:   // SI  
		case  17:   // DC1 
		case  19:   // DC3 
		case  24:   // CAN 
		case  26:   // SUB 
		case 127:   // DEL 
			return 1;

		case  27:   // ESC 
			break;

		default:
			return 0;
	}

	switch (str[1])
	{
		case '\0':
			return 0;

		case 'c':
		case 'D':
		case 'E':
		case 'H':
		case 'M':
		case 'Z':
		case '7':
		case '8':
		case '>':
		case '=':
			return 2;

		case '%':
		case '#':
		case '(':
		case ')':
			return str[2] ? 3 : 2;

		case ']':
			switch (str[2])
			{
				case 0:
					return 2;

				case 'P':
					for (skip = 3 ; skip < 10 ; skip++)
					{
						if (str[skip] == 0)
						{
							break;
						}
					}
					return skip;

				case 'R':
					return str[3] ? 3 : 2;

				case '6':
					return 0;

				default:
					for (skip = 2 ; str[skip] ; skip++)
					{
						if (str[skip] == '\a')
						{
							return skip + 1;
						}

						if (str[skip] == '\e' && str[skip+1] == '\\')
						{
							return skip + 2;
						}
					}
					break;
			}
			return 2;

		case '[':
			break;

		default:
			return 2;
	}

	for (skip = 2 ; str[skip] != 0 ; skip++)
	{
		if (str[skip] == 'm')
		{
			return 0;
		}

		if (is_csichar(str[skip]))
		{
			return skip + 1;
		}
	}
	return 0;
}

int get_vt102_width(struct session *ses, char *str, int *str_len)
{
	int raw_len;

	*str_len = 0;

	if (*str)
	{
		raw_len = skip_vt102_codes(str);

		if (raw_len)
		{
			return raw_len;
		}

		if (HAS_BIT(ses->charset, CHARSET_FLAG_EUC))
		{
			return get_euc_width(ses, str, str_len);
		}

		if (HAS_BIT(ses->charset, CHARSET_FLAG_UTF8))
		{
			return get_utf8_width(str, str_len, NULL);
		}

		return get_ascii_width(str, str_len);
	}
	return 0;
}

int strip_vt102_width(struct session *ses, char *str, int *str_width)
{
	int width;
	char *pts;

	pts = str;

	*str_width = 0;

	while (*pts)
	{
		pts += get_vt102_width(ses, pts, &width);

		*str_width += width;
	}
	return pts - str;
}


int find_color_code(char *str)
{
	int skip;

	switch (str[0])
	{
		case  ASCII_ESC:
			break;

		default:
			return 0;
	}

	switch (str[1])
	{
		case '[':
			break;

		default:
			return 0;
	}

	for (skip = 2 ; str[skip] != 0 ; skip++)
	{
		if (str[skip] == 'm')
		{
			return skip + 1;
		}

		if (is_csichar(str[skip]))
		{
			return 0;
		}
	}
	return 0;
}

int find_escaped_color_code(char *str)
{
	int skip;

	switch (str[0])
	{
		case  '\\':
			break;

		default:
			return 0;
	}

	switch (str[1])
	{
		case 'e':
			break;
		default:
			return 0;
	}

	if (str[2] == '[')
	{
		for (skip = 3 ; str[skip] != 0 ; skip++)
		{
			if (str[skip] == 'm')
			{
				return skip + 1;
			}

			if (is_csichar(str[skip]))
			{
				return 0;
			}
		}
		return 0;
	}

	if (str[2] == ']')
	{
		for (skip = 3 ; str[skip] != 0 ; skip++)
		{
			if (str[skip] == '\\' && str[skip + 1] == 'a')
			{
				return skip + 2;
			}
		}
	}
	return 0;
}

int find_secure_color_code(char *str)
{
	int skip;

	if (*str != ASCII_ESC)
	{
		return 0;
	}

	if (str[1] == '[')
	{
		for (skip = 2 ; str[skip] != 0 ; skip++)
		{
			switch (str[skip])
			{
				case 'm':
					if (is_digit(str[skip - 1]))
					{
						return skip + 1;
					}
					return 0;

				case ';':
				case ':':
				case '0':
				case '1':
				case '2':
				case '3':
				case '4':
				case '5':
				case '6':
				case '7':
				case '8':
				case '9':
					break;

				default:
					return 0;
			}
		}
	}
	else if (str[1] == ']' && str[2] == '6' && str[3] == '8' && str[4] == ';')
	{
		for (skip = 5 ; str[skip] != 0 ; skip++)
		{
			if (str[skip] == ASCII_BEL)
			{
				return skip + 1;
			}
		}
		return 0;
	}
	return 0;
}


int strip_vt102_codes(char *str, char *buf)
{
	char *pti, *pto;

	pti = (char *) str;
	pto = (char *) buf;

	while (*pti)
	{
		while (skip_vt102_codes(pti))
		{
			pti += skip_vt102_codes(pti);
		}

		if (*pti)
		{
			*pto++ = *pti++;
		}
	}
	*pto = 0;

	return pto - buf;
}


void strip_vt102_codes_non_graph(char *str, char *buf)
{
	char *pti, *pto;

	pti = str;
	pto = buf;

	while (*pti)
	{
		while (skip_vt102_codes_non_graph(pti))
		{
			pti += skip_vt102_codes_non_graph(pti);
		}

		if (*pti)
		{
			*pto++ = *pti++;
		}
	}
	*pto = 0;
}

void strip_non_vt102_codes(char *str, char *buf)
{
	char *pti, *pto;
	int len;

	pti = str;
	pto = buf;

	while (*pti)
	{
		while ((len = skip_vt102_codes(pti)) != 0)
		{
			memcpy(pto, pti, len);
			pti += len;
			pto += len;
		}

		if (*pti)
		{
			pti++;
		}
	}
	*pto = 0;
}

char *strip_vt102_strstr(char *str, char *buf, int *len)
{ 
	char *pti, *ptm, *pts;

	push_call("strip_vt102_strstr(%p,%p,%p)",str,buf,len);

	pts = str;

	while (*pts)
	{
		while (skip_vt102_codes(pts))
		{
			pts += skip_vt102_codes(pts);
		}

		pti = pts;
		ptm = buf;

		while (*pti)
		{
			if (*pti++ != *ptm++)
			{
				break;
			}

			if (*ptm == 0)
			{
				if (len)
				{
					*len = pti - pts;
				}
				pop_call();
				return pts;
			}

			while (skip_vt102_codes(pti))
			{
				pti += skip_vt102_codes(pti);
			}
		}
		pts++;
	}
