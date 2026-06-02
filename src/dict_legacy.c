/******************************************************************************
*   This file is part of TinTin++                                             *
*                                                                             *
*   Copyright 2004-2020 Igor van den Hoven                                    *
*                                                                             *
*   TinTin++ is free software; you can redistribute it and/or modify          *
*   it under the terms of the GNU General Public License as published by      *
*   the Free Software Foundation; either version 3 of the License, or         *
*   (at your option) any later version.                                       *
*                                                                             *
*   This program is distributed in the hope that it will be useful,           *
*   but WITHOUT ANY WARRANTY; without even the implied warranty of            *
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             *
*   GNU General Public License for more details.                              *
*                                                                             *
*   You should have received a copy of the GNU General Public License         *
*   along with TinTin++.  If not, see https://www.gnu.org/licenses.           *
******************************************************************************/

/******************************************************************************
*                               T I N T I N + +                               *
*                                                                             *
*                      coded by Igor van den Hoven 2019                       *
******************************************************************************/

#include "tintin.h"

struct dictionary_data
{
	unsigned int * wordindex[26];
	unsigned int   listsize[26];
};

extern struct dictionary_data *dictionary;
extern char *wordlist[];

void dictionary_init(void);

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
