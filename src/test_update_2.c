#include "tintin.h"
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
