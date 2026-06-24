DO_DRAW(draw_hbar);
extern DO_DRAW(draw_table_grid);
extern DO_DRAW(draw_text);
extern DO_DRAW(draw_top_side);
extern DO_DRAW(draw_vertical_lines);

typedef void DRAW(struct session *ses, int top_row, int top_col, int bot_row, int bot_col, int rows, int cols, long long flags, char *box_color, char *txt_color, char *arg, char *arg1, char *arg2, char *arg3);

struct draw_type
{
	char                  * name;
	char                  * desc;
	int                     flags;
	DRAW                  * fun;
}
