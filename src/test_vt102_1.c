#include "tintin.h"
int interpret_vt102_codes(struct session *ses, char *str, int real)
{
	char *data = str_alloc_stack(0);
	int skip = 0;

	switch (str[skip])
	{
		case   8:
			ses->cur_col = UMAX(1, ses->cur_col - 1);
			return TRUE;

		case  27:   /* ESC */
			break;

		case 11:    /* VT  */
			ses->cur_row = UMIN(gtd->screen->rows, ses->cur_row + 1);
			return TRUE;

		case 12:    /* FF  */
			ses->cur_row = UMIN(gtd->screen->rows, ses->cur_row + 1);
			return TRUE;

		case  13:   /* CR  */
			ses->cur_col = 1;
			return TRUE;

		default:
			return TRUE;
	}

	switch (str[1])
	{
		case '7':
			ses->sav_row = ses->cur_row;
			ses->sav_col = ses->cur_col;
			return TRUE;

		case '8':
			ses->cur_row = ses->sav_row;
			ses->cur_col = ses->sav_col;
			return TRUE;

		case 'c':
			ses->cur_row = 1;
			ses->cur_col = 1;
			ses->sav_row = ses->cur_row;
			ses->sav_col = ses->cur_col;
			return TRUE;

		case 'D':
			ses->cur_row = URANGE(1, ses->cur_row + 1, gtd->screen->rows);
			return TRUE;

		case 'E':
			ses->cur_row = URANGE(1, ses->cur_row + 1, gtd->screen->rows);
			ses->cur_col = 1;
			return TRUE;

		case 'M':
			ses->cur_row = URANGE(1, ses->cur_row - 1, gtd->screen->rows);
			return TRUE;

		case '[':
			break;

		default:
			return TRUE;
	}

	for (skip = 2 ; str[skip] != 0 ; skip++)
	{
		switch (str[skip])
		{
			case '@':
			case '`':
			case ']':
				return TRUE;

			case 'c':
				return FALSE;

			case 'A':
				ses->cur_row -= UMAX(1, atoi(data));
				break;

			case 'B':
			case 'e':
				ses->cur_row += UMAX(1, atoi(data));
				break;

			case 'C':
			case 'a':
				ses->cur_col += UMAX(1, atoi(data));
				break;

			case 'D':
				ses->cur_col -= UMAX(1, atoi(data));
				break;

			case 'E':
				ses->cur_row -= UMAX(1, atoi(data));
				ses->cur_col = 1;
				break;

			case 'F':
				ses->cur_row -= UMAX(1, atoi(data));
				ses->cur_col = 1;
				break;

			case 'G':
				ses->cur_col = UMAX(1, atoi(data));
				break;

			case 'H':
			case 'f':
				if (sscanf(data, "%d;%d", &ses->cur_row, &ses->cur_col) != 2)
				{
					if (sscanf(data, "%d", &ses->cur_row) == 1)
					{
						ses->cur_col = 1;
					}
					else
					{
						ses->cur_row = 1;
						ses->cur_col = 1;
					}
				}
				break;

			case 'd':
				ses->cur_row = atoi(data);
				break;

			case 'n':
/*				if (real == 0)
				{
					if (str[2] == '6')
					{
						check_all_events(ses, EVENT_FLAG_VT100, 0, 2, "VT100 CPR", ntos(ses->cur_row), ntos(ses->cur_col));
						telnet_printf(ses, -1, "\e[%d;%dR", ses->cur_row, ses->cur_col);
					}
				}*/
				break;

			case 'r':
				if (sscanf(data, "%d;%d", &ses->split->top_row, &ses->split->bot_row) != 2)
				{
					if (sscanf(data, "%d", &ses->split->top_row) != 1)
					{
						ses->split->top_row = 1;
						ses->split->bot_row = gtd->screen->rows;
					}
					else
					{
						ses->split->bot_row = gtd->screen->rows;
					}
				}
				ses->cur_row = 1;
				ses->cur_col = 1;
				break;

			case 's':
				if (skip == 2)
				{
					ses->sav_row = ses->cur_row;
					ses->sav_col = ses->cur_col;
				}
				else
				{
					ses->cur_row = 1;
					ses->cur_col = 1;
				}
				break;

			case 'u':
				ses->cur_row = ses->sav_row;
				ses->cur_col = ses->sav_col;
				break;

			case 'x':
				return FALSE;

			default:
				data[skip - 2] = str[skip];
				data[skip - 1] = 0;
				break;
		}

		if (is_alpha(str[skip]))
		{
			ses->cur_row = URANGE(1, ses->cur_row, gtd->screen->rows);

			ses->cur_col = URANGE(1, ses->cur_col, gtd->screen->cols + 1);


			ses->split->top_row = URANGE(1, ses->split->top_row, gtd->screen->rows);

			ses->split->bot_row = ses->split->bot_row ? URANGE(1, ses->split->bot_row, gtd->screen->rows) : gtd->screen->rows;
			
			return TRUE;
		}
	}
	return TRUE;
}

