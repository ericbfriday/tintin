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

int catch_vt102_codes(struct session *ses, unsigned char *str, int cplen)
{
	int skip, cnt, len, val[5];

	push_call("catch_vt102_codes(%p)",str);

	switch (str[0])
	{
		case ASCII_ENQ:
			if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 1, "CATCH VT100 ENQ", gtd->system->term))
			{
				pop_call();
				return 1;
			}
			pop_call();
			return 0;
			
		case ASCII_ESC:
			break;

		default:
			pop_call();
			return 0;
	}

	val[0] = val[1] = val[2] = val[3] = 0;

	cnt = 0;

	switch (str[1])
	{
		case '\0':
			break;

		case '[':
			for (len = 2 ; str[len] != 0 ; len++)
			{
				if (str[len] >= '0' && str[len] <= '9')
				{
					val[cnt] *= 10;
					val[cnt] += str[len] - '0';
				}
				else
				{
					switch (str[len])
					{
						case ';':
							if (cnt < 4)
							{
								cnt++;
							}
							break;

						case 'c':
							if (check_all_events(ses, EVENT_FLAG_VT100, 0, 1, "CATCH VT100 DA", ntos(val[0])))
							{
								pop_call();
								return len + 1;
							}
							pop_call(); return 0;

						case 'n':
							if (val[0] == 5)
							{
								if (!check_all_events(ses, EVENT_FLAG_VT100, 0, 0, "CATCH VT100 DSR"))
								{
									telnet_printf(ses, 4, "\e[0n");
								}
								pop_call();
								return len + 1;
							}
							pop_call(); return 0;

						case 'r':
							if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 2, "CATCH VT100 SCROLL REGION", ntos(val[0]), ntos(val[1])))
							{
								pop_call();
								return len + 1;
							}
							pop_call(); return 0;

						case 'H':
						case 'f':
							if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 2, "CATCH VT100 CURSOR H", ntos(val[0]), ntos(val[1])))
							{
								pop_call();
								return len + 1;
							}
							pop_call(); return 0;

						case 'J':
							if (val[0] == 0)
							{
								if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 0, "CATCH VT100 ERASE SCREEN BELOW"))
								{
									pop_call();
									return len + 1;
								}
							}
							if (val[0] == 1)
							{
								if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 0, "CATCH VT100 ERASE SCREEN ABOVE"))
								{
									pop_call();
									return len + 1;
								}
							}
							if (val[0] == 2)
							{
								if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 0, "CATCH VT100 ERASE SCREEN ALL"))
								{
									pop_call();
									return len + 1;
								}
							}
							if (val[0] == 3)
							{
								if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 0, "CATCH VT100 ERASE SCREEN SAVED"))
								{
									pop_call();
									return len + 1;
								}
							}
							pop_call(); return 0;

						case 'K':
							if (val[0] == 0)
							{
								if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 0, "CATCH VT100 ERASE LINE RIGHT"))
								{
									pop_call();
									return len + 1;
								}
							}
							if (val[0] == 1)
							{
								if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 0, "CATCH VT100 ERASE LINE LEFT"))
								{
									pop_call();
									return len + 1;
								}
							}
							if (val[0] == 2)
							{
								if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 0, "CATCH VT100 ERASE LINE ALL"))
								{
									pop_call();
									return len + 1;
								}
							}
							pop_call(); return 0;

						case 't':
							if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 1, "CATCH VT100 XTWINOPS", ntos(val[0])))
							{
								pop_call();
								return len + 1;
							}
							if (val[0] == 16)
							{
								SET_BIT(gtd->flags, TINTIN_FLAG_REPORTCSIT);
							}
							if (val[0] == 18)
							{
								telnet_printf(ses, -1, "\e[8;%d;%dt", gtd->screen->rows, gtd->screen->cols);
							}
							pop_call(); return 0;


						default:
							pop_call(); return 0;
					}
				}
			}
			break;

		case ']':
			{
				int opt;
				char *osc = str_alloc_stack(0);

				if (str[2] == 'P')
				{
					if (cplen >= 10)
					{
						sprintf(osc, "%.*s", 8, str + 3);
							
						check_all_events(ses, EVENT_FLAG_VT100, 0, 1, "VT100 OSC COLOR PALETTE", osc);
							
						if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 1, "CATCH VT100 OSC", osc))
						{
							pop_call();
							return 11;
						}
					}
					pop_call(); return 0;
				}
				else
				{
					opt = 0;

					for (skip = 2 ; cplen >= skip && skip < NUMBER_SIZE ; skip++)
					{
						if (!is_digit(str[skip]))
						{
							break;
						}
						opt = opt * 10 + (str[skip] - '0');
					}

					if (opt == 68 && cplen >= skip + 3)
					{
						if (str[skip] != ';')
						{
							pop_call();
							return 0;
						}

						if (str[skip + 1] == '2' && str[skip + 2] == ';')
						{
							pop_call();
							return 1;
						}
					}
					
					while (cplen >= skip && skip < BUFFER_SIZE)
					{
						if (str[skip] == ASCII_BEL)
						{
							break;
						}
						skip++;
					}
	
					snprintf(osc, BUFFER_SIZE, "%.*s", skip - 2, str + 2);

					check_all_events(ses, SUB_SEC|EVENT_FLAG_VT100, 0, 1, "VT100 OSC", osc);

					if (check_all_events(ses, SUB_SEC|EVENT_FLAG_CATCH, 0, 1, "CATCH VT100 OSC", osc))
					{
						pop_call();
						return skip + 1;
					}
				}
			}
			break;

		case 'Z':
			if (check_all_events(ses, EVENT_FLAG_VT100, 0, 0, "CATCH VT100 DECID"))
			{
				pop_call();
				return 2;
			}
			break;

	}

	pop_call();
	return 0;
}
