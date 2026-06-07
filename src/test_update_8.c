#include "tintin.h"
void delay_update(void)
{
	struct session *ses;
	struct listnode *node;
	struct listroot *root;

	if (gtd->utime < gtd->utime_next_delay)
	{
		return;
	}

	gtd->utime_next_delay = gtd->utime + 1000000000;

	for (ses = gts ; ses != NULL ; ses = gtd->update)
	{
		gtd->update = ses->next;

		root = ses->list[LIST_DELAY];

		for (root->update = 0 ; root->update < root->used ; root->update++)
		{
			node = root->list[root->update];

			if (node->val64 <= gtd->utime)
			{
				show_debug(ses, LIST_DELAY, node, COLOR_DEBUG "#DEBUG DELAY " COLOR_BRACE "{" COLOR_STRING "%s" COLOR_BRACE "}", node->arg2);

				delete_index_list(root, root->update);

				script_driver(ses, LIST_DELAY, node, node->arg2);
			}
			else
			{
				if (node->val64 < gtd->utime_next_delay)
				{
					gtd->utime_next_delay = node->val64;
				}
				break;
			}
		}
	}
}
