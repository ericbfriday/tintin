#define TINTIN_FD_ZERO(p) memset((p), 0, sizeof(*(p)))
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
*                      coded by Igor van den Hoven 2006                       *
******************************************************************************/

#include "tintin.h"

#include <sys/types.h>
#include <sys/time.h>
#include <fcntl.h>
#include <termios.h>
#include <sys/un.h>
#include <sys/socket.h>
#include <signal.h>

#define TIMER_UPDATE_INPUT               0
#define TIMER_UPDATE_SESSIONS            1
#define TIMER_UPDATE_DELAYS              2
#define TIMER_UPDATE_DAEMON              3
#define TIMER_UPDATE_CHAT                4
#define TIMER_UPDATE_PORT                5
#define TIMER_UPDATE_TICKS               6
#define TIMER_UPDATE_PATHS               7
#define TIMER_UPDATE_PACKETS             8
#define TIMER_UPDATE_TERMINAL            9
#define TIMER_UPDATE_TIME               10
#define TIMER_UPDATE_MEMORY             11
#define TIMER_STALL_PROGRAM             12
#define TIMER_CPU                       13


#define PULSE_PER_SECOND               100

#define PULSE_UPDATE_INPUT               1
#define PULSE_UPDATE_SESSIONS            1
#define PULSE_UPDATE_DELAYS              1
#define PULSE_UPDATE_DAEMON              1
#define PULSE_UPDATE_CHAT               10
#define PULSE_UPDATE_PORT               10
#define PULSE_UPDATE_TICKS              10
#define PULSE_UPDATE_PATHS              10
#define PULSE_UPDATE_PACKETS            10
#define PULSE_UPDATE_TERMINAL           10
#define PULSE_UPDATE_MEMORY             10
#define PULSE_UPDATE_TIME                5

long long cpu_timer[TIMER_CPU][5];

extern void update_input(void);
extern void update_sessions(void);
extern void update_daemon(void);
extern void update_chat(void);
extern void update_port(void);
extern void tick_update(void);
extern void delay_update(void);
extern void path_update(void);
extern void packet_update(void);
extern void terminal_update(void);
extern void memory_update(void);
extern void time_update(void);

extern long long display_timer(struct session *ses, int timer);
extern void open_timer(int timer);
extern void close_timer(int timer);



void mainloop(void)
{
	static struct timeval wait_time;
	static struct pulse_type pulse;
	static int wait_time_val, span_time_val;
	static unsigned long long start_utime, end_utime;

	pulse.update_input    =  0 + PULSE_UPDATE_INPUT;
	pulse.update_sessions =  0 + PULSE_UPDATE_SESSIONS;
	pulse.update_delays   =  0 + PULSE_UPDATE_DELAYS;
	pulse.update_daemon   =  0 + PULSE_UPDATE_DAEMON;
	pulse.update_chat     =  1 + PULSE_UPDATE_CHAT;
	pulse.update_port     =  2 + PULSE_UPDATE_PORT;
	pulse.update_ticks    =  3 + PULSE_UPDATE_TICKS;
	pulse.update_paths    =  5 + PULSE_UPDATE_PATHS;
	pulse.update_packets  =  6 + PULSE_UPDATE_PACKETS;
	pulse.update_terminal =  7 + PULSE_UPDATE_TERMINAL;
	pulse.update_memory   =  8 + PULSE_UPDATE_MEMORY;
	pulse.update_time     =  9 + PULSE_UPDATE_TIME;

	push_call("mainloop()");

	init_cpu();

	while (TRUE)
	{
		start_utime = utime();

		gtd->total_io_exec  += span_time_val;
		gtd->total_io_delay += wait_time_val;

		if (gtd->memory->stack_len > 0)
		{
			tintin_printf2(NULL, "\e[1;31merror: memory_stack leak detected.\n");

			gtd->memory->debug_len = gtd->memory->debug_max;
			dump_stack();

			gtd->memory->debug_len = 1;
			gtd->memory->stack_len = 0;
		}

		if (gtd->memory->debug_len > 1)
		{
			tintin_printf2(NULL, "\e[1;31merror: debug_stack leak detected.\n");

			gtd->memory->debug_len = gtd->memory->debug_max;
			dump_stack();

			gtd->memory->debug_len = 1;
		}

		if (--pulse.update_delays == 0)
		{
			open_timer(TIMER_UPDATE_DELAYS);

			pulse.update_delays = PULSE_UPDATE_DELAYS;

			delay_update();

			close_timer(TIMER_UPDATE_DELAYS);
		}

		if (--pulse.update_input == 0)
		{
			open_timer(TIMER_UPDATE_INPUT);

			pulse.update_input = PULSE_UPDATE_INPUT;

			update_input();

			close_timer(TIMER_UPDATE_INPUT);
		}

		if (--pulse.update_sessions == 0)
		{
			open_timer(TIMER_UPDATE_SESSIONS);

			pulse.update_sessions = PULSE_UPDATE_SESSIONS;

			update_sessions();

			close_timer(TIMER_UPDATE_SESSIONS);
		}

		if (--pulse.update_daemon == 0)
		{
			open_timer(TIMER_UPDATE_DAEMON);

			pulse.update_daemon = PULSE_UPDATE_DAEMON;

			update_daemon();
			
			close_timer(TIMER_UPDATE_DAEMON);
		}

		if (--pulse.update_chat == 0)
		{
			open_timer(TIMER_UPDATE_CHAT);

			pulse.update_chat = PULSE_UPDATE_CHAT;

			update_chat();

			close_timer(TIMER_UPDATE_CHAT);
		}

		if (--pulse.update_port == 0)
		{
			open_timer(TIMER_UPDATE_PORT);

			pulse.update_port = PULSE_UPDATE_PORT;

			update_port();

			close_timer(TIMER_UPDATE_PORT);
		}	

		if (--pulse.update_ticks == 0)
		{
			open_timer(TIMER_UPDATE_TICKS);

			pulse.update_ticks = PULSE_UPDATE_TICKS;

			tick_update();

			close_timer(TIMER_UPDATE_TICKS);
		}

		if (--pulse.update_paths == 0)
		{
			open_timer(TIMER_UPDATE_PATHS);

			pulse.update_paths = PULSE_UPDATE_PATHS;

			path_update();

			close_timer(TIMER_UPDATE_PATHS);
		}


		if (--pulse.update_packets == 0)
		{
			open_timer(TIMER_UPDATE_PACKETS);

			pulse.update_packets = PULSE_UPDATE_PACKETS;

			packet_update();

			close_timer(TIMER_UPDATE_PACKETS);
		}

		if (--pulse.update_terminal == 0)
		{
			open_timer(TIMER_UPDATE_TERMINAL);

			pulse.update_terminal = PULSE_UPDATE_TERMINAL;

			terminal_update();

			close_timer(TIMER_UPDATE_TERMINAL);
		}

		if (--pulse.update_memory == 0)
		{
			open_timer(TIMER_UPDATE_MEMORY);

			pulse.update_memory = PULSE_UPDATE_MEMORY;

			memory_update();

			close_timer(TIMER_UPDATE_MEMORY);
		}

		if (--pulse.update_time == 0)
		{

			open_timer(TIMER_UPDATE_TIME);

			pulse.update_time = PULSE_UPDATE_TIME;

			time_update();

			close_timer(TIMER_UPDATE_TIME);
		}

		end_utime = utime();

		span_time_val = end_utime - start_utime;

		wait_time_val = (HAS_BIT(gtd->flags, TINTIN_FLAG_HIBERNATE) ? 10000000 : 1000000) / PULSE_PER_SECOND - span_time_val;

		if (wait_time_val > 0)
		{
			wait_time.tv_usec = wait_time_val;

			select(0, NULL, NULL, NULL, &wait_time);
		}
		else
		{
			wait_time_val = 0;
		}
	}
	pop_call();
	return;
}

void update_input(void)
{
	fd_set read_fd;
	static struct timeval timeout;
	static unsigned char sleep;

	if (gtd->time_input < gtd->time)
	{
		if (sleep++ < 10)
		{
			return;
		}
		sleep = 0;
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_NOHUP))
	{
		return;
	}

	if (gtd->detach_port)
	{
		return;
	}

	while (TRUE)
	{
		TINTIN_FD_ZERO(&read_fd);
		FD_SET(STDIN_FILENO, &read_fd);

		if (select(FD_SETSIZE, &read_fd, NULL, NULL, &timeout) <= 0)
		{
			break;
		}

		if (!FD_ISSET(STDIN_FILENO, &read_fd))
		{
			break;
		}

		gtd->time_input = gtd->time + 60;

		process_input();

		fflush(stdout);

		if (gtd->detach_port)
		{
			return;
		}
	}
	return;
}

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

void update_daemon(void)
{
	fd_set read_fd, error_fd;
	static struct timeval timeout;
	static unsigned char sleep;
	socklen_t len;
	int rv;

	if (gtd->time_daemon < gtd->time)
	{
		if (sleep++ < 10)
		{
			return;
		}
		sleep = 0;
	}

	if (gtd->detach_port)
	{
		do
		{
			TINTIN_FD_ZERO(&read_fd);

			FD_SET(gtd->detach_port, &read_fd);

			rv = select(FD_SETSIZE, &read_fd, NULL, NULL, &timeout);

			if (rv > 0)
			{
				if (FD_ISSET(gtd->detach_port, &read_fd))
				{
					gtd->time_daemon = gtd->time + 10;

					if (gtd->detach_sock)
					{
						tintin_printf2(gtd->ses, "#DAEMON UPDATE: ANOTHER CONNECTION IS TAKING OVER {%s}.", gtd->detach_file);
						kill((pid_t) gtd->detach_sock, SIGTSTP);
						close(gtd->detach_sock);
					}

					gtd->detach_sock = accept(gtd->detach_port, 0, 0);

					if (gtd->detach_sock < 0)
					{
						syserr_printf(gtd->ses, "update_daemon: detach_port: accept");
						
						gtd->detach_sock = close(gtd->detach_sock);
						
						break;
					}

					if (fcntl(gtd->detach_sock, F_SETFL, O_NDELAY|O_NONBLOCK) == -1)
					{
						syserr_printf(gtd->ses, "update_daemon: detach_port: fcntl O_NDELAY|O_NONBLOCK");

						gtd->detach_sock = close(gtd->detach_sock);
						
						break;
					}

					len = sizeof(struct process_data);

					if (getsockopt(gtd->detach_sock, SOL_SOCKET, SO_PEERCRED, &gtd->detach_info, &len) == -1)
					{
						syserr_printf(gtd->ses, "update_daemon: getsockopt:");

						gtd->detach_sock = close(gtd->detach_sock);

						break;
					}

					if (geteuid() != gtd->detach_info.uid)
					{
						tintin_printf2(gtd->ses, "#DAEMON UPDATE: YOUR UID IS %d WHILE {%s} HAS UID {%d}.", geteuid(), gtd->detach_file, gtd->detach_info.uid);

						gtd->detach_sock = close(gtd->detach_sock);

						break;
					}

//					tintin_printf2(gtd->ses, "sock=%d pid=%d, euid=%d, egid=%d", gtd->detach_port, getpid(), geteuid(), getegid());
//					tintin_printf2(gtd->ses, "sock=%d pid=%d, euid=%d, egid=%d", gtd->detach_sock, gtd->detach_info.pid, gtd->detach_info.uid, gtd->detach_info.gid);
