#include "tintin.h"
void time_update(void)
{
	static char str_sec[9], str_min[9], str_hour[9], str_wday[9], str_mday[9], str_mon[9], str_year[9];
	static struct tm calendar, old_calendar;
	static short event_date, event_minute, event_second, event_time;

	if (gtd->time == time(NULL))
	{
		return;
	}
	gtd->time = time(NULL);

	if (!HAS_BIT(gtd->event_flags, EVENT_FLAG_TIME))
	{
		return;
	}

	// Initialize on the first call.

	if (old_calendar.tm_year == 0)
	{
		calendar = *localtime(&gtd->time);

		old_calendar.tm_sec  = calendar.tm_sec;
		old_calendar.tm_min  = calendar.tm_min;
		old_calendar.tm_hour = calendar.tm_hour;
		old_calendar.tm_wday = calendar.tm_wday;
		old_calendar.tm_mday = calendar.tm_mday;
		old_calendar.tm_mon  = calendar.tm_mon;
		old_calendar.tm_year = calendar.tm_year;

		strftime(str_sec,  9, "%S", &calendar);
		strftime(str_min,  9, "%M", &calendar);
		strftime(str_hour, 9, "%H", &calendar);
		strftime(str_wday, 9, "%w", &calendar);
		strftime(str_mday, 9, "%d", &calendar);
		strftime(str_mon,  9, "%m", &calendar);
		strftime(str_year, 9, "%Y", &calendar);

		while (strcmp(event_table[++event_date].name, "DATE"))
		{
		}
		event_minute = event_date;

		while (strcmp(event_table[++event_minute].name, "MINUTE"))
		{
		}
		event_second = event_minute;

		while (strcmp(event_table[++event_second].name, "SECOND"))
		{
		}
		event_time = event_second;

		while (strcmp(event_table[++event_time].name, "TIME "))
		{
		}
	}

	calendar.tm_sec = gtd->time % 60;
	calendar.tm_min = gtd->time % 3600 / 60;

//	strftime(str_sec, 9, "%S", &calendar);

	str_sec[0] = '0' + calendar.tm_sec / 10;
	str_sec[1] = '0' + calendar.tm_sec % 10;
	old_calendar.tm_sec = calendar.tm_sec;

	if (calendar.tm_min != old_calendar.tm_min)
	{
		// localtime() is slow, so only update it once a minute
		calendar = *localtime(&gtd->time);

		str_min[0] = '0' + calendar.tm_min / 10;
		str_min[1] = '0' + calendar.tm_min % 10;
		old_calendar.tm_min = calendar.tm_min;

		if (calendar.tm_hour != old_calendar.tm_hour)
		{
			strftime(str_hour, 9, "%H", &calendar);
			old_calendar.tm_hour = calendar.tm_hour;

			if (calendar.tm_mday != old_calendar.tm_mday)
			{
				strftime(str_wday, 9, "%w", &calendar);
				old_calendar.tm_wday = calendar.tm_wday;

				strftime(str_mday, 9, "%d", &calendar);
				old_calendar.tm_mday = calendar.tm_mday;

				if (calendar.tm_mon != old_calendar.tm_mon)
				{
					strftime(str_mon, 9, "%m", &calendar);
					old_calendar.tm_mon = calendar.tm_mon;

					if (calendar.tm_year != old_calendar.tm_year)
					{
						strftime(str_year, 9, "%Y", &calendar);
						old_calendar.tm_year = calendar.tm_year;

						check_all_events(NULL, EVENT_FLAG_TIME, 0, 7, "YEAR", str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
						check_all_events(NULL, EVENT_FLAG_TIME, 1, 7, "YEAR %s", str_year, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
					}

					check_all_events(NULL, EVENT_FLAG_TIME, 0, 7, "MONTH", str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
					check_all_events(NULL, EVENT_FLAG_TIME, 1, 7, "MONTH %s", str_mon, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
				}

				check_all_events(NULL, EVENT_FLAG_TIME, 0, 7, "WEEK", str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
				check_all_events(NULL, EVENT_FLAG_TIME, 1, 7, "WEEK %s", str_wday, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);

				check_all_events(NULL, EVENT_FLAG_TIME, 2, 7, "DATE %s-%s", str_mon, str_mday, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);

				check_all_events(NULL, EVENT_FLAG_TIME, 0, 7, "DAY", str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
				check_all_events(NULL, EVENT_FLAG_TIME, 1, 7, "DAY %s", str_mday, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
			}

			check_all_events(NULL, EVENT_FLAG_TIME, 0, 7, "HOUR", str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
			check_all_events(NULL, EVENT_FLAG_TIME, 1, 7, "HOUR %s", str_hour, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
		}

		if (event_table[event_date].level)
		{
			check_all_events(NULL, EVENT_FLAG_TIME, 4, 7, "DATE %s-%s %s:%s", str_mon, str_mday, str_hour, str_min, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
		}

		if (event_table[event_time].level)
		{
			check_all_events(NULL, EVENT_FLAG_TIME, 2, 7, "TIME %s:%s", str_hour, str_min, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
		}

		if (event_table[event_minute].level)
		{
			check_all_events(NULL, EVENT_FLAG_TIME, 0, 7, "MINUTE", str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
			check_all_events(NULL, EVENT_FLAG_TIME, 1, 7, "MINUTE %s", str_min, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
		}
	}

	old_calendar.tm_sec = calendar.tm_sec;

	if (event_table[event_time].level)
	{
		check_all_events(NULL, EVENT_FLAG_TIME, 3, 7, "TIME %s:%s:%s", str_hour, str_min, str_sec, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
	}

	if (event_table[event_second].level)
	{
		check_all_events(NULL, EVENT_FLAG_TIME, 0, 7, "SECOND", str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
		check_all_events(NULL, EVENT_FLAG_TIME, 1, 7, "SECOND %s", str_sec, str_year, str_mon, str_wday, str_mday, str_hour, str_min, str_sec);
	}
	return;
}

