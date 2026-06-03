/******************************************************************************
 *   Legacy Dictionary Functions for TinTin++ (Zig Migration)                  *
 *   Functions requiring complex C macros or that weren't migrated yet.        *
 ******************************************************************************/

#include "tintin.h"

/* wordlist is defined in dict.zig (via dict.h cImport) — declare extern here */
extern char *wordlist[];

/* dictionary_data struct — must match the Zig definition in dict.zig */
struct dictionary_data
{
	unsigned int * wordindex[26];
	unsigned int   listsize[26];
};

/* Extern references to Zig-exported symbols */
extern struct dictionary_data *dictionary;
extern void dictionary_init(void);

int cursor_dictionary_tab_add(int flag)
{
	struct listroot *cmd_root = gtd->ses->list[LIST_COMMAND];
	struct listnode *node;
	char *tail, *word, buf[50];
	int tail_len, i, hash, val;

	if (dictionary == NULL)
	{
		dictionary_init();
	}

	tail     = cmd_root->list[0]->arg1;
	tail_len = str_len(tail);

	if (!is_alpha(*tail))
	{
		return FALSE;
	}

	hash = tolower((int) *tail) - 'a';

	i = URANGE(0, cmd_root->list[cmd_root->used - 1]->val32[1], cmd_root->used - 1);

	for ( ; i < dictionary->listsize[hash] ; i++)
	{
		word = wordlist[hash] + dictionary->wordindex[hash][i];

		if (HAS_BIT(flag, TAB_FLAG_CASELESS))
		{
			val = strncasecmp(word, tail + 1, tail_len - 1);
		}
		else
		{
			if (*word < tail[1])
			{
				continue;
			}
			val = strncmp(word, tail + 1, tail_len - 1);
		}

		if (val < 0)
		{
			continue;
		}

		if (val > 0)
		{
			return FALSE;
		}

		buf[0] = tail[0];
		strcpy(buf + 1, word);

		if (search_node_list(cmd_root, buf))
		{
			continue;
		}

		node = create_node_list(cmd_root, buf, "", "", "");

		node->val32[1] = i;

		if (HAS_BIT(flag, TAB_FLAG_FORWARD))
		{
			return TRUE;
		}

		if (cmd_root->used > 100)
		{
			return FALSE;
		}
	}
	return FALSE;
}
