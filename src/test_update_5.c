#include "tintin.h"
void update_chat(void)
{
	fd_set read_fd, write_fd, error_fd;
	static struct timeval timeout;
	struct chat_data *buddy, *buddy_next;
	int rv;

	if (gtd->chat)
	{
		for (buddy = gtd->chat->next ; buddy != NULL ; buddy = buddy_next)
		{
			buddy_next = buddy->next;

			if (buddy->timeout && buddy->timeout < gtd->time)
			{
				chat_socket_printf(buddy, "%c\n%s closed the connection because no handshake was completed.\n%c", CHAT_MESSAGE, gtd->chat->name, CHAT_END_OF_COMMAND);

				close_chat(buddy, TRUE);
			}
		}

		if (gtd->chat->paste_time && gtd->chat->paste_time < gtd->utime)
		{
			chat_paste(NULL, NULL);
		}

		TINTIN_FD_ZERO(&read_fd);
		TINTIN_FD_ZERO(&write_fd);
		TINTIN_FD_ZERO(&error_fd);

		FD_SET(gtd->chat->fd, &read_fd);

		for (buddy = gtd->chat->next ; buddy != NULL ; buddy = buddy->next)
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
				return;
			}
			syserr_fatal(-1, "update_chat: select");
		}
		process_chat_connections(&read_fd, &write_fd, &error_fd);

	}
}
