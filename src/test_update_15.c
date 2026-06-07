#include "tintin.h"
void show_cpu(struct session *ses)
{
	long long total_cpu = 0;
	int timer;

	tintin_printf2(ses, "Section                           Time (usec)    Freq (msec)  %%Prog         %%CPU");

	tintin_printf2(ses, "");

	for (timer = 0 ; timer < TIMER_CPU ; timer++)
	{
		total_cpu += display_timer(ses, timer);
	}

	tintin_printf2(ses, "");

	tintin_printf2(ses, "Unknown CPU Usage:             %7.3f percent", (gtd->total_io_exec - total_cpu) * 100.0 / (gtd->total_io_delay + gtd->total_io_exec));
	tintin_printf2(ses, "Average CPU Usage:             %7.3f percent", (gtd->total_io_exec)             * 100.0 / (gtd->total_io_delay + gtd->total_io_exec));
//	tintin_printf2(ses, "Total   CPU Usecs:             %10ld", gtd->total_io_exec);
//	tintin_printf2(ses, "Total   CPU Delay:             %10ld", gtd->total_io_delay);

}


long long display_timer(struct session *ses, int timer)
{
	long long total_usage, indicated_usage;

	total_usage = gtd->total_io_exec + gtd->total_io_delay;

	if (total_usage == 0)
	{
		return 0;
	}

	if (cpu_timer[timer][1] == 0 || cpu_timer[timer][4] == 0)
	{
		return 0;
	}

//	indicated_usage = cpu_timer[timer][0] / cpu_timer[timer][1] * cpu_timer[timer][4];

	indicated_usage = cpu_timer[timer][0];

	tintin_printf2(ses, "%-29s %8.1f       %8lld      %8.2f     %8.3f",
		timer_table[timer].name,
		(double) cpu_timer[timer][0] / (double) cpu_timer[timer][1],
		cpu_timer[timer][3] / cpu_timer[timer][4] / 1000,
		(double) (100000 * indicated_usage / gtd->total_io_exec) / 1000.0,
		(double) (100000 * indicated_usage / total_usage) / 1000.0
		);

	return indicated_usage;
}

