#include "tintin.h"

// Forward declarations for missing symbols
extern void buffer_print(struct session *ses, int index, int start, int end);
extern void string_to_stamp(struct session *ses, long long flags, char *in, char *out);
extern void string_to_font(struct session *ses, long long flags, char *in, char *out);
extern struct session *gts;
extern struct tintin_data *gtd;

// Tokenize forward declarations
extern void debugtoken(struct session *ses, struct scriptroot *root, struct scriptnode *token);
extern void breakforeachtoken(struct scriptnode *token);
extern void breaklooptoken(struct scriptnode *token);
extern void breakparsetoken(struct scriptnode *token);
extern struct command_type command_table[];
extern void resetforeachtoken(struct session *ses, struct scriptnode *token);
extern char *get_arg_foreach(struct scriptroot *root, struct scriptnode *token);
extern void resetlooptoken(struct session *ses, struct scriptnode *token);
extern void resetparsetoken(struct session *ses, struct scriptnode *token);
extern char *get_arg_parse(struct session *ses, struct scriptnode *token);
extern void handlereturntoken(struct session *ses, struct scriptnode *token);
extern void handleswitchtoken(struct session *ses, struct scriptnode *token);


#define ZIG_GOTO_END() goto end

// Mapper forward declarations
#define MAP_BF_SIZE 10000

struct grid_node
{
	int vnum;
	int from;
	int w;
	int x;
	int y;
	int z;
	double length;
	struct exit_data *exit;
};

extern void del_undo(struct session *ses, struct link_data *index);
extern struct exit_data *find_exit(struct session *ses, int vnum, char *arg);
extern int get_exit_dir(struct session *ses, char *exit);
extern int dir_to_grid(int dir);
extern int match_room(struct session *ses, int vnum, struct search_data *search);
extern int check_global(struct session *ses, int room);
extern int tunnel_void(struct session *ses, int from, int room, int dir);



// Draw forward declarations
extern int draw_cnt;

struct draw_type {
	char *name;
	char *desc;
	int flags;
	void (*fun)(struct session *ses, int top_row, int top_col, int bot_row, int bot_col, int rows, int cols, long long flags, char *box_color, char *txt_color, char *arg, char *arg1, char *arg2, char *arg3);
};
extern struct draw_type draw_table[];
extern void scale_drawing(struct session *ses, int *top_row, int *top_col, int *bot_row, int *bot_col, int *rows, int *cols, int index, long long flags, char *arg);
#define DO_DRAW(draw) void draw(struct session *ses, int top_row, int top_col, int bot_row, int bot_col, int rows, int cols, long long flags, char *box_color, char *txt_color, char *arg, char *arg1, char *arg2, char *arg3)
extern DO_DRAW(draw_box);
extern DO_DRAW(draw_text);

#define DRAW_FLAG_NONE 0
#define DRAW_FLAG_ASCII BV01
#define DRAW_FLAG_BLANKED BV02
#define DRAW_FLAG_BOT BV03
#define DRAW_FLAG_BOXED BV04
#define DRAW_FLAG_BUMP BV05
#define DRAW_FLAG_CIRCLED BV06
#define DRAW_FLAG_COLOR1 BV07
#define DRAW_FLAG_COLOR2 BV08
#define DRAW_FLAG_CONVERT BV09
#define DRAW_FLAG_CORNERED BV10
#define DRAW_FLAG_CROSSED BV11
#define DRAW_FLAG_FILLED BV12
#define DRAW_FLAG_FOREGROUND BV13
#define DRAW_FLAG_GRID BV14
#define DRAW_FLAG_HOR BV15
#define DRAW_FLAG_HUGE BV16
#define DRAW_FLAG_JEWELED BV17
#define DRAW_FLAG_LEFT BV18
#define DRAW_FLAG_NUMBERED BV20
#define DRAW_FLAG_PRUNED BV21
#define DRAW_FLAG_RIGHT BV22
#define DRAW_FLAG_ROUNDED BV23
#define DRAW_FLAG_SCALED BV24
#define DRAW_FLAG_SCROLL BV25
#define DRAW_FLAG_SHADOWED BV26
#define DRAW_FLAG_TEED BV27
#define DRAW_FLAG_TOP BV28
#define DRAW_FLAG_TRACED BV29
#define DRAW_FLAG_TUBED BV30
#define DRAW_FLAG_UTF8 BV31
#define DRAW_FLAG_VER BV32
#define DRAW_FLAG_CURSIVE BV33
#define DRAW_FLAG_FAT BV34
#define DRAW_FLAG_SANSSERIF BV35
#define DRAW_FLAG_CALIGN BV36
#define DRAW_FLAG_LALIGN BV37
#define DRAW_FLAG_RALIGN BV38
#define DRAW_FLAG_TALIGN BV39
#define DRAW_FLAG_UALIGN BV40
#define DRAW_FLAG_BALIGN BV41
#define DRAW_FLAG_APPENDIX (((((DRAW_FLAG_CIRCLED | DRAW_FLAG_CORNERED) | DRAW_FLAG_CROSSED) | DRAW_FLAG_JEWELED) | DRAW_FLAG_PRUNED) | DRAW_FLAG_ROUNDED) | DRAW_FLAG_TEED

















// --- Extracted add_undo from src/mapper.c ---

void add_undo(struct session *ses, char *format, ...)
{
	struct link_data *link;
	char *arg, *buf, *dir, *rev, *val;
	va_list args;

	push_call("add_undo(%s,%s)",ses->name, format);

	buf = str_alloc_stack(0);
	dir = str_alloc_stack(0);
	rev = str_alloc_stack(0);
	val = str_alloc_stack(0);

	va_start(args, format);
	vsprintf(buf, format, args);
	va_end(args);

	arg = get_arg_in_braces(ses, buf, dir, GET_ONE);
	arg = get_arg_in_braces(ses, arg, rev, GET_ONE);
	arg = get_arg_in_braces(ses, arg, val, GET_ONE);

	link = (struct link_data *) calloc(1, sizeof(struct link_data));

	link->str1 = strdup(dir);
	link->str2 = strdup(rev);
	link->str3 = strdup(val);

	LINK(link, ses->map->undo_head, ses->map->undo_tail);

	ses->map->undo_size++;

	if (ses->map->undo_size > 100)
	{
		del_undo(ses, ses->map->undo_head);
	}
	pop_call();
	return;
}


// --- Extracted check_all_events from src/event.c ---

int check_all_events(struct session *ses, int flags, int args, int vars, char *fmt, ...)
{
	struct session *ses_ptr;
	struct listnode *node;
	char *name, *buf;
	va_list list;
	int cnt, sub, found;

	if (gtd->level->ignore)
	{
		return 0;
	}

	sub = HAS_BIT(flags, SUB_SEC) ? SUB_ARG|SUB_SEC : HAS_BIT(flags, SUB_BRA) ? SUB_ARG|SUB_BRA : SUB_ARG;

	DEL_BIT(flags, SUB_ARG|SUB_SEC|SUB_BRA);

	if (flags == 0)
	{
		tintin_printf2(ses, "\e[1;31merror: check_all_events: flags = %d", flags);

		return 0;
	}

	if (gtd->level->info == 0 && !HAS_BIT(gtd->ses->list[LIST_EVENT]->flags, LIST_FLAG_INFO))
	{
		if (!HAS_BIT(gtd->event_flags, flags))
		{
			return 0;
		}

		if (ses && !HAS_BIT(ses->event_flags, flags))
		{
			return 0;
		}
	}

	if (args)
	{
		va_start(list, fmt);

		if (vasprintf(&name, fmt, list) == -1)
		{
			syserr_printf(ses, "check_all_events: vasprintf:");
		}

		va_end(list); 
	}
	else
	{
		name = strdup(fmt);
	}

	push_call("check_all_events(%p,%d,%d,%d,%s, ...)",ses,flags,args,vars,name);

	buf = str_alloc_stack(0);

	found = 0;

	for (ses_ptr = ses ? ses : gts ; ses_ptr ; ses_ptr = ses_ptr->next)
	{
		if (!HAS_BIT(ses_ptr->list[LIST_EVENT]->flags, LIST_FLAG_IGNORE))
		{
			if (!HAS_BIT(flags, EVENT_FLAG_UPDATE))
			{
				show_info(ses_ptr, LIST_EVENT, "#INFO EVENT {%s} ARGUMENTS {%d}", name, vars);
			}

			node = search_node_list(ses_ptr->list[LIST_EVENT], name);

			if (node)
			{
				// GAG and CATCH events need to use EVENT_FLAG_GAG and EVENT_FLAG_CATCH

				if (node->val32[1] != flags)
				{
					tintin_printf2(ses, "\e[1;31merror: check_all_events: %s: flags: %d != %d", name, flags, node->val32[1]);
				}

				if (vars > 0 && found == 0)
				{
					found = 1;

					va_start(list, fmt);

					for (cnt = 0 ; cnt < args ; cnt++)
					{
						va_arg(list, char *);
					}

					for (cnt = 0 ; cnt < vars ; cnt++)
					{
						RESTRING(gtd->vars[cnt], va_arg(list, char *));
					}
					va_end(list);
				}

				substitute(ses_ptr, node->arg2, buf, sub);

				if (!HAS_BIT(flags, EVENT_FLAG_UPDATE))
				{
					if (HAS_BIT(ses_ptr->list[LIST_EVENT]->flags, LIST_FLAG_DEBUG) || HAS_BIT(node->flags, NODE_FLAG_DEBUG))
					{
						show_debug(ses_ptr, LIST_EVENT, node, COLOR_DEBUG "#DEBUG EVENT " COLOR_BRACE "{" COLOR_STRING "%s" COLOR_BRACE "}", node->arg1);
					}
				}

				if (node->shots && --node->shots == 0)
				{
					delete_node_list(ses, LIST_EVENT, node);
				}

				gtd->level->quiet += HAS_BIT(flags, EVENT_FLAG_UPDATE) ? 1 : 0;

				script_driver(ses_ptr, LIST_EVENT, node, buf);

				gtd->level->quiet -= HAS_BIT(flags, EVENT_FLAG_UPDATE) ? 1 : 0;

				if (ses)
				{
					free(name);

					pop_call();
					return TRUE;
				}
			}
		}

		if (ses)
		{
			goto end;
		}
	}

	end:

	free(name);

	pop_call();
	return 0;
}




// --- Extracted create_exit from src/mapper.c ---

struct exit_data *create_exit(struct session *ses, int vnum, char *format, ...)
{
	struct exit_data *newexit;
	struct room_data *room;
	va_list args;
	char *arg, buf[BUFFER_SIZE];

	push_call("create_exit(%p,%d,%p)",ses,vnum,format);

	va_start(args, format);
	vsprintf(buf, format, args);
	va_end(args);

	newexit = (struct exit_data *) calloc(1, sizeof(struct exit_data));

	room = ses->map->room_list[vnum];

	arg = buf;

	arg = get_arg_in_braces(ses, arg, buf, GET_ONE);	newexit->vnum   = atoi(buf);
	arg = get_arg_in_braces(ses, arg, buf, GET_ONE);

	if (HAS_BIT(ses->map->flags, MAP_FLAG_SYNC) && find_exit(ses, vnum, buf))
	{
		free(newexit);

		pop_call();
		return find_exit(ses, vnum, buf);
	}
	newexit->name = strdup(buf);

	arg = get_arg_in_braces(ses, arg, buf, GET_ALL);	newexit->cmd    = strdup(buf);
	arg = get_arg_in_braces(ses, arg, buf, GET_ONE);	newexit->dir    = atoi(buf);
	arg = get_arg_in_braces(ses, arg, buf, GET_ONE);	newexit->flags  = atoi(buf);
	arg = get_arg_in_braces(ses, arg, buf, GET_ALL);	newexit->data   = strdup(buf);
	arg = get_arg_in_braces(ses, arg, buf, GET_ONE);	newexit->weight = (double) atof(buf);
	arg = get_arg_in_braces(ses, arg, buf, GET_ONE);        newexit->color  = strdup(buf);
	arg = get_arg_in_braces(ses, arg, buf, GET_ONE);        newexit->delay  = (double) atof(buf);

	if (!HAS_BIT(ses->map->flags, MAP_FLAG_READ))
	{
		if (newexit->dir == 0)
		{
			newexit->dir = get_exit_dir(ses, newexit->name);
		}
	}
	newexit->grid = dir_to_grid(newexit->dir);

	if (room->exit_grid[newexit->grid] == NULL)
	{
		room->exit_grid[newexit->grid] = newexit;
	}

	if (newexit->weight <= 0)
	{
		newexit->weight = 1;
	}

	LINK(newexit, room->f_exit, room->l_exit);

	room->exit_size++;

	SET_BIT(room->exit_dirs, (1LL << newexit->dir));

	if (gtd->level->debug || !HAS_BIT(ses->map->flags, MAP_FLAG_READ))
	{
		show_message(ses, LIST_PATH, "#MAP CREATE EXIT {%s} {%s} TO ROOM %d.", newexit->name, newexit->cmd, newexit->vnum);
	}

	if (!HAS_BIT(ses->map->flags, MAP_FLAG_READ))
	{
		check_all_events(ses, EVENT_FLAG_MAP, 0, 4, "MAP CREATE EXIT", ntos(room->vnum), newexit->name,newexit->cmd, ntos(newexit->vnum));
	}
	pop_call();
	return newexit;
}


// --- Extracted create_room from src/mapper.c ---

struct room_data *create_room(struct session *ses, char *format, ...)
{
	char *arg, buf[BUFFER_SIZE], arg1[BUFFER_SIZE];
	struct room_data *newroom;
	va_list args;

	va_start(args, format);
	vsprintf(buf, format, args);
	va_end(args);

	newroom = (struct room_data *) calloc(1, sizeof(struct room_data));

	arg = get_arg_in_braces(ses, buf, arg1, GET_ONE);

	newroom->vnum = atoi(arg1);

	if (HAS_BIT(ses->map->flags, MAP_FLAG_SYNC) && ses->map->room_list[newroom->vnum] != NULL)
	{
		int vnum = newroom->vnum;

		free(newroom);

		return ses->map->room_list[vnum];
	}

	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->flags   = atoi(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->color   = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->name    = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->symbol  = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->desc    = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->area    = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->note    = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->terrain = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->data    = strdup(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->weight  = (double) atof(arg1);
	arg = get_arg_in_braces(ses, arg, arg1, GET_ONE); newroom->id      = strdup(arg1);

	if (HAS_BIT(newroom->flags, ROOM_FLAG_AVOID))
	{
		SET_BIT(newroom->flags, ROOM_FLAG_AVOID_TMP);
	}
	if (HAS_BIT(newroom->flags, ROOM_FLAG_HIDE))
	{
		SET_BIT(newroom->flags, ROOM_FLAG_HIDE_TMP);
	}
	if (HAS_BIT(newroom->flags, ROOM_FLAG_LEAVE))
	{
		SET_BIT(newroom->flags, ROOM_FLAG_LEAVE_TMP);
	}
	if (HAS_BIT(newroom->flags, ROOM_FLAG_VOID))
	{
		SET_BIT(newroom->flags, ROOM_FLAG_VOID_TMP);
	}
	if (HAS_BIT(newroom->flags, ROOM_FLAG_CURVED))
	{
		SET_BIT(newroom->flags, ROOM_FLAG_CURVED_TMP);
	}

	if (newroom->weight <= 0)
	{
		newroom->weight = 1;
	}

	if (newroom->vnum <= 0)
	{
		return newroom;
	}

	if (newroom->vnum < ses->map->size)
	{
		ses->map->room_list[newroom->vnum] = newroom;
	}

	if (gtd->level->debug || !HAS_BIT(ses->map->flags, MAP_FLAG_READ))
	{
		show_message(ses, LIST_PATH, "#MAP CREATE ROOM %5d {%s}.", newroom->vnum, newroom->name);
	}

	if (!HAS_BIT(ses->map->flags, MAP_FLAG_READ))
	{
		check_all_events(ses, EVENT_FLAG_MAP, 0, 2, "MAP CREATE ROOM", ntos(newroom->vnum), newroom->name);
	}

	return newroom;
}


// --- Extracted do_draw from src/draw.c ---

DO_COMMAND(do_draw)
{
	char *box_color, *txt_color, *code1, *code2, *input;
	long long flags;
	int index, top_row, top_col, bot_row, bot_col, rows, cols;

	input = str_alloc_stack(0);

	substitute(ses, arg, input, SUB_VAR|SUB_FUN);

	arg = input;

	draw_cnt = 0;

	if (*arg == 0)
	{
		tintin_header(ses, 80, " DRAW OPTIONS ");

		for (index = 0 ; *draw_table[index].fun ; index++)
		{
			if (*draw_table[index].name)
			{
				tintin_printf2(ses, "  [%-24s] %s", draw_table[index].name, draw_table[index].desc);
			}
		}
		tintin_header(ses, 80, "");

		return ses;
	}

	arg4 = str_alloc_stack(0);

	box_color = str_alloc_stack(0);
	txt_color = str_alloc_stack(0);

	code1 = str_alloc_stack(0);
	code2 = str_alloc_stack(0);

	flags = HAS_BIT(ses->charset, CHARSET_FLAG_UTF8) ? DRAW_FLAG_UTF8 : 0;

	while (*arg)
	{
		arg = get_arg_in_braces(ses, arg, arg1, GET_ONE);

		if (!HAS_BIT(flags, DRAW_FLAG_COLOR1) && translate_color_names(ses, arg1, code1))
		{
			get_color_names(ses, arg1, box_color);

			SET_BIT(flags, DRAW_FLAG_COLOR1);

			continue;
		}

		if (!HAS_BIT(flags, DRAW_FLAG_COLOR2) && translate_color_names(ses, arg1, code2))
		{
			get_color_names(ses, arg1, txt_color);

			SET_BIT(flags, DRAW_FLAG_COLOR2);

			continue;
		}

		switch (*arg1 % 32)
		{
			case CTRL_A:
				if (is_abbrev(arg1, "ASCII"))
				{
					DEL_BIT(flags, DRAW_FLAG_UTF8);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_B:
				if (is_abbrev(arg1, "BALIGN"))
				{
					SET_BIT(flags, DRAW_FLAG_BALIGN);
				}
				else if (is_abbrev(arg1, "BLANKED"))
				{
					SET_BIT(flags, DRAW_FLAG_BLANKED);
				}
				else if (is_abbrev(arg1, "BOTTOM"))
				{
					SET_BIT(flags, DRAW_FLAG_BOT);
				}
				else if (!strcasecmp(arg1, "BOXED"))
				{
					SET_BIT(flags, DRAW_FLAG_BOXED|DRAW_FLAG_LEFT|DRAW_FLAG_RIGHT|DRAW_FLAG_TOP|DRAW_FLAG_BOT);
				}
				else if (is_abbrev(arg1, "BUMPED"))
				{
					SET_BIT(flags, DRAW_FLAG_BUMP);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_C:
				if (is_abbrev(arg1, "CALIGN"))
				{
					SET_BIT(flags, DRAW_FLAG_CALIGN);
				}
				else if (is_abbrev(arg1, "CIRCLED"))
				{
					SET_BIT(flags, DRAW_FLAG_CIRCLED);
				}
				else if (is_abbrev(arg1, "CONVERT"))
				{
					SET_BIT(flags, DRAW_FLAG_CONVERT);
				}
				else if (is_abbrev(arg1, "CROSSED"))
				{
					SET_BIT(flags, DRAW_FLAG_CROSSED);
				}
				else if (is_abbrev(arg1, "CURSIVE"))
				{
					SET_BIT(flags, DRAW_FLAG_CURSIVE);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_F:
				if (is_abbrev(arg1, "FAT"))
				{
					SET_BIT(flags, DRAW_FLAG_FAT);
				}
				else if (is_abbrev(arg1, "FILLED"))
				{
					SET_BIT(flags, DRAW_FLAG_FILLED);
				}
				else if (is_abbrev(arg1, "FOREGROUND"))
				{
					SET_BIT(flags, DRAW_FLAG_FOREGROUND);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_G:
				if (is_abbrev(arg1, "GRID"))
				{
					SET_BIT(flags, DRAW_FLAG_GRID);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_H:
				if (is_abbrev(arg1, "HORIZONTAL"))
				{
					SET_BIT(flags, DRAW_FLAG_HOR);
				}
				else if (is_abbrev(arg1, "HUGE"))
				{
					SET_BIT(flags, DRAW_FLAG_HUGE);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_J:
				if (is_abbrev(arg1, "JEWELED"))
				{
					SET_BIT(flags, DRAW_FLAG_JEWELED);
				}
				else if (is_abbrev(arg1, "JOINTED"))
				{
					SET_BIT(flags, DRAW_FLAG_CORNERED);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_L:
				if (is_abbrev(arg1, "LALIGN"))
				{
					SET_BIT(flags, DRAW_FLAG_LALIGN);
				}
				else if (is_abbrev(arg1, "LEFT"))
				{
					SET_BIT(flags, DRAW_FLAG_LEFT);
				}
				else
				{
					goto option;
				}
				continue;

			case CTRL_N:
				if (is_abbrev(arg1, "NUMBERED"))
				{
					SET_BIT(flags, DRAW_FLAG_NUMBERED);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_P:
				if (is_abbrev(arg1, "PRUNED"))
				{
					SET_BIT(flags, DRAW_FLAG_PRUNED);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_R:
				if (is_abbrev(arg1, "RALIGN"))
				{
					SET_BIT(flags, DRAW_FLAG_RALIGN);
				}
				else if (is_abbrev(arg1, "RIGHT"))
				{
					SET_BIT(flags, DRAW_FLAG_RIGHT);
				}
				else if (is_abbrev(arg1, "ROUNDED"))
				{
					SET_BIT(flags, DRAW_FLAG_ROUNDED);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_S:
				if (is_abbrev(arg1, "SANSSERIF"))
				{
					SET_BIT(flags, DRAW_FLAG_SANSSERIF);
				}
				else if (is_abbrev(arg1, "SCALED"))
				{
					SET_BIT(flags, DRAW_FLAG_SCALED);
				}
				else if (is_abbrev(arg1, "SCROLL"))
				{
					SET_BIT(flags, DRAW_FLAG_SCROLL);
				}
				else if (is_abbrev(arg1, "SHADOWED"))
				{
					SET_BIT(flags, DRAW_FLAG_SHADOWED);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_T:
				if (is_abbrev(arg1, "TALIGN"))
				{
					SET_BIT(flags, DRAW_FLAG_TALIGN);
				}
				else if (is_abbrev(arg1, "TEED"))
				{
					SET_BIT(flags, DRAW_FLAG_TEED);
				}
				else if (is_abbrev(arg1, "TOP"))
				{
					SET_BIT(flags, DRAW_FLAG_TOP);
				}
				else if (is_abbrev(arg1, "TRACED"))
				{
					SET_BIT(flags, DRAW_FLAG_TRACED);
				}
				else if (is_abbrev(arg1, "TUBED"))
				{
					SET_BIT(flags, DRAW_FLAG_TUBED);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_U:
				if (is_abbrev(arg1, "UALIGN"))
				{
					SET_BIT(flags, DRAW_FLAG_UALIGN);
				}
				else if (is_abbrev(arg1, "UNICODE"))
				{
					SET_BIT(flags, DRAW_FLAG_UTF8);
				}
				else
				{
					goto option;
				}
				continue;
			case CTRL_V:
				if (is_abbrev(arg1, "VERTICAL"))
				{
					SET_BIT(flags, DRAW_FLAG_VER);
				}
				else
				{
					break;
				}
				continue;

			default:
				goto option;
				continue;
		}
	}

	option:

	for (index = 0 ; *draw_table[index].name ; index++)
	{
		if (is_abbrev(arg1, draw_table[index].name))
		{
			arg = get_arg_in_braces(ses, arg, arg1, GET_ONE);
			arg = get_arg_in_braces(ses, arg, arg2, GET_ONE);
			arg = get_arg_in_braces(ses, arg, arg3, GET_ONE);
			arg = get_arg_in_braces(ses, arg, arg4, GET_ONE);

			top_row = get_row_index_arg(ses, arg1);
			top_col = get_col_index_arg(ses, arg2);
			bot_row = get_row_index_arg(ses, arg3);
			bot_col = get_col_index_arg(ses, arg4);

			if (!is_math(ses, arg1) || !is_math(ses, arg2) || !is_math(ses, arg3) || !is_math(ses, arg4))
			{
				show_error(ses, LIST_COMMAND, "#ERROR: #DRAW: INVALID SQUARE: %s {%s} {%s} {%s} {%s}", draw_table[index].name, arg1, arg2, arg3, arg4);

				return ses;
			}

			if (top_row == 0 && top_col == 0)
			{
				show_error(ses, LIST_COMMAND, "#SYNTAX: #DRAW [COLOR] [OPTIONS] {%s} <TOP_ROW> <TOP_COL> <BOT_ROW> <BOT_COL> [TEXT]", draw_table[index].name);

				return ses;
			}

			if (top_row == 0)
			{
				SET_BIT(flags, DRAW_FLAG_SCROLL);
			}
			else
			{
				if (!HAS_BIT(flags, DRAW_FLAG_SCROLL) && !HAS_BIT(flags, DRAW_FLAG_FOREGROUND) && ses != gtd->ses)
				{
					show_message(ses, LIST_COMMAND, "#WARNING: #DRAW %s %d %d %d %d: SESSION IS IN THE BACKGROUND.", draw_table[index].name, top_row, top_col, bot_row, bot_col);

					return ses;
				}
			}

			if (top_row == 0) top_row = 1;
			if (top_col == 0) top_col = 1;
			if (bot_row == 0) bot_row = 1;
			if (bot_col == 0) bot_col = 1;

			if (top_row > bot_row || top_col > bot_col)
			{
				show_error(ses, LIST_COMMAND, "#ERROR: #DRAW: INVALID SQUARE: %s {%d %d %d %d} ROWS: %d COLS: %d", draw_table[index].name, top_row, top_col, bot_row, bot_col, 1 + bot_row - top_row, 1 + bot_col - top_col);

				return ses;
			}

			rows = URANGE(1, 1 + bot_row - top_row, gtd->screen->rows);
			cols = URANGE(1, 1 + bot_col - top_col, gtd->screen->cols);

			if (HAS_BIT(flags, DRAW_FLAG_SCALED))
			{
				scale_drawing(ses, &top_row, &top_col, &bot_row, &bot_col, &rows, &cols, index, draw_table[index].flags | flags, arg);
			}

			*arg1 = 0;
			*arg2 = 0;
			*arg3 = 0;
//			*arg4 = 0;

			// forgot why I did this originally
/*
			if (*arg == 0)
			{
				arg = arg4;
			}
*/
			save_pos(ses);

			if (HAS_BIT(flags, DRAW_FLAG_BUMP))
			{
				tintin_printf2(ses, "");
			}

			str_cpy(&arg2, code1);
			str_cpy(&arg3, code2);

			draw_table[index].fun(ses, top_row, top_col, bot_row, bot_col, rows, cols, draw_table[index].flags | flags, box_color, txt_color, arg, arg1, arg2, arg3);

			print_stdout(0, 0, "\e[0m");

			restore_pos(ses);

			return ses;
		}
	}
	show_error(ses, LIST_COMMAND, "#ERROR: #DRAW {%s} IS NOT A VALID OPTION.", capitalize(arg1));

	return ses;
}


// --- Extracted draw_hbar from src/draw.c ---

DO_DRAW(draw_hbar)
{
	char *nest, *buf, *ptb, *col1;
	int cnt, val, bar;
	long double min, max;

	bar = cols;

	bar -= HAS_BIT(flags, DRAW_FLAG_LEFT) ? 1 : 0;
	bar -= HAS_BIT(flags, DRAW_FLAG_RIGHT) ? 1 : 0;

	if (bar <= 0)
	{
		show_error(ses, LIST_COMMAND, "#ERROR: #DRAW BAR %d %d %d %d: DRAWING WIDTH (%d) MUST BE GREATER THAN 0.", top_row, top_col, bot_row, bot_col, bar);

		return;
	}

	buf  = str_alloc_stack(0);
	col1 = str_alloc_stack(0);

	str_cpy(&gtd->buf, "");

	bar *= 8;

	start:

	arg = get_arg_in_braces(ses, arg, buf, GET_ALL);

	nest = buf;
	nest = get_arg_in_braces(ses, nest, arg1, GET_ALL);
	if (*nest == COMMAND_SEPARATOR)
		nest++;
	nest = get_arg_in_braces(ses, nest, arg2, GET_ALL);
	if (*nest == COMMAND_SEPARATOR)
		nest++;
	nest = get_arg_in_braces(ses, nest, arg3, GET_ALL);

	min = get_number(ses, arg1);
	max = get_number(ses, arg2);

	if (max <= 0)
	{
		show_error(ses, LIST_COMMAND, "#ERROR: #DRAW BAR {%s;%s;%s}: MAX (%Lg) MUST BE GREATER THAN 0.", arg1, arg2, arg3, max);

		return;
	}

	if (min > max)
	{
		min = max;
	}

	color_gradient(arg3, min, max);

	translate_color_names(ses, arg3, col1);

//	printf("debug: min %d max %d bar %d\n", (int) min, (int) max, bar);

	ptb = buf;

	ptb += sprintf(ptb, "{%s", col1);

	val = bar * min / max;

	for (cnt = 8 ; cnt <= bar + 8 ; cnt += 8)
	{
//		printf("debug: cnt %3d - val = %3d\n", cnt, val);

		if (cnt > val)
		{
			break;
		}
		ptb += sprintf(ptb, "█");
	}

//	printf("debug: val - lst = %d - %d\n", val, lst);

	if (cnt <= bar)
	{
		switch (val + 8 - cnt)
		{
			case 0: ptb += sprintf(ptb, " "); break;
			case 1: ptb += sprintf(ptb, "▏"); break;
			case 2: ptb += sprintf(ptb, "▎"); break;
			case 3: ptb += sprintf(ptb, "▍"); break;
			case 4: ptb += sprintf(ptb, "▌"); break;
			case 5: ptb += sprintf(ptb, "▋"); break;
			case 6: ptb += sprintf(ptb, "▊"); break;
			case 7: ptb += sprintf(ptb, "▉"); break;
			case 8: ptb += sprintf(ptb, "█"); break;
		}
		ptb += snprintf(ptb, BUFFER_SIZE, "%*s%s}", (bar - cnt) / 8, "", box_color);
	}
	else
	{
		ptb += sprintf(ptb, "%s}", box_color);
	}

	str_cat(&gtd->buf, buf);

//	printf("debug (%s) bar: %d cnt %d val %d\n", gtd->buf, bar, cnt, val);

	if (*arg)
	{
		goto start;
	}

	*arg1 = 0;
	*arg2 = 0;
	*arg3 = 0;

	if (HAS_BIT(flags, DRAW_FLAG_TOP|DRAW_FLAG_BOT))
	{
		draw_box(ses, top_row, top_col, bot_row, bot_col, rows, cols, flags, box_color, txt_color, gtd->buf, arg1, arg2, arg3);
	}
	else
	{
		draw_text(ses, top_row, top_col, bot_row, bot_col, rows, cols, flags, box_color, txt_color, gtd->buf, arg1, arg2, arg3);
	}
}




// --- Extracted input_printf from src/input.c ---

void input_printf(char *format, ...)
{
	char *buf;
	va_list args;

	if (!HAS_BIT(gtd->ses->input->flags, INPUT_FLAG_HISTORYSEARCH) && !HAS_BIT(gtd->ses->input->flags, INPUT_FLAG_REDRAW))
	{
		if (!HAS_BIT(gtd->ses->telopts, TELOPT_FLAG_ECHO) && gtd->ses->input->buf[0] != gtd->tintin_char)
		{
			return;
		}
	}

	va_start(args, format);

	if (vasprintf(&buf, format, args) == -1)
	{
		syserr_printf(gtd->ses, "input_printf(%s): vasprintf:", format);
	}
	else
	{
		print_stdout(0, 0, "%s", buf);

		free(buf);
	}
	va_end(args);

	return;
}


// --- Extracted print_lines from src/show.c ---

void print_lines(struct session *ses, int flags, char *color, char *format, ...)
{
	char *buffer, *str_buf;
	va_list args;

	push_call("print_lines(%p,%d,%p,...)",ses,flags,format);

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "print_lines: vasprintf:");

		pop_call();
		return;
	}

	va_end(args);

	if (flags)
	{
		str_buf = str_alloc_stack(strlen(buffer) * 2);

		substitute(ses, buffer, str_buf, flags);

		show_lines(ses, color, str_buf);
	}
	else
	{
		show_lines(ses, color, buffer);
	}

	free(buffer);

	pop_call();
	return;
}






// --- Extracted show_debug from src/show.c ---

void show_debug(struct session *ses, int index, struct listnode *node, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_debug(%p,%p,%p)",ses,index,format);

	root = ses->list[index];

	if (node == NULL || !HAS_BIT(node->flags, NODE_FLAG_DEBUG))
	{
		if (gtd->level->debug == 0 && !HAS_BIT(root->flags, LIST_FLAG_DEBUG) && !HAS_BIT(root->flags, LIST_FLAG_LOG))
		{
			pop_call();
			return;
		}
	}

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "show_debug(%s): vasprintf:", format);

		buffer = strdup("vasprintf error");
	}
	va_end(args);

	if (gtd->level->debug || HAS_BIT(root->flags, LIST_FLAG_DEBUG) || (node != NULL && HAS_BIT(node->flags, NODE_FLAG_DEBUG)))
	{
		gtd->level->verbose++;

		tintin_puts2(ses, buffer);

		gtd->level->verbose--;

		goto end;
	}

	if (HAS_BIT(root->flags, LIST_FLAG_LOG))
	{
		if (ses->log->file)
		{
			logit(ses, buffer, ses->log->file, LOG_FLAG_LINEFEED);
		}
	}
	end:
	
	free(buffer);

	pop_call();
	return;
}


// --- Extracted show_error from src/show.c ---

void show_error(struct session *ses, int index, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_error(%p,%p,%p)",ses,index,format);

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);
	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "show_error: vasprintf:");

		pop_call();
		return;
	}
	va_end(args);

	check_all_events(ses, SUB_SEC|EVENT_FLAG_SYSTEM, 0, 1, "RECEIVED ERROR", buffer);

	if (gtd->level->verbose || gtd->level->debug)
	{
		tintin_puts2(ses, buffer);

		goto end;
	}

	root = ses->list[index];

	if (HAS_BIT(root->flags, LIST_FLAG_DEBUG))
	{
		tintin_puts2(ses, buffer);

		goto end;
	}

	if (HAS_BIT(root->flags, LIST_FLAG_MESSAGE))
	{
		tintin_puts2(ses, buffer);

		goto end;
	}

	if (HAS_BIT(root->flags, LIST_FLAG_LOG))
	{
		if (ses->log->file)
		{
			logit(ses, buffer, ses->log->file, LOG_FLAG_LINEFEED);
		}
	}

	end:

	free(buffer);

	pop_call();
	return;
}


// --- Extracted show_info from src/show.c ---

void show_info(struct session *ses, int index, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_info(%p,%p,%p)",ses,index,format);

	root = ses->list[index];

	if (gtd->level->info == 0 && !HAS_BIT(root->flags, LIST_FLAG_INFO))
	{
		pop_call();
		return;
	}
	buffer = str_alloc_stack(0);

	va_start(args, format);
	vsprintf(buffer, format, args);
	va_end(args);

	gtd->level->verbose++;

	tintin_puts(ses, buffer);

	gtd->level->verbose--;

	pop_call();
	return;
}


// --- Extracted show_message from src/show.c ---

void show_message(struct session *ses, int index, char *format, ...)
{
	struct listroot *root;
	char *buffer;
	va_list args;

	push_call("show_message(%p,%p,%p)",ses,index,format);

	root = ses->list[index];

	if (gtd->level->verbose || gtd->level->debug)
	{
		goto display;
	}

	if (HAS_BIT(root->flags, LIST_FLAG_DEBUG))
	{
		goto display;
	}

	if (!HAS_BIT(root->flags, LIST_FLAG_MESSAGE))
	{
		goto end;
	}

	if (gtd->level->input)
	{
		goto end;
	}

	display:

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);

	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "show_message: vasprintf1:");

		pop_call();
		return;
	}

	va_end(args);

	tintin_puts2(ses, buffer);

	free(buffer);

	pop_call();
	return;

	end:

	if (HAS_BIT(root->flags, LIST_FLAG_LOG))
	{
		if (ses->log->file)
		{
			va_start(args, format);

			if (vasprintf(&buffer, format, args) == -1)
			{
				syserr_printf(ses, "show_message: vasprintf2:");

				pop_call();
				return;
			}
			va_end(args);

			logit(ses, buffer, ses->log->file, LOG_FLAG_LINEFEED);

			free(buffer);
		}
	}

	pop_call();
	return;
}


// --- Extracted syserr_printf from src/main.c ---

void syserr_printf(struct session *ses, char *fmt, ...)
{
	char buf[BUFFER_SIZE], name[BUFFER_SIZE], *errstr;

	errstr = strerror(errno);
	
	va_list args;

	va_start(args, fmt);
	vsprintf(buf, fmt, args);
	va_end(args);

	if (ses)
	{
		sprintf(name, "(%s)", ses->name);
	}
	else
	{
		sprintf(name, "(null)");
	}

	check_all_events(ses, SUB_SEC|EVENT_FLAG_SYSTEM, 0, 4, "SYSTEM ERROR", name, buf, ntos(errno), errstr);

	if (!check_all_events(ses, SUB_SEC|EVENT_FLAG_SYSTEM, 0, 4, "CATCH SYSTEM ERROR", name, buf, ntos(errno), errstr))
	{
		if (gts)
		{
			tintin_printf2(gts, "#SYSTEM ERROR %s %s (%d: %s)\e[0m", name, buf, errno, errstr);
		}

		if (ses && ses != gts)
		{
			tintin_printf2(ses, "#SYSTEM ERROR: %s %s (%d: %s)\e[0m", name, buf, errno, errstr);
		}

		if (ses && gtd->ses != ses && gtd->ses != gts)
		{
			tintin_printf2(gtd->ses, "#SYSTEM ERROR: %s %s (%d: %s)\e[0m", name, buf, errno, errstr);
		}
	}
}


// --- Extracted tintin_header from src/show.c ---

void tintin_header(struct session *ses, int width, char *format, ...)
{
	char *title, *buffer;
	va_list args;
	int cols;

	push_call("tintin_header(%p,%p)",ses,format);

	if (width)
	{
		cols = UMIN(width, get_scroll_cols(ses));
	}
	else
	{
		cols = get_scroll_cols(ses);
	}

	if (cols < 2)
	{
		pop_call();
		return;
	}

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);
	if (vasprintf(&title, format, args) == -1)
	{
		syserr_printf(ses, "tintin_header(%s): vasprintf:", format);

		buffer = strdup("vasprintf error");
	}
	va_end(args);

	if ((int) strlen(title) > cols - 2)
	{
		title[cols - 2] = 0;
	}

	buffer = calloc(1, cols + 1);

	if (HAS_BIT(ses->config_flags, CONFIG_FLAG_SCREENREADER))
	{
		memset(buffer, ' ', cols);
	}
	else
	{
		memset(buffer, '#', cols);
	}

	memcpy(&buffer[(cols - strlen(title)) / 2], title, strlen(title));

	tintin_puts2(ses, buffer);

	free(title);
	free(buffer);

	pop_call();
	return;
}


// --- Extracted tintin_printf from src/show.c ---

void tintin_printf(struct session *ses, char *format, ...)
{
	char *buffer;
	va_list args;

	push_call("tintin_printf(%p,%p,...)",ses,format);

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	buffer = str_alloc_stack(0);

	va_start(args, format);
	vsprintf(buffer, format, args);
	va_end(args);

	tintin_puts(ses, buffer);

	pop_call();
	return;
}


// --- Extracted tintin_printf2 from src/show.c ---

void tintin_printf2(struct session *ses, char *format, ...)
{
	char *buffer;
	va_list args;

	push_call("tintin_printf2(%p,%p,...)",ses,format);

	if (HAS_BIT(gtd->event_flags, EVENT_FLAG_REFORMAT) && check_all_events(ses, EVENT_FLAG_REFORMAT, 1, 0, "REFORMAT %s", format))
	{
		format = get_variable_def(ses, "result", format);
	}

	va_start(args, format);
	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "tintin_printf2: vasprintf:");

		pop_call();
		return;
	}
	va_end(args);

	tintin_puts2(ses, buffer);

	free(buffer);

	pop_call();
	return;
}


// --- Extracted tintin_printf3 from src/show.c ---

void tintin_printf3(struct session *ses, char *format, ...)
{
	char *buffer;
	va_list args;

	push_call("tintin_printf3(%p,%p,...)",ses,format);

	va_start(args, format);
	if (vasprintf(&buffer, format, args) == -1)
	{
		syserr_printf(ses, "tintin_printf3: vasprintf:");

		pop_call();
		return;
	}
	va_end(args);

	tintin_puts3(ses, buffer, FALSE);

	free(buffer);

	pop_call();
	return;
}


// --- Extracted print_stdout from src/text.c ---

void print_stdout(int row, int col, char *format, ...)
{
	char *buffer;
	va_list args;
	int len;

	va_start(args, format);
	len = vasprintf(&buffer, format, args);
	va_end(args);

	if (gtd->detach_port)
	{
		if (gtd->detach_sock)
		{
			if (write(gtd->detach_sock, buffer, len) == -1)
			{
				syserr_printf(gtd->ses, "print_stdout: write:");
			}
		}
	}
	else
	{
		if (gtd->level->ignore == 0)
		{
			SET_BIT(gtd->flags, TINTIN_FLAG_DISPLAYUPDATE);
		}

		fputs(buffer, stdout);
//		printf("%s", buffer);

		if (row && col)
		{
			set_line_screen(gtd->ses, buffer, row, col);
		}
	}
	free(buffer);
}


// --- Extracted get_regex_range from src/regex.c ---

int get_regex_range(char *in, char *out, int *var, int *arg)
{
	char *pti, *pto, *ptr, range[BUFFER_SIZE];

	pto = out;
	pti = in;
	ptr = range;

	if (in[-2] != '!')
	{
		*pto++ = '(';
	}

	if (*pti < '0' || *pti > '9')
	{
		goto end;
	}

	while (*pti)
	{
		switch (*pti)
		{
			case '0':
			case '1':
			case '2':
			case '3':
			case '4':
			case '5':
			case '6':
			case '7':
			case '8':
			case '9':
				*ptr++ = *pti++;
				continue;

			case '.':
				if (pti[1] != '.')
				{
					goto end;
				}
				if (ptr == range)
				{
					*ptr++ = '0';
				}
				*ptr++ = ',';
				pti += 2;
				continue;

			case 'a':
				pto += sprintf(pto, "%s", "[^\\0]");
				break;
			case 'A':
				pto += sprintf(pto, "%s", "\\n");
				break;
			case 'c':
				pto += sprintf(pto, "%s", "(?:\\e\\[[0-9;]*m)");
				break;
			case 'd':
				pto += sprintf(pto, "%s", "[0-9]");
				break;
			case 'D':
				pto += sprintf(pto, "%s", "[^0-9]");
				break;
			case 'p':
				pto += sprintf(pto, "%s", "[\\x20-\\xfe]");
				break;
			case 'P':
				pto += sprintf(pto, "%s", "[^\\x20-\\xfe]");
				break;
			case 's':
				pto += sprintf(pto, "%s", "\\s");
				break;
			case 'S':
				pto += sprintf(pto, "%s", "\\S");
				break;
			case 'u':
				pto += sprintf(pto, "%s", "(?:[\\x00-\\x7F]|[\\xC0-\\xF4][\\x80-\\xC0]{1,3})");
				break;
			case 'U':
				pto += sprintf(pto, "%s", "[\\xF5-\\xFF]");
				break;
			case 'w':
				pto += sprintf(pto, "%s", "\\w");
				break;
			case 'W':
				pto += sprintf(pto, "%s", "\\W");
				break;
			case '*':
				pto += sprintf(pto, "%s", ".");
				break;

			default:
				goto end;
		}
		*ptr = 0;
		pti++;

		pto += sprintf(pto, "{%s}%s%s", range, *pti ? "?" : "", in[-2] != '!' ? ")" : "");

		return pti - in;
	}
	end:

/*	if (var)
	{
		gtd->args[next_arg(*var)] = next_arg(*arg);
	}*/

	pto += sprintf(pto, "%s%s", *in ? ".+?" : ".+", in[-2] != '!' ? ")" : "");

	return 0;
}


// --- Extracted parse_script from src/tokenize.c ---

struct scriptnode *parse_script(struct scriptroot *root, int lvl, struct scriptnode *token, struct scriptnode *shift)
{
	struct scriptnode *split = NULL;

	while (token)
	{
		if (token->lvl < lvl)
		{
			if (shift->lvl + 1 == lvl)
			{
				switch (shift->type)
				{
					case TOKEN_TYPE_FOREACH:
					case TOKEN_TYPE_LOOP:
					case TOKEN_TYPE_PARSE:
					case TOKEN_TYPE_WHILE:
						debugtoken(root->ses, root, token);
						return shift;

					case TOKEN_TYPE_BROKEN_FOREACH:
					case TOKEN_TYPE_BROKEN_LOOP:
					case TOKEN_TYPE_BROKEN_PARSE:
					case TOKEN_TYPE_BROKEN_WHILE:
						shift->type--;
						return token;
				}
			}
			return token;
		}

		debugtoken(root->ses, root, token);

		switch (token->type)
		{
			case TOKEN_TYPE_BREAK:
				switch (shift->type)
				{
					case TOKEN_TYPE_FOREACH:
						breakforeachtoken(shift);
						shift->type++;
						break;
					case TOKEN_TYPE_LOOP:
						breaklooptoken(shift);
						shift->type++;
						break;
					case TOKEN_TYPE_PARSE:
						breakparsetoken(shift);
						shift->type++;
						break;
					case TOKEN_TYPE_WHILE:
						shift->type++;
						break;
				}

				do
				{
					token = token->next;
				}
				while (token && token->lvl > shift->lvl);

				continue;

			case TOKEN_TYPE_CASE:
				if (shift->data && mathswitch(root->ses, shift->data->str, token->str))
				{

					token = token->next;

					token = parse_script(root, lvl + 1, token, shift);

					while (token && token->lvl >= lvl)
					{
						token = token->next;
					}
				}
				else
				{
					do
					{
						token = token->next;
					}
					while (token && token->lvl > lvl);
				}
				continue;

			case TOKEN_TYPE_COMMAND:
				if (push_call_printf("do_%s(%s,%p)", command_table[token->cmd].name, root->ses->name, token->str))
				{
					switch (command_table[token->cmd].args)
					{
						case 0:
							root->ses = (*command_table[token->cmd].command) (root->ses, token->str, NULL, NULL, NULL, NULL);
							break;
						case 1:
							root->ses = (*command_table[token->cmd].command) (root->ses, token->str, str_alloc_stack(0), NULL, NULL, NULL);
							break;
						case 2:
							root->ses = (*command_table[token->cmd].command) (root->ses, token->str, str_alloc_stack(0), str_alloc_stack(0), NULL, NULL);
							break;
						case 3:
							root->ses = (*command_table[token->cmd].command) (root->ses, token->str, str_alloc_stack(0), str_alloc_stack(0), str_alloc_stack(0), NULL);
							break;
						case 4:
							tintin_printf2(gtd->ses, "error: parse_script: command_table[%d].command == 4", token->cmd);
							root->ses = (*command_table[token->cmd].command) (root->ses, token->str, str_alloc_stack(0), str_alloc_stack(0), str_alloc_stack(0), str_alloc_stack(0));
							break;
					}
				}
				pop_call();
/*
	return;
}
*/
				break;

			case TOKEN_TYPE_CONTINUE:

				do
				{
					token = token->next;
				}
				while (token && token->lvl > shift->lvl);

				continue;

			case TOKEN_TYPE_DEFAULT:
				token = token->next;

				token = parse_script(root, lvl + 1, token, shift);

				while (token && token->lvl >= lvl)
				{
					token = token->next;
				}
				continue;

			case TOKEN_TYPE_ELSE:
				if (split)
				{
					token = parse_script(root, lvl + 1, token->next, shift);

					split = NULL;
				}
				else
				{
					do
					{
						token = token->next;
					}
					while (token && token->lvl > lvl);
				}
				continue;

			case TOKEN_TYPE_ELSEIF:
				if (split && get_number(root->ses, token->str))
				{
					token = parse_script(root, lvl + 1, token->next, shift);

					split = NULL;
				}
				else
				{
					do
					{
						token = token->next;
					}
					while (token && token->lvl > lvl);
				}
				continue;

			case TOKEN_TYPE_END:
				break;

			case TOKEN_TYPE_FOREACH:
				if (*token->data->arg == 0)
				{
					resetforeachtoken(root->ses, token);
				}

				if (*token->data->arg == 0)
				{
//					token->type++;

					do
					{
						token = token->next;
					}
					while (token && token->lvl > lvl);
				}
				else
				{
					if (*token->data->arg == 0)
					{
						token->type++;
					}
					token = parse_script(root, lvl + 1, token->next, token);
				}
				continue;

			case TOKEN_TYPE_IF:
				split = NULL;

				if (get_number(root->ses, token->str))
				{
					token = parse_script(root, lvl + 1, token->next, shift);
				}
				else
				{
					split = token;

					do
					{
						token = token->next;
					}
					while (token && token->lvl > lvl);
				}
				continue;

			case TOKEN_TYPE_LOOP:
				if (token->data->cnt == token->data->max + token->data->inc)
				{
					resetlooptoken(root->ses, token);
				}

				token->data->cnt += token->data->inc;

				if (token->data->cnt == token->data->max + token->data->inc)
				{
					token->type++;
				}

				token = parse_script(root, lvl + 1, token->next, token);

				continue;

			case TOKEN_TYPE_PARSE:
				if (*token->data->arg == 0)
				{
					resetparsetoken(root->ses, token);

					if (*token->data->arg == 0)
					{
//						token->type++;

						do
						{
							token = token->next;
						}
						while (token && token->lvl > lvl);

						continue;
					}

				}

				if (*token->data->arg == 0)
				{
					token->type++;
				}
				token = parse_script(root, lvl + 1, token->next, token);

				continue;

			case TOKEN_TYPE_REGEX:
				split = NULL;

				token->regex->val = find(root->ses, token->str, token->regex->str, SUB_VAR|SUB_FUN, REGEX_FLAG_CMD);

				if (token->regex->val)
				{
					substitute(root->ses, token->regex->bod, token->regex->buf, SUB_CMD);

					root->ses = script_driver(root->ses, LIST_COMMAND, NULL, token->regex->buf);
				}
				else
				{
					split = token;
				}
				break;

			case TOKEN_TYPE_RETURN:
				handlereturntoken(root->ses, token);

				goto end;

			case TOKEN_TYPE_SESSION:
				root->ses = parse_tintin_command(root->ses, token->str);
				break;

			case TOKEN_TYPE_STRING:
				root->ses = parse_input(root->ses, token->str);
				break;

			case TOKEN_TYPE_REPEAT:
				root->ses = repeat_history(root->ses, token->str);
				break;

			case TOKEN_TYPE_SWITCH:
				handleswitchtoken(root->ses, token);

				token = parse_script(root, lvl + 1, token->next, token);
				continue;

			case TOKEN_TYPE_WHILE:
				if (get_number(root->ses, token->str))
				{
					token = parse_script(root, lvl + 1, token->next, token);
				}
				else
				{
//					token->type++;

					do
					{
						token = token->next;
					}
					while (token && token->lvl > lvl);
				}
				continue;
		}

		if (token)
		{
			token = token->next;
		}
	}

	end:

	if (lvl)
	{
		return NULL;
	}

	return (struct scriptnode *) root->ses;
}


// --- Extracted searchgrid_find from src/mapper.c ---

int searchgrid_find(struct session *ses, int from, struct search_data *search)
{
	int vnum, head, tail, index, iprev, loop;
	double length;
	struct grid_node *node, *temp, list[MAP_BF_SIZE], *node_list[MAP_BF_SIZE];
	struct exit_data *exit;
	struct room_data *room, *toroom;

	search->stamp++;

	head = 0;
	tail = 1;

	node = &list[head];

	node->vnum   = from;
	node->length = ses->map->room_list[from]->weight;

	room = ses->map->room_list[node->vnum];

	room->search_stamp = search->stamp;
	room->length = node->length + 0.0001;

	DEL_BIT(room->flags, ROOM_FLAG_PATH);

	// for map_list

	room->w = node->w = 0;
	room->x = node->x = 0;
	room->y = node->y = 0;
	room->z = node->z = 0;

	for (loop = 0 ; loop < MAP_BF_SIZE ; loop++)
	{
		node_list[loop] = &list[loop];
	}

	while (head != tail)
	{
		node = node_list[head];

		room = ses->map->room_list[node->vnum];

		length = node->length;

		head = (head + 1) % MAP_BF_SIZE;

		if (length >= room->length)
		{
			continue;
		}
		room->length = length;

		if (search->vnum)
		{
			if (room->vnum == search->vnum)
			{
				return room->vnum;
			}
		}
		else
		{
			if (match_room(ses, room->vnum, search))
			{
				return room->vnum;
			}
		}

		if (check_global(ses, room->vnum))
		{
			exit = ses->map->global_exit;
		}
		else
		{
			exit = room->f_exit;
		}

		for ( ; exit ; exit = exit->next)
		{
			vnum = tunnel_void(ses, room->vnum, exit->vnum, exit->dir);

			if (HAS_BIT(exit->flags, EXIT_FLAG_AVOID|EXIT_FLAG_BLOCK) || HAS_BIT(ses->map->room_list[vnum]->flags, ROOM_FLAG_AVOID|ROOM_FLAG_BLOCK))
			{
				goto next_exit;
			}

			toroom = ses->map->room_list[vnum];

			length = room->length + exit->weight + toroom->weight;

			temp = node_list[tail];

			temp->w      = toroom->vnum == ses->map->global_vnum ? 1 : room->w;
			temp->x      = node->x + (HAS_BIT(exit->dir, MAP_EXIT_E) == MAP_EXIT_E) - (HAS_BIT(exit->dir, MAP_EXIT_W) == MAP_EXIT_W);
			temp->y      = node->y + (HAS_BIT(exit->dir, MAP_EXIT_N) == MAP_EXIT_N) - (HAS_BIT(exit->dir, MAP_EXIT_S) == MAP_EXIT_S);
			temp->z      = node->z + (HAS_BIT(exit->dir, MAP_EXIT_U) == MAP_EXIT_U) - (HAS_BIT(exit->dir, MAP_EXIT_D) == MAP_EXIT_D);

			if (search->stamp == toroom->search_stamp)
			{
				if (length >= toroom->length)
				{
					// overwrite coordinates obtained through global exits

					if (toroom->w && !node->w)
					{
						toroom->w = temp->w;
						toroom->x = temp->x;
						toroom->y = temp->y;
						toroom->z = temp->z;
					}
					goto next_exit;
				}
			}
			else
			{
				toroom->search_stamp = search->stamp;

				// first come first serve like with spatialgrid_find

				toroom->w = temp->w;
				toroom->x = temp->x;
				toroom->y = temp->y;
				toroom->z = temp->z;

				DEL_BIT(toroom->flags, ROOM_FLAG_PATH);
			}
			toroom->length = length + 0.0001;

			temp->vnum   = vnum;
			temp->length = length;

			/*
				list must remain ordered by length
			*/

			index = tail;

			while (index != head)
			{
				iprev = index ? index - 1 : MAP_BF_SIZE - 1;

				if (temp->length >= node_list[iprev]->length)
				{
					break;
				}
				node_list[index] = node_list[iprev];

				index = iprev;
			}
			node_list[index] = temp;
			tail = (tail + 1) % MAP_BF_SIZE;

			if (tail == head)
			{
				show_error(ses, LIST_COMMAND, "#SHORTEST PATH: MAP TOO LARGE FOR BF STACK OF %d.", MAP_BF_SIZE);
				break;
			}

			next_exit:

			if (exit == ses->map->global_exit)
			{
				exit->next = room->f_exit;
			}
		}
	}
	return 0;
}


// --- Extracted searchgrid_walk from src/mapper.c ---

struct exit_data *searchgrid_walk(struct session *ses, int from, int dest)
{
	int vnum, head, tail, index, iprev, loop, last;
	double length;
	struct grid_node *node, *temp, list[MAP_BF_SIZE], *node_list[MAP_BF_SIZE];
	struct exit_data *exit;
	struct room_data *room, *toroom;

	head = 0;
	tail = 1;

	node = &list[head];

	node->vnum   = from;
	node->length = 0;
	node->exit   = NULL;

//	ses->map->room_list[node->vnum]->search_stamp--;

	for (loop = 0 ; loop < MAP_BF_SIZE ; loop++)
	{
		node_list[loop] = &list[loop];
	}

	while (head != tail)
	{
		node = node_list[head];

		room = ses->map->room_list[node->vnum];

		length = node->length;

		head = (head + 1) % MAP_BF_SIZE;

		if (length >= room->length)
		{
			continue;
		}
		room->length = length;

		if (room->vnum == dest)
		{
			return node->exit;
		}

		if (check_global(ses, room->vnum))
		{
			exit = ses->map->global_exit;
		}
		else
		{
			exit = room->f_exit;
		}

		last = tail;

		for ( ; exit ; exit = exit->next)
		{
			vnum = tunnel_void(ses, room->vnum, exit->vnum, exit->dir);

			toroom = ses->map->room_list[vnum];

			if (HAS_BIT(exit->flags, EXIT_FLAG_AVOID|EXIT_FLAG_BLOCK) || HAS_BIT(toroom->flags, ROOM_FLAG_AVOID|ROOM_FLAG_BLOCK))
			{
				goto next_exit;
			}

			if (ses->map->search->stamp != toroom->search_stamp)
			{
				goto next_exit;
			}

			length = room->length + exit->weight + toroom->weight;

			if (length >= toroom->length || length >= ses->map->room_list[dest]->length)
			{
				goto next_exit;
			}

			toroom->length = length + 0.0001;

			temp = node_list[tail];

			temp->vnum   = vnum;
			temp->length = length;
			temp->exit   = node->exit ? node->exit : exit;

			// list must remain ordered by length

			index = tail;

			while (index != head)
			{
				iprev = index ? index - 1 : MAP_BF_SIZE - 1;

				if (temp->length >= node_list[iprev]->length)
				{
					break;
				}
				node_list[index] = node_list[iprev];

				index = iprev;
			}
			node_list[index] = temp;
			tail = (tail + 1) % MAP_BF_SIZE;

			if (tail == head)
			{
				show_error(ses, LIST_COMMAND, "#SHORTEST PATH: MAP TOO LARGE FOR BF STACK OF %d.", MAP_BF_SIZE);
				break;
			}

			next_exit:

			if (exit == ses->map->global_exit)
			{
				exit->next = room->f_exit;
			}
		}

		if (last == tail)
		{
			room->search_stamp--;
		}
	}
	return NULL;
}


void push_call(char *format, ...)
{
	int len;

	len = gtd->memory->debug_len;

	if (len == gtd->memory->debug_max)
	{
		gtd->memory->debug_max++;

		gtd->memory->debug = (struct stack_data **) realloc(gtd->memory->debug, sizeof(struct str_data *) * gtd->memory->debug_max);

		gtd->memory->debug[len] = calloc(1, sizeof(struct stack_data));

		gtd->memory->debug[len]->name = calloc(1, NAME_SIZE);
	}

	strcpy(gtd->memory->debug[len]->name, format);

	gtd->memory->debug[len]->index = gtd->memory->stack_len;

	gtd->memory->debug_len++;
}

int push_call_printf(char *format, ...)
{
	int len;
	va_list ap;

	len = gtd->memory->debug_len;

	if (len == gtd->memory->debug_max)
	{
		gtd->memory->debug_max++;

		gtd->memory->debug = (struct stack_data **) realloc(gtd->memory->debug, sizeof(struct str_data *) * gtd->memory->debug_max);

		gtd->memory->debug[len] = calloc(1, sizeof(struct stack_data));

		gtd->memory->debug[len]->name = calloc(1, NAME_SIZE);
	}

	va_start(ap, format);

	vsnprintf(gtd->memory->debug[len]->name, NAME_SIZE - 1, format, ap);

	va_end(ap);

	gtd->memory->debug[len]->index = gtd->memory->stack_len;

	if (gtd->memory->debug_len++ == 100)
	{
		tintin_printf2(gtd->ses, "\e[1;31merror: push_call_printf: stack size is going past 100.");

		tintin_printf2(gtd->ses, "\e[1;32mDEBUG_STACK[\e[1;31m%03d\e[1;32m] [%03d] = \e[1;31m%s\e[0m", len, gtd->memory->debug[len]->index, gtd->memory->debug[len]->name);

		return FALSE;
	}
	if (gtd->memory->debug_len > 500)
	{
		return FALSE;
	}
	return TRUE;
}

