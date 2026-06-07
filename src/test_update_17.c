#include "tintin.h"
void close_timer(int timer)
{
	struct timeval last_time;
	long long current_time;

	gettimeofday(&last_time, NULL);

	current_time = (long long) last_time.tv_usec + 1000000LL * (long long) last_time.tv_sec;

	cpu_timer[timer][0] += (current_time - cpu_timer[timer][2]);
	cpu_timer[timer][1] ++;
}
