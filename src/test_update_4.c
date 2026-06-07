#include "tintin.h"
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

					winch_handler(0);

					dirty_screen(gtd->ses);

					tintin_printf2(gtd->ses, "#DAEMON UPDATE: ATTACHED {%s} TO PID {%d}.", gtd->detach_file, gtd->detach_info.pid);

					check_all_events(gtd->ses, EVENT_FLAG_SYSTEM, 0, 2, "DAEMON ATTACHED", gtd->detach_file, ntos(gtd->detach_info.pid));
				}
			}
			else if (rv < 0)
			{
				if (errno != EINTR)
				{
					syserr_printf(gtd->ses, "update_daemon: select:");
				}
			}
		} while(0);

		if (gtd->detach_sock > 0)
		{
			while (gtd->detach_sock)
			{
				TINTIN_FD_ZERO(&read_fd);
//				TINTIN_FD_ZERO(&write_fd);
				TINTIN_FD_ZERO(&error_fd);

				FD_SET(gtd->detach_sock, &read_fd);
//				FD_SET(gtd->detach_sock, &write_fd);
				FD_SET(gtd->detach_sock, &error_fd);

				rv = select(FD_SETSIZE, &read_fd, NULL, &error_fd, &timeout);

//				tintin_printf2(gtd->ses, "debug: rv: %d (%d,%d,%d)\n", rv, FD_ISSET(gtd->detach_sock, &read_fd), FD_ISSET(gtd->detach_sock, &write_fd), FD_ISSET(gtd->detach_sock, &error_fd));

				if (rv == 0)
				{
					break;
				}
				else if (rv < 0)
				{
					FD_CLR(gtd->detach_sock, &read_fd);

					gtd->detach_sock = close(gtd->detach_sock);

	                                syserr_printf(gtd->ses, "update_daemon: detach_sock: select:");

	                                break;
				}
				else if (rv > 0)
				{
					if (FD_ISSET(gtd->detach_sock, &error_fd))
					{
						FD_CLR(gtd->detach_sock, &read_fd);

						gtd->detach_sock = close(gtd->detach_sock);

						show_error(gtd->ses, LIST_COMMAND, "update_daemon: detach_sock: error_fd");

						break;
					}

/*					if (!FD_ISSET(gtd->detach_sock, &write_fd))
					{
						FD_CLR(gtd->detach_sock, &read_fd);

						gtd->detach_sock = close(gtd->detach_sock);

						show_error(gtd->ses, LIST_COMMAND, "update_daemon: detach_sock: write_fd");

						break;
					}
*/
					if (!FD_ISSET(gtd->detach_sock, &read_fd))
					{
//						gtd->detach_sock = close(gtd->detach_sock); // experimental
						break;
					}
					gtd->time_daemon = gtd->time + 10;

					process_input();
				}
			}
		}
	}

	if (gtd->attach_sock)
	{
		TINTIN_FD_ZERO(&read_fd);
		TINTIN_FD_ZERO(&error_fd);

		FD_SET(gtd->attach_sock, &read_fd);
		FD_SET(gtd->attach_sock, &error_fd);

		rv = select(FD_SETSIZE, &read_fd, NULL, &error_fd, &timeout);

		if (rv < 0)
		{
			gtd->attach_sock = close(gtd->attach_sock);
	
			show_message(gtd->ses, LIST_COMMAND, "#DAEMON UPDATE: UNATTACHING {%s} DUE TO SELECT ERROR.", gtd->attach_file);
		}
		else if (rv > 0)
		{
			if (FD_ISSET(gtd->attach_sock, &read_fd))
			{
				char buffer[BUFFER_SIZE];

				gtd->time_daemon = gtd->time + 10;

				rv = read(gtd->attach_sock, buffer, BUFFER_SIZE -1);

				if (rv <= 0)
				{
					if (rv < 0)
					{
						syserr_printf(gtd->ses, "update_daemon: attach_sock: read:");
					}
					gtd->attach_sock = close(gtd->attach_sock);

					winch_handler(0);

					dirty_screen(gtd->ses);

					show_message(gtd->ses, LIST_COMMAND, "#DAEMON UPDATE: UNATTACHING {%s}.", gtd->attach_file);
				}
				else
				{
					buffer[rv] = 0;
/*
					if (buffer[rv - 1] == (char) 255)
					{
						gtd->attach_sock = close(gtd->attach_sock);

						show_message(gtd->ses, LIST_COMMAND, "\n#DAEMON {%s} SIGTSTP: UNATTACHING.", gtd->attach_file);

						dirty_screen(gtd->ses);

						return;
					}
*/
					if (gtd->level->quiet == 0)
					{
						printf("%s", buffer);
					}

					if (FD_ISSET(gtd->attach_sock, &error_fd))
					{
						FD_CLR(gtd->attach_sock, &read_fd);

						gtd->attach_sock = close(gtd->attach_sock);

						show_message(gtd->ses, LIST_COMMAND, "#DAEMON UPDATE: UNATTACHING {%s} DUE TO EXCEPTION ERROR.", gtd->attach_file);
					}
				}
				fflush(stdout); // used to be down
			}
			else
			{
				return;
			}
		}
//		fflush(stdout);
	}

}
