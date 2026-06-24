#include "tintin.h"

struct listnode *set_nest_node_ses_inner(struct session *ses, char *arg1, char *arg2)
{
	struct listnode *node;
	struct listroot *root;
	char *arg, name[BUFFER_SIZE];

	push_call("set_nest_node_ses(%p,%s,%s)",ses,arg1,arg2);

	arg = get_arg_to_brackets(ses, arg1, name);

	if (HAS_BIT(ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	root = search_nest_base_ses(ses, name);

	if (root == NULL)
	{
		if (gtd->level->local)
		{
			root = local_list(ses);
		}
		else
		{
			root = ses->list[LIST_VARIABLE];
		}
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);

	if (node && node->root)
	{
		free_list(node->root);

		node->root = NULL;
	}

	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		update_nest_node(update_nest_root(root, name), arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cpy(&node->arg2, arg2);
	}
	else
	{
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}
	}

	pop_call();
	return node;
}

struct listnode *add_nest_node_ses_inner(struct session *ses, char *arg1, char *arg2)
{
	struct listnode *node;
	struct listroot *root;
	char *arg, *name;

	push_call("add_nest_node_ses(%p,%s,%s)",ses,arg1,arg2);

	name = str_alloc_stack(0);

	arg = get_arg_to_brackets(ses, arg1, name);

	if (HAS_BIT(ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	root = search_nest_base_ses(ses, name);

	if (root == NULL)
	{
		root = ses->list[LIST_VARIABLE];
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);

	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		update_nest_node(update_nest_root(root, name), arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cat(&node->arg2, arg2);
	}
	else
	{
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}

	}

	pop_call();
	return node;
}


struct listnode *set_nest_node_inner(struct listroot *root, char *arg1, char *arg2)
{
	struct listroot *base;
	struct listnode *node;
	char *arg, name[BUFFER_SIZE];

	push_call("set_nest_node(%p,%s,%s)",root,arg1,arg2);

	arg = get_arg_to_brackets(root->ses, arg1, name);

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_LOCAL))
	{
		base = search_nest_base_ses(root->ses, name);

		if (base)
		{
			root = base;
		}
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);

	if (node && node->root)
	{
		free_list(node->root);

		node->root = NULL;
	}

	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		update_nest_node(update_nest_root(root, name), arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cpy(&node->arg2, arg2);
	}
	else
	{
		if (*name == '-' || *name == '+')
		{
			get_number_string(root->ses, name, name);
		}
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}
	}


	pop_call();
	return node;
}

struct listnode *add_nest_node_inner(struct listroot *root, char *arg1, char *arg2)
{
	struct listroot *base;
	struct listnode *node;
	char *arg, name[BUFFER_SIZE];

	push_call("add_nest_node(%p,%s,%s)",root,arg1,arg2);


	arg = get_arg_to_brackets(root->ses, arg1, name);

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATE %s", name, name, arg2, arg1);
	}

	if (HAS_BIT(gtd->flags, TINTIN_FLAG_LOCAL))
	{
		base = search_nest_base_ses(root->ses, name);

		if (base)
		{
			root = base;
		}
	}

	while (*arg)
	{
		root = update_nest_root(root, name);

		if (root)
		{
			arg = get_arg_in_brackets(root->ses, arg, name);
		}
	}

	node = search_node_list(root, name);

	if (*space_out(arg2) == DEFAULT_OPEN)
	{
		root = update_nest_root(root, name);

		update_nest_node(root, arg2);

		node = search_node_list(root, name);
	}
	else if (node)
	{
		str_cat(&node->arg2, arg2);
	}
	else
	{
		node = update_node_list(root, name, arg2, "", "");
	}

	if (gtd->level->shots)
	{
		node->shots = gtd->level->mshot;
	}

	if (HAS_BIT(root->ses->event_flags, EVENT_FLAG_VARIABLE))
	{
		arg = get_arg_to_brackets(root->ses, arg1, name);

		check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", name, name, arg2, arg1);

		if (strcmp(arg1, name))
		{
			check_all_events(root->ses, EVENT_FLAG_VARIABLE, 1, 3, "VARIABLE UPDATED %s", arg1, name, arg2, arg1);
		}
	}

	pop_call();
	return node;
}

