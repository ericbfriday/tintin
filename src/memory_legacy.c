
/******************************************************************************
 *   Legacy Memory Functions for TinTin++ (Zig Migration)                      *
 *   Functions requiring C-style variable arguments or complex macros.         *
 ******************************************************************************/

#include "tintin.h"

// External references to Zig-exported functions
struct str_data *get_str_ptr(char *str);
char *get_str_str(struct str_data *str_ptr);
struct str_data *str_ptr_realloc(struct str_data *str_ptr, int size);
char *str_alloc(int size);
char *str_cat_len(char **str, char *arg, int len);
char *str_ins_len(char **str, int index, char *buf, int buf_len);

// Forward declarations for functions implemented here if needed locally
char *str_cpy(char **str,
              char *buf); // Implemented in memory.zig but might be needed?
// No, I decided str_cpy will be in memory.zig.
// Wait, if str_cpy is in memory.zig, I should call it there.
// If str_cpy refers to the one in memory.zig, I need to declare it extern here
// or include tintin.h which declares it.

char *restringf(char *point, char *fmt, ...) {
  char string[STRING_SIZE];
  va_list args;

  va_start(args, fmt);
  vsprintf(string, fmt, args);
  va_end(args);

  if (point) {
    free(point);
  }

  return strdup(string);
}

char *str_dup_printf(char *fmt, ...) {
  char *str, *ptv;
  int len;
  va_list args;

  va_start(args, fmt);

  len = vasprintf(&ptv, fmt, args);

  va_end(args);

  str = str_alloc(len);

  memcpy(str, ptv, len + 1);

  free(ptv);

  return str;
}

char *str_cpy_printf(char **str, char *fmt, ...) {
  struct str_data *str_ptr;
  char *ptv;
  va_list args;
  int len;

  va_start(args, fmt);

  len = vasprintf(&ptv, fmt, args);

  va_end(args);

  str_ptr = get_str_ptr(*str);

  if (str_ptr->max <= len) {
    str_ptr = str_ptr_realloc(str_ptr, len);

    *str = get_str_str(str_ptr);
  }

  memcpy(*str, ptv, len + 1);

  str_ptr->len = len;

  free(ptv);

  return *str;
}

char *str_cat_printf(char **str, char *fmt, ...) {
  char *arg;
  va_list args;
  int len;

  va_start(args, fmt);

  len = vasprintf(&arg, fmt, args);

  va_end(args);

  str_cat_len(str, arg, len);

  free(arg);

  return *str;
}

char *str_ins_printf(char **str, int index, char *fmt, ...) {
  int len;
  char *arg;
  va_list args;

  va_start(args, fmt);

  len = vasprintf(&arg, fmt, args);

  va_end(args);

  str_ins_len(str, index, arg, len);

  free(arg);

  return *str;
}
