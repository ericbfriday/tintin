#include "tintin.h"
void update_port(void)
{
	struct session *ses;
	fd_set read_fd, write_fd, error_fd;
	static struct timeval timeout;
	struct port_data *buddy;
	int rv;

	for (ses = gts->next ; ses != NULL ; ses = gtd->update)
	{
		gtd->update = ses->next;

		if (ses->port && ses->port->port)
		{
			TINTIN_FD_ZERO(&read_fd);
			TINTIN_FD_ZERO(&write_fd);
			TINTIN_FD_ZERO(&error_fd);

			FD_SET(ses->port->fd, &read_fd);

			for (buddy = ses->port->next ; buddy != NULL ; buddy = buddy->next)
			{
				FD_SET(buddy->fd, &read_fd);
				FD_SET(buddy->fd, &write_fd);
				FD_SET(buddy->fd, &error_fd);
			}

			rv = select(FD_SETSIZE, &read_fd, &write_fd, &error_fd, &timeout);

			if (rv <= 0)
			{
				if (rv == 0 || errno == EINTR)
				{
					continue;
				}
				syserr_fatal(-1, "update_port: select");
			}

			process_port_connections(ses, &read_fd, &write_fd, &error_fd);
		}
	}
}
