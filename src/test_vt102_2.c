#include "tintin.h"
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
			for (len = 2 ; str[len] ; len++)
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
							goto end;

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
							goto end;

						case 'r':
							if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 2, "CATCH VT100 SCROLL REGION", ntos(val[0]), ntos(val[1])))
							{
								pop_call();
								return len + 1;
							}
							goto end;

						case 'H':
						case 'f':
							if (check_all_events(ses, EVENT_FLAG_CATCH, 0, 2, "CATCH VT100 CURSOR H", ntos(val[0]), ntos(val[1])))
							{
								pop_call();
								return len + 1;
							}
							goto end;

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
							goto end;

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
							goto end;

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
							goto end;


						default:
							goto end;
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
					goto end;
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

	end:

	pop_call();
	return 0;
}
