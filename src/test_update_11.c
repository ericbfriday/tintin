#include "tintin.h"
void terminal_update(void)
{
	struct session *ses;

	for (ses = gts ; ses != NULL ; ses = ses->next)
	{
		if (HAS_BIT(ses->flags, SES_FLAG_UPDATEVTMAP))
		{
			DEL_BIT(ses->flags, SES_FLAG_UPDATEVTMAP);

			show_vtmap(ses, 0);

			check_all_events(ses, EVENT_FLAG_MAP, 0, 0, "MAP UPDATED VTMAP");
		}
	}
}
