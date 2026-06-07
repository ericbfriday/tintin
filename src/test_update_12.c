#include "tintin.h"
void memory_update(void)
{
	while (gtd->dispose_next)
	{
		dispose_session(gtd->dispose_next);
	}

	while (gtd->dispose_list->used)
	{
		dispose_node(gtd->dispose_list->list[--gtd->dispose_list->used]);
	}
}
