
/******************************************************************************
 *   Legacy String Utilities for TinTin++ (Zig Migration)                      *
 *   Functions requiring C-style variable arguments or formatting.             *
 ******************************************************************************/

#include "tintin.h"

// Forward declarations for functions in string.zig
int str_len_str(struct session *ses, char *str, int start, int end);
int raw_len_str(struct session *ses, char *str, int start, int end);
int raw_len_str_min(struct session *ses, char *str, int start, int end);
int raw_len_str_opt(struct session *ses, char *str, int start, int end);
int str_len(char *str); // from memory.zig

char *str_ins_str(struct session *ses, char **str, char *ins, int str_start,
                  int str_end) {
  char old[COLOR_SIZE], tmp;
  int len, raw_start, raw_end, raw_len, ins_raw_len, col_len;

  if (str_end == -1) {
    str_end = str_start + strip_vt102_strlen(ses, ins);
  }

  len = str_len_str(ses, *str, 0, str_end);

  if (len < str_end) {
    str_cat_printf(str, "%*s", str_end - len, "");
  }

  ins_raw_len = raw_len_str(ses, ins, 0, str_end - str_start);

  raw_start = raw_len_str_min(ses, *str, 0, str_start);

  raw_len = str_len(*str);
  //	raw_end   = raw_len_str_min(ses, *str, 0, str_end);
  raw_end = raw_len_str_opt(ses, *str, 0, str_end);

  tmp = (*str)[raw_end];

  *old = (*str)[raw_end] = 0;

  get_color_codes(old, *str, old, GET_ALL);

  (*str)[raw_end] = tmp;

  //	*old = 0;

  col_len = strlen(old);

  str_resize(str, ins_raw_len + col_len + 1);

  if (raw_len < raw_end + ins_raw_len || raw_len > raw_end) {
    memmove(*str + raw_start + ins_raw_len + col_len, *str + raw_end,
            raw_len - raw_end + 1);

    memcpy(*str + raw_start + ins_raw_len, old, col_len);

    memcpy(*str + raw_start, ins, ins_raw_len);
  } else if (raw_len > raw_end) {
    memmove(*str + raw_start + ins_raw_len, *str + raw_end,
            raw_len - raw_end + 1);

    memcpy(*str + raw_start, ins, ins_raw_len);
  } else {
    memcpy(*str + raw_start, ins, ins_raw_len);

    if (len < str_end) {
      (*str)[raw_start + ins_raw_len] = 0;
    }
  }
  str_fix(*str);

  return *str;
}

char *calign(struct session *ses, char *in, char *out, int width) {
  int width_in;

  in = space_out(in);

  if (*in) {
    int len = strlen(in) - 1;

    while (is_space(in[len])) {
      in[len--] = 0;
    }
  }

  strip_vt102_width(ses, in, &width_in);

  width = UMAX(0, width - width_in);

  snprintf(out, BUFFER_SIZE, "%*s%s%*s", width / 2, "", in, width - width / 2,
           "");

  return out;
}

char *lalign(struct session *ses, char *in, char *out, int width) {
  int width_in;

  in = space_out(in);

  if (*in) {
    int len = strlen(in) - 1;

    while (is_space(in[len])) {
      in[len--] = 0;
    }
  }

  strip_vt102_width(ses, in, &width_in);

  width = UMAX(0, width - width_in);

  snprintf(out, BUFFER_SIZE, "%s%*s", in, width, "");

  return out;
}

char *ralign(struct session *ses, char *in, char *out, int width) {
  int width_in;

  in = space_out(in);

  if (*in) {
    int len = strlen(in) - 1;

    while (is_space(in[len])) {
      in[len--] = 0;
    }
  }

  strip_vt102_width(ses, in, &width_in);

  width = UMAX(0, width - width_in);

  snprintf(out, BUFFER_SIZE, "%*s%s", width, "", in);

  return out;
}
