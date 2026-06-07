#include "tintin.h"
void path_update(void)
{
	struct session *ses;
	struct listnode *node;
	struct listroot *root;

	for (ses = gts ; ses != NULL ; ses = gtd->update)
	{
		gtd->update = ses->next;

		root = ses->list[LIST_PATH];

		if (HAS_BIT(root->flags, LIST_FLAG_IGNORE))
		{
			continue;
		}
		if (root->update < root->used)
		{
			node = root->list[root->update];

			if (node->val64 > 0 && node->val64 <= gtd->utime)
			{
				root->update++;

				node->val64 = 0;

				show_debug(ses, LIST_PATH, node, COLOR_DEBUG "#DEBUG PATH " COLOR_BRACE "{" COLOR_STRING "%s" COLOR_BRACE "}", node->arg1);

				script_driver(ses, LIST_PATH, NULL, node->arg1);

				if (root->update == root->used)
				{
					check_all_events(ses, EVENT_FLAG_MAP, 0, 0, "END OF RUN");
				}
			}
		}
	}
}
