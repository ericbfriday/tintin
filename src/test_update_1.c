#include "tintin.h"
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
