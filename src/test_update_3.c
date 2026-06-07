#include "tintin.h"
void update_sessions(void)
{
	fd_set read_fd, error_fd;
	static struct timeval timeout;
	static unsigned char sleep;
	struct session *ses;
	int rv;

	if (gtd->time_session < gtd->time)
	{
		if (sleep++ < 10)
		{
			return;
		}
		sleep = 0;
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_WINCHUPDATE))
	{
		DEL_BIT(gtd->flags, TINTIN_FLAG_WINCHUPDATE);

		init_terminal_size(gts);

		for (ses = gts->next ; ses != NULL ; ses = ses->next)
		{
			init_terminal_size(ses);

			if (HAS_BIT(ses->telopts, TELOPT_FLAG_NAWS))
			{
				SET_BIT(ses->telopts, TELOPT_FLAG_UPDATENAWS);
			}
		}
		winch_daemon();
	}

	if (gts->next)
	{
		TINTIN_FD_ZERO(&read_fd);
		TINTIN_FD_ZERO(&error_fd);

		for (ses = gts->next ; ses != NULL ; ses = gtd->update)
		{
			gtd->update = ses->next;

			if (HAS_BIT(ses->flags, SES_FLAG_CONNECTED))
			{

				while (TRUE)
				{
					FD_SET(ses->socket, &read_fd);
					FD_SET(ses->socket, &error_fd);

					rv = select(FD_SETSIZE, &read_fd, NULL, &error_fd, &timeout);

					if (rv < 0)
					{
						break; // bug report after removal.
					}

					if (rv == 0)
					{
						break;
					}

					if (FD_ISSET(ses->socket, &read_fd))
					{
						if (read_buffer_mud(ses) == FALSE)
						{
							readmud(ses);

							SET_BIT(ses->flags, SES_FLAG_LINKLOST);

							cleanup_session(ses);

							gtd->mud_output_len = 0;

							break;
						}
					}

					if (FD_ISSET(ses->socket, &error_fd))
					{
						FD_CLR(ses->socket, &read_fd);

						SET_BIT(ses->flags, SES_FLAG_LINKLOST);

						cleanup_session(ses);

						gtd->mud_output_len = 0;

						break;
					}
				}

				if (gtd->mud_output_len)
				{
					gtd->time_session = gtd->time + 10;

					readmud(ses);
				}
			}
		}
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_SESSIONUPDATE))
	{
		DEL_BIT(gtd->flags, TINTIN_FLAG_SESSIONUPDATE);

		for (ses = gts ; ses != NULL ; ses = gtd->update)
		{
			gtd->update = ses->next;

			if (HAS_BIT(ses->flags, SES_FLAG_PRINTLINE))
			{
				DEL_BIT(ses->flags, SES_FLAG_PRINTLINE);

				SET_BIT(ses->flags, SES_FLAG_PRINTBUFFER);

				if (ses == gtd->ses)
				{
					if (HAS_BIT(ses->scroll->flags, SCROLL_FLAG_RESIZE))
					{
						buffer_refresh(ses, "", "", "");
					}
					else
					{
						print_scroll_region(ses);
					}
				}
				else
				{
/*
					if (HAS_BIT(ses->flags, SES_FLAG_SNOOPSCROLL))
					{

						if (HAS_BIT(ses->scroll->flags, SCROLL_FLAG_RESIZE))
						{
							buffer_refresh(ses, "", "", "");
						}
						else
						{
							print_scroll_region(ses);
						}
					}
*/
					buffer_end(ses, "", "", "");
				}
				DEL_BIT(ses->flags, SES_FLAG_PRINTBUFFER);
			}

			if (HAS_BIT(ses->flags, SES_FLAG_BUFFERUPDATE))
			{
				check_all_events(ses, EVENT_FLAG_UPDATE, 0, 0, "BUFFER UPDATE");

				DEL_BIT(ses->flags, SES_FLAG_BUFFERUPDATE);
			}
		}
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_DISPLAYUPDATE))
	{
		check_all_events(gtd->ses, EVENT_FLAG_UPDATE, 0, 0, "DISPLAY UPDATE");

		DEL_BIT(gtd->flags, TINTIN_FLAG_DISPLAYUPDATE);

		fflush(stdout);
	}
}
