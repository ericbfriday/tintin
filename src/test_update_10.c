#include "tintin.h"
void packet_update(void)
{
	struct session *ses;

	for (ses = gts->next ; ses != NULL ; ses = gtd->update)
	{
		gtd->update = ses->next;

		if (ses->check_output && gtd->utime > ses->check_output)
		{
			process_more_output(ses, "", TRUE);
		}

		if (HAS_BIT(ses->telopts, TELOPT_FLAG_UPDATENAWS))
		{
			client_send_sb_naws(ses, 0, NULL);
					
			DEL_BIT(ses->telopts, TELOPT_FLAG_UPDATENAWS);
		}
	}

	if (HAS_BIT(gtd->screen->flags, SCREEN_FLAG_SCROLLUPDATE))
	{
		int line = gtd->ses->scroll->line >= 0 ? gtd->ses->scroll->line : gtd->ses->scroll->used + 1;

		line = URANGE(1, line - get_scroll_rows(gtd->ses), gtd->ses->scroll->used);

		check_all_events(ses, EVENT_FLAG_UPDATE, 0, 2, "SCROLLBAR UPDATE", ntos(line), ntos(gtd->ses->scroll->used));

		DEL_BIT(gtd->screen->flags, SCREEN_FLAG_SCROLLUPDATE);

		print_stdout(0, 0, "\e[%d;%d#t", line, gtd->ses->scroll->used);
	}
}
