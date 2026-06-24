#include "tintin.h"
#include "telnet.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/un.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <signal.h>
#include <dirent.h>
#include <termios.h>
#ifdef HAVE_PTY_H
#include <pty.h>
#endif
#ifdef HAVE_UTIL_H
#include <util.h>
#endif
#define CALL_TIMEOUT 5
#define DEFAULT_PORT 4050

void port_socket_write(struct session *ses, struct port_data *buddy, char *str, int len);
char *get_daemon_dir(struct session *ses, char *filename);
int process_chat_input(struct chat_data *buddy);
void close_chat(struct chat_data *buddy, int active);

/* Extracted chat_printf from src/chat.c */
void chat_printf(char *format, ...)
{
	struct chat_data *buddy;
	char *buf, *tmp;
	va_list args;

	push_call("chat_printf(%p,...)",format);

	buf = str_alloc_stack(0);
	tmp = str_alloc_stack(0);

	va_start(args, format);
	vsnprintf(buf, BUFFER_SIZE / 3, format, args);
	va_end(args);

	str_fix(buf);

	if (strncmp(buf, gtd->chat->prefix, strlen(gtd->chat->prefix)))
	{
		str_cpy_printf(&tmp, "%s%s", gtd->chat->prefix, buf);
	}
	else
	{
		str_cpy_printf(&tmp, "%s", buf);
	}

	strip_vt102_codes_non_graph(tmp, buf);

	str_cpy_printf(&tmp, "%c%s%c", CHAT_SNOOP_DATA, buf, CHAT_END_OF_COMMAND);

	for (buddy = gtd->chat->next ; buddy ; buddy = buddy->next)
	{
		if (HAS_BIT(buddy->flags, CHAT_FLAG_FORWARD) && !HAS_BIT(buddy->flags, CHAT_FLAG_FORWARDALL))
		{
			chat_socket_printf(buddy, "%s", tmp);
		}
	}
	str_cpy_printf(&tmp, "%s%s%s", gtd->chat->color, buf, "\e[0m");

	check_all_events(gts, SUB_SEC|EVENT_FLAG_PORT, 0, 2, "CHAT MESSAGE", tmp, buf);

	if (!check_all_events(gts, SUB_SEC|EVENT_FLAG_CATCH, 0, 2, "CATCH CHAT MESSAGE", tmp, buf))
	{
		tintin_printf(gtd->ses, "%s", tmp);
	}
	pop_call();
	return;
}


/* Extracted chat_socket_printf from src/chat.c */
void chat_socket_printf(struct chat_data *buddy, char *format, ...)
{
	char *buf;
	int len;
	va_list args;

	va_start(args, format);

	len = vasprintf(&buf, format, args);

	va_end(args);

	if (!HAS_BIT(buddy->flags, CHAT_FLAG_LINKLOST))
	{
		if (write(buddy->fd, buf, len) < 0)
		{
			chat_printf("%s went link lost.", buddy->name);

			SET_BIT(buddy->flags, CHAT_FLAG_LINKLOST);
		}
	}
	free(buf);
}


/* Extracted threaded_chat_call from src/chat.c */
void *threaded_chat_call(void *arg)
{
	int sock, error;
	char host[NAME_SIZE], port[NAME_SIZE], name[NAME_SIZE];
	struct addrinfo *address;
	static struct addrinfo hints;
	struct chat_data *new_buddy;
	struct timeval to;
	fd_set wds, rds;

	chat_printf("Attempting to call %s ...", arg);

	to.tv_sec = CALL_TIMEOUT;
	to.tv_usec = 0;

	arg = (void *) get_arg_in_braces(gtd->ses, (char *) arg, host, GET_ONE);
	arg = (void *) get_arg_in_braces(gtd->ses, (char *) arg, port, GET_ONE);

	if (*port == 0)
	{
		sprintf(port, "%d", DEFAULT_PORT);
	}

	hints.ai_family   = AF_INET;
	hints.ai_protocol = IPPROTO_TCP;
	hints.ai_socktype = SOCK_STREAM;

	error = getaddrinfo(host, port, &hints, &address);

	switch (error)
	{
		case 0:
			break;

		case -2:
			chat_printf("Failed to call %s, unknown host.", host);
			return NULL;

		default:
			chat_printf("Failed to call %s.", host);
			return NULL;
	}

	sock = socket(address->ai_family, address->ai_socktype, address->ai_protocol);

	if (sock < 0)
	{
		syserr_printf(gtd->ses, "threaded_chat_call: socket");

		freeaddrinfo(address);

		return NULL;
	}

	switch (address->ai_family)
	{
		case AF_INET:
			inet_ntop(address->ai_family, &((struct sockaddr_in *)address->ai_addr)->sin_addr, host, address->ai_addrlen);
			break;

		case AF_INET6:
			inet_ntop(address->ai_family, &((struct sockaddr_in6 *)address->ai_addr)->sin6_addr, host, address->ai_addrlen);
			break;
	}

	if (connect(sock, address->ai_addr, address->ai_addrlen) != 0)
	{
		chat_printf("Failed to connect to %s:%s", host, port);

		close(sock);

		freeaddrinfo(address);

		return NULL;
	}

	memset(&wds, 0, sizeof(wds));

	FD_SET(sock, &wds);

	if (select(FD_SETSIZE, NULL, &wds, NULL, &to) == -1)
	{
		chat_printf("Failed to connect to %s %s", host, port);

		close(sock);
		freeaddrinfo(address);

		return NULL;
	}

	if (!FD_ISSET(sock, &wds))
	{
		chat_printf("Connection timed out.");

		close(sock);
		freeaddrinfo(address);

		return NULL;
	}

	new_buddy = calloc(1, sizeof(struct chat_data));

	new_buddy->fd       = sock;
	new_buddy->port     = atoi(port);

	new_buddy->color    = strdup("");
	new_buddy->download = strdup("");
	new_buddy->group    = strdup("");
	new_buddy->ip       = strdup(host);
	new_buddy->name     = strdup("");
	new_buddy->reply    = strdup("");
	new_buddy->prefix   = strdup("");
	new_buddy->version  = strdup("");

	new_buddy->timeout  = gtd->time + CALL_TIMEOUT * 6;

	strip_vt102_codes(gtd->chat->name, name);

	chat_socket_printf(new_buddy, "CHAT:%s\n%s%-5u", name, gtd->chat->ip, gtd->chat->port);

	chat_printf("Socket connected, negotiating protocol...");

#ifdef HAVE_LIBPTHREAD
	while (gtd->chat->update)
	{
		chat_printf("Blocking the linking of %s.", new_buddy->name);

		usleep(1000);

		continue;
	}
#endif
	LINK(new_buddy, gtd->chat->next, gtd->chat->prev);

	freeaddrinfo(address);

	return NULL;

//	old code

	memset(&rds, 0, sizeof(rds));
	FD_SET(sock, &rds);

	to.tv_sec  = CALL_TIMEOUT;
	to.tv_usec = 0;

	if (select(FD_SETSIZE, &rds, NULL, NULL, &to) == -1)
	{
		close_chat(new_buddy, FALSE);
		freeaddrinfo(address);

		return NULL;
	}

	if (process_chat_input(new_buddy) == -1)
	{
		FD_CLR(new_buddy->fd, &rds);
		close_chat(new_buddy, FALSE);
		freeaddrinfo(address);

		return NULL;
	}

	if (gtd->chat == NULL || *new_buddy->name == 0)
	{
		close_chat(new_buddy, FALSE);
	}
	else
	{
		if (fcntl(sock, F_SETFL, O_NDELAY|O_NONBLOCK) == -1)
		{
			syserr_printf(gtd->ses, "chat_new: fcntl O_NDELAY|O_NONBLOCK");
		}

#ifdef HAVE_LIBPTHREAD
		while (gtd->chat->update)
		{
			chat_printf("Blocking the linking of %s.", new_buddy->name);

			usleep(1000);

			continue;
		}
#endif
		LINK(new_buddy, gtd->chat->next, gtd->chat->prev);

		chat_printf("Connection made to %s.", new_buddy->name);
	}
	freeaddrinfo(address);

	return NULL;
}


/* Extracted arachnos_devel from src/msdp.c */
void arachnos_devel(struct session *ses, char *fmt, ...)
{
	char buf[STRING_SIZE];

	va_list args;

	va_start(args, fmt);
	vsprintf(buf, fmt, args);
	va_end(args);

	port_printf(ses, "ARACHNOS: %s", buf);
}


/* Extracted arachnos_mudlist from src/msdp.c */
void arachnos_mudlist(struct session *ses, char *fmt, ...)
{
	char buf[STRING_SIZE];

	va_list args;

	va_start(args, fmt);
	vsprintf(buf, fmt, args);
	va_end(args);

	port_printf(ses, "ARACHNOS: %s", buf);
}


/* Extracted msdp_update_varf from src/msdp.c */
void msdp_update_varf(struct session *ses, struct port_data *buddy, char *var, char *fmt, ...)
{
	char buf[STRING_SIZE];
	va_list args;

	va_start(args, fmt);
	vsprintf(buf, fmt, args);
	va_end(args);

	msdp_update_var(ses, buddy, var, buf);
}


/* Extracted msdp_update_all from src/msdp.c */
void msdp_update_all(char *var, char *fmt, ...)
{
	struct session *ses;
	struct port_data *buddy;
	char buf[STRING_SIZE];
	va_list args;

	va_start(args, fmt);
	vsprintf(buf, fmt, args);
	va_end(args);

	for (ses = gts->next ; ses ; ses = ses->next)
	{
		if (ses->port)
		{
			for (buddy = ses->port->next ; buddy ; buddy = buddy->next)
			{
				if (buddy->msdp_data)
				{
					msdp_update_var(ses, buddy, var, buf);
				}
			}
		}
	}
}


/* Extracted tintin2msdp from src/msdp.c */
int tintin2msdp(char *str, char *out)
{
	char *pto, *ptv, var[BUFFER_SIZE], val[BUFFER_SIZE];
	int nest, last, type, level, state[100];

	nest = last = level = 0;

	pto = out;
	ptv = var;

	while (*str && *str != '{')
	{
		*pto++ = *str++;
	}

	pto += sprintf(pto, "%c%c%c", IAC, SB, TELOPT_MSDP);

	state[0] = nest = type = 0;

	while (*str && nest < 99)
	{
		switch (*str)
		{
			case '{':
				level++;

				if (state[nest] == 0)
				{
					ptv = var;

					state[nest] = *pto++ = MSDP_VAR;
				}
				else if (state[nest] == MSDP_VAR)
				{
					ptv = val;

					state[nest] = *pto++ = MSDP_VAL;
				}
				str++;

				break;

			case '}':
				level--;

				if (level == 0)
				{
					if (state[nest] == MSDP_VAR)
					{
						*ptv = 0;

						pto += sprintf(pto, "%s", var);
					}
					else if (state[nest] == MSDP_VAL)
					{
						*ptv = 0;

						pto += sprintf(pto, "%s", val);

						state[nest] = 0;
					}
				}
				str++;

				if (nest < 0)
				{
					pto += sprintf(pto, "%c%c", IAC, SE);
					return pto - out;
				}
				break;

			case ';':
				if (level)
				{
					if (state[nest] == MSDP_VAL)
					{
						*ptv = 0;

						pto += sprintf(pto, "%s%c", val, MSDP_VAL);

						ptv = val;
					}
				}
				else
				{
					break; // Instead of goto end;
				}
				str++;

				continue; // Replaces break; since we will switch outer loop to break on semicolon

			default:
				if (level)
				{
					if (state[nest] == MSDP_VAR)
					{
						*ptv++ = *str++;
					}
					else if (state[nest] == MSDP_VAL)
					{
						*ptv++ = *str++;
					}
				}
				else
				{
					break; // Instead of goto end;
				}

				continue; // Replaces break;
		}
        break; // Breaks the while loop when hitting the break instead of continue
	}

	// end:

	pto += sprintf(pto, "%c%c", IAC, SE);

	while (*str)
	{
		*pto++ = *str++;
	}
	*pto = 0;

	return pto - out;
}


/* Extracted port_socket_printf from src/port.c */
void port_socket_printf(struct session *ses, struct port_data *buddy, char *format, ...)
{
	char buf[BUFFER_SIZE];
	va_list args;
	int len;

	va_start(args, format);
	len = vsnprintf(buf, BUFFER_SIZE / 3, format, args);
	va_end(args);

	port_socket_write(ses, buddy, buf, len);
}


/* Extracted port_telnet_printf from src/port.c */
void port_telnet_printf(struct session *ses, struct port_data *buddy, size_t length, char *format, ...)
{
	size_t size;

	char buf[BUFFER_SIZE];
	va_list args;

	va_start(args, format);
	size = vsprintf(buf, format, args);
	va_end(args);

	if (size != length && HAS_BIT(ses->telopts, TELOPT_FLAG_DEBUG))
	{
		tintin_printf(ses, "DEBUG TELNET: port_telnet_printf size difference: %d vs %d", size, length);
	}

	port_socket_write(ses, buddy, buf, length);
}


/* Extracted port_log_printf from src/port.c */
void port_log_printf(struct session *ses, struct port_data *buddy, char *format, ...)
{
	char buf[BUFFER_SIZE / 2], tmp[BUFFER_SIZE];
	int len;
	va_list args;

	len = BUFFER_SIZE / 2 - strlen(ses->port->prefix) - strlen(buddy->name) - strlen(buddy->ip) - 7;

	va_start(args, format);
	vsnprintf(buf, len, format, args);
	va_end(args);

	snprintf(tmp, BUFFER_SIZE, "%s%s@%s %s", ses->port->prefix, buddy->name, buddy->ip, buf);

	strip_vt102_codes_non_graph(tmp, buf);

	snprintf(tmp, BUFFER_SIZE, "%s%s\e[0m", ses->port->color, buf);

	check_all_events(ses, EVENT_FLAG_PORT, 0, 5, "PORT LOG MESSAGE", buddy->name, buddy->ip, ntos(buddy->fd), tmp, buf);

	if (!check_all_events(ses, EVENT_FLAG_CATCH, 0, 5, "CATCH PORT LOG MESSAGE", buddy->name, buddy->ip, ntos(buddy->fd), tmp, buf))
	{
		tintin_printf(ses, "%s", tmp);
	}
}


/* Extracted port_printf from src/port.c */
void port_printf(struct session *ses, char *format, ...)
{
	char buf[BUFFER_SIZE / 2], tmp[BUFFER_SIZE];
	int len;
	va_list args;

	len = BUFFER_SIZE / 2 - strlen(ses->port->prefix) - 5;

	va_start(args, format);
	vsnprintf(buf, len, format, args);
	va_end(args);

	snprintf(tmp, BUFFER_SIZE, "%s%s", ses->port->prefix, buf);

	strip_vt102_codes_non_graph(tmp, buf);

	snprintf(tmp, BUFFER_SIZE, "%s%s\e[0m", ses->port->color, buf);

	check_all_events(ses, SUB_SEC|EVENT_FLAG_PORT, 0, 2, "PORT MESSAGE", tmp, buf);

	if (!check_all_events(ses, SUB_SEC|EVENT_FLAG_CATCH, 0, 2, "CATCH PORT MESSAGE", tmp, buf))
	{
		tintin_printf(ses, "%s", tmp);
	}
}


/* Extracted port_call from src/port.c */
DO_PORT(port_call)
{
	int sock, error;
	char host[BUFFER_SIZE], port[BUFFER_SIZE];
	struct addrinfo *address;
	static struct addrinfo hints;
	struct port_data *new_buddy;
	struct timeval to;
	fd_set wds, rds;

	to.tv_sec = CALL_TIMEOUT;
	to.tv_usec = 0;

	strcpy(host, arg1);
	strcpy(port, arg2);

	port_printf(ses, "Attempting to call {%s} {%s} ...", host, port);

	hints.ai_family   = AF_INET;
	hints.ai_protocol = IPPROTO_TCP;
	hints.ai_socktype = SOCK_STREAM;

	error = getaddrinfo(host, port, &hints, &address);

	if (error)
	{
		hints.ai_family = AF_INET6;

		error = getaddrinfo(host, port, &hints, &address);

		if (error)
		{
			port_printf(ses, "Failed to call %s, unknown host.", host);
			
			return ses;
		}
	}

	sock = socket(address->ai_family, address->ai_socktype, address->ai_protocol);

	if (sock < 0)
	{
		syserr_printf(ses, "port_call: socket");

		freeaddrinfo(address);

		return ses;
	}

	switch (address->ai_family)
	{
		case AF_INET:
			inet_ntop(address->ai_family, &((struct sockaddr_in *)address->ai_addr)->sin_addr, host, address->ai_addrlen);
			break;

		case AF_INET6:
			inet_ntop(address->ai_family, &((struct sockaddr_in6 *)address->ai_addr)->sin6_addr, host, address->ai_addrlen);
			break;
	}

	error = connect(sock, address->ai_addr, address->ai_addrlen);

	if (error)
	{
		syserr_printf(ses, "port_call: connect");

		port_printf(ses, "Failed to connect to %s:%s", host, port);

		close(sock);

		freeaddrinfo(address);

		return ses;
	}

	freeaddrinfo(address);

	memset(&wds, 0, sizeof(wds));

	FD_SET(sock, &wds);

	error = select(FD_SETSIZE, NULL, &wds, NULL, &to);

	if (error < 0)
	{
		syserr_printf(ses, "port_call: select wds:");

		port_printf(ses, "Failed to connect to %s %s", host, port);

		close(sock);

		return ses;
	}

	if (!FD_ISSET(sock, &wds))
	{
		port_printf(ses, "Connection timed out.");

		close(sock);

		return ses;
	}

	new_buddy = calloc(1, sizeof(struct port_data));

	new_buddy->fd       = sock;
	new_buddy->port     = atoi(port);

	new_buddy->group    = strdup("");
	new_buddy->ip       = strdup(host);
	new_buddy->name     = strdup(ntos(sock));
	new_buddy->color    = strdup("");
	new_buddy->prefix   = strdup("");

	check_all_events(ses, EVENT_FLAG_PORT, 0, 3, "PORT CONNECTION", new_buddy->name, new_buddy->ip, ntos(new_buddy->port));

	memset(&rds, 0, sizeof(rds));
	FD_SET(sock, &rds);

	to.tv_sec  = CALL_TIMEOUT;
	to.tv_usec = 0;

	error = select(FD_SETSIZE, &rds, NULL, NULL, &to);

	if (error < 0)
	{
		syserr_printf(ses, "port_call: select rds:");

		close_port(ses, new_buddy, FALSE);

		return ses;
	}

	if (process_port_input(ses, new_buddy) == -1)
	{
		FD_CLR(new_buddy->fd, &rds);

		close_port(ses, new_buddy, FALSE);

		return ses;
	}

	// NULL check because of threading.

	if (ses->port == NULL || *new_buddy->name == 0)
	{
		close_port(ses, new_buddy, FALSE);

		return ses;
	}

	if (fcntl(sock, F_SETFL, O_NDELAY|O_NONBLOCK) == -1)
	{
		syserr_printf(ses, "port_new: fcntl O_NDELAY|O_NONBLOCK");
	}

	ses->port->total++;

	LINK(new_buddy, ses->port->next, ses->port->prev);

	port_printf(ses, "Connection made to %s.", new_buddy->name);

	return ses;
}


/* Extracted push_call from src/debug.c */
void push_call(char *format, ...)
{
	int len;

	len = gtd->memory->debug_len;

	if (len == gtd->memory->debug_max)
	{
		gtd->memory->debug_max++;

		gtd->memory->debug = (struct stack_data **) realloc(gtd->memory->debug, sizeof(struct str_data *) * gtd->memory->debug_max);

		gtd->memory->debug[len] = calloc(1, sizeof(struct stack_data));

		gtd->memory->debug[len]->name = calloc(1, NAME_SIZE);
	}

	strcpy(gtd->memory->debug[len]->name, format);

	gtd->memory->debug[len]->index = gtd->memory->stack_len;

	gtd->memory->debug_len++;
}


/* Extracted push_call_printf from src/debug.c */
int push_call_printf(char *format, ...)
{
	int len;
	va_list ap;

	len = gtd->memory->debug_len;

	if (len == gtd->memory->debug_max)
	{
		gtd->memory->debug_max++;

		gtd->memory->debug = (struct stack_data **) realloc(gtd->memory->debug, sizeof(struct str_data *) * gtd->memory->debug_max);

		gtd->memory->debug[len] = calloc(1, sizeof(struct stack_data));

		gtd->memory->debug[len]->name = calloc(1, NAME_SIZE);
	}

	va_start(ap, format);

	vsnprintf(gtd->memory->debug[len]->name, NAME_SIZE - 1, format, ap);

	va_end(ap);

	gtd->memory->debug[len]->index = gtd->memory->stack_len;

	if (gtd->memory->debug_len++ == 100)
	{
		tintin_printf2(gtd->ses, "\e[1;31merror: push_call_printf: stack size is going past 100.");

		tintin_printf2(gtd->ses, "\e[1;32mDEBUG_STACK[\e[1;31m%03d\e[1;32m] [%03d] = \e[1;31m%s\e[0m", len, gtd->memory->debug[len]->index, gtd->memory->debug[len]->name);

		return FALSE;
	}
	if (gtd->memory->debug_len > 500)
	{
		return FALSE;
	}
	return TRUE;
}


/* Extracted daemon_attach from src/daemon.c */
DO_DAEMON(daemon_attach)
{
	char filename[PATH_SIZE], sock_file[PATH_SIZE * 2];
	struct dirent **dirlist;
	struct sockaddr_un addr_un;
	int size, index, pid, error, repeat = 0;
	struct timeval timeout;
	fd_set wds, rds;

	gtd->time_daemon = gtd->time;

	timeout.tv_sec   = 0;
	timeout.tv_usec  = 100000;

	if (gtd->attach_sock)
	{
		show_error(ses, LIST_COMMAND, "#DAEMON ATTACH: YOU ARE ALREADY ATTACHED TO {%s}.", gtd->attach_file);

		return;
	}
	sub_arg_in_braces(ses, arg, arg1, GET_ALL, SUB_VAR|SUB_FUN);

	if (!get_daemon_dir(ses, filename))
	{
		return;
	}

	while (1) {
	size = scandir(filename, &dirlist, 0, alphasort);

	if (size == -1)
	{
		syserr_printf(ses, "do_attach: scandir:");

		return;
	}

	for (*arg2 = index = pid = 0 ; index < size ; index++)
	{
		if (strlen(dirlist[index]->d_name) > 2)
		{
			if (*arg1)
			{
				if (!strstr(dirlist[index]->d_name, arg1))
				{
					continue;
				}
			}
			arg = strchr(dirlist[index]->d_name, '.');

			if (arg)
			{
				*arg = 0;

				strcpy(arg2, dirlist[index]->d_name);

				arg = strchr(dirlist[index]->d_name, '_');

				if (arg)
				{
					pid = atoi(arg + 1);
				}
				break;
			}
		}
	}

	for (index = 0 ; index < size ; index++)
	{
		free(dirlist[index]);
	}
	free(dirlist);

	if (pid == 0)
	{
		if (HAS_BIT(gtd->flags, TINTIN_FLAG_DAEMONIZE))
		{
			command(ses, do_daemon, "detach {%s}", arg1);

			return;
		}

		if (*arg1 && ++repeat < 10)
		{
			usleep(2000);

			continue;
		}

		if (*arg1)
		{
			show_message(ses, LIST_COMMAND, "#ERROR: #DAEMON ATTACH: UNABLE TO FIND DAEMON FILE {%s} IN {%s}.", arg1, filename);
		}
		else
		{
			show_message(ses, LIST_COMMAND, "#ERROR: #DAEMON ATTACH: NO AVAILABLE DAEMON FILES FOUND IN {%s}.", filename);
		}

		return;
	}

	sprintf(sock_file, "%.*s/%.*s.s", PATH_SIZE - 1, filename, NAME_SIZE, arg2);

	if (access(sock_file, F_OK) == -1)
	{
		show_error(ses, LIST_COMMAND, "#ERROR: DAEMON ATTACH: FILE {%s} CANNOT BE ACCESSED.", sock_file);

		return;
	}

	if (kill((pid_t) pid, 0) == -1)
	{
		show_error(ses, LIST_COMMAND, "#ERROR: DAEMON ATTACH: REMOVING INVALID DAEMON FILE {%s}.", sock_file);

		remove(sock_file);

		if (HAS_BIT(gtd->flags, TINTIN_FLAG_DAEMONIZE) || *arg1 == 0)
		{
			continue;
		}
		return;
	}
	DEL_BIT(gtd->flags, TINTIN_FLAG_DAEMONIZE);

	memset(&addr_un, 0, sizeof(addr_un));

	if (strlen(sock_file) >= sizeof(addr_un.sun_path))
	{
		show_error(ses, LIST_COMMAND, "#ERROR: #DAEMON ATTACH: {%s} FILENAME EXCEEDS MAXIMUM LENGTH OF %d.", filename, sizeof(addr_un.sun_path));

		return;
	}

	if (pid == getpid())
	{
		show_error(ses, LIST_COMMAND, "#ERROR: #DAEMON ATTACH: {%s} CANNOT ATTACH TO ITSELF.", filename);
		
		return;
	}

	gtd->attach_file = restringf(gtd->attach_file, "%s", sock_file);
	gtd->attach_pid  = pid;
	gtd->attach_sock = socket(AF_UNIX, SOCK_STREAM, 0);

	if (gtd->attach_sock == -1)
	{
		syserr_printf(ses, "do_attach: %s: socket:");

		gtd->attach_sock = 0;

		return;
	}

	strcpy(addr_un.sun_path, sock_file);
	addr_un.sun_family = AF_UNIX;

	show_message(ses, LIST_COMMAND, "#DAEMON ATTACH: CONNECTING {%d} TO {%d} {%s}", getpid(), gtd->attach_pid, sock_file);

/*
	error = select(gtd->attach_sock, NULL, &wds, NULL, &timeout);

	if (error == -1)
	{
		syserr_printf(ses, "do_attach: %s: select:", sock_file);

		return;
	}
*/
	if (connect(gtd->attach_sock, (struct sockaddr *)&addr_un, sizeof(addr_un)) == -1)
	{
		syserr_printf(ses, "do_attach: %s: connect:", sock_file);

		gtd->attach_sock = close(gtd->attach_sock);

		return;
	}


	memset(&wds, 0, sizeof(wds));

	FD_SET(gtd->attach_sock, &wds);

	error = select(FD_SETSIZE, NULL, &wds, NULL, &timeout);

	if (error < 0)
	{
		syserr_printf(ses, "do_attach: select wds:");

		show_error(ses, LIST_COMMAND, "#ERROR: #DAEMON ATTACH: UNABLE TO WRITE TO {%s}.", sock_file);

		gtd->attach_sock = close(gtd->attach_sock);

		return;
	}

	if (!FD_ISSET(gtd->attach_sock, &wds))
	{
		show_error(ses, LIST_COMMAND, "#ERROR: #DAEMON ATTACH: UNABLE TO WRITE TO {%s}.", sock_file);

		gtd->attach_sock = close(gtd->attach_sock);

		return;
	}

	memset(&rds, 0, sizeof(rds));
	FD_SET(gtd->attach_sock, &rds);

	error = select(FD_SETSIZE, &rds, NULL, NULL, &timeout);

	if (error < 0)
	{
		syserr_printf(ses, "do_attach: select rds:");

		gtd->attach_sock = close(gtd->attach_sock);

		return;
	}

	if (error == 0)
	{
		tintin_printf2(ses, "do_attach: select rds: timeout");

		check_all_events(gtd->ses, EVENT_FLAG_SYSTEM, 0, 2, "DAEMON ATTACH TIMEOUT", sock_file, ntos(pid));

		gtd->attach_sock = 0;
//		gtd->attach_sock = close(gtd->attach_sock);
		
		return;
	}

	tintin_printf2(ses, "do_attach: succes");

	return;
    } // end while(1)
}


