#include "tintin.h"
void init_cpu()
{
	struct timeval last_time;
	long long current_time;
	int timer;

	gettimeofday(&last_time, NULL);

	current_time = (long long) last_time.tv_usec + 1000000LL * (long long) last_time.tv_sec;

	for (timer = 0 ; timer < TIMER_CPU ; timer++)
	{
		cpu_timer[timer][2] = current_time;
	}
}
