#include "tintin.h"
void tick_update(void)
{
	struct session *ses;
	struct listnode *node;
	struct listroot *root;

	if (gtd->utime < gtd->utime_next_tick)
	{
		return;
	}

	gtd->utime_next_tick = gtd->utime + 1000000000;

	for (ses = gts ; ses != NULL ; ses = gtd->update)
	{
		gtd->update = ses->next;

		root = ses->list[LIST_TICKER];

		for (root->update = 0 ; root->update < root->used ; root->update++)
		{
			node = root->list[root->update];

			if (node->val64 == 0)
			{
				tintin_printf2(gtd->ses, "error: tick_update: node->val64 == 0");
			}

			if (ses == gts && node->shots == 0)
			{
				continue;
			}

			if (node->val64 <= gtd->utime)
			{
				node->val64 += (long long) (get_number(ses, node->arg3) * 1000000LL);

				show_info(ses, LIST_TICKER, "#INFO TICKER {%s} INITIALIZED WITH TIMESTAMP {%lld}", node->arg1, node->val64);

				if (node->val64 < gtd->utime_next_tick)
				{
					gtd->utime_next_tick = node->val64;
				}

				if (!HAS_BIT(root->flags, LIST_FLAG_IGNORE))
				{
					show_debug(ses, LIST_TICKER, node, COLOR_DEBUG "#DEBUG TICKER " COLOR_BRACE "{" COLOR_STRING "%s" COLOR_BRACE "}", node->arg2);

					if (node->shots && --node->shots == 0)
					{
						delete_node_list(ses, LIST_TICKER, node);
					}
					script_driver(ses, LIST_TICKER, node, node->arg2);
				}
			}
			else
			{
				if (node->val64 < gtd->utime_next_tick)
				{
					gtd->utime_next_tick = node->val64;
				}
			}
		}
	}
}
