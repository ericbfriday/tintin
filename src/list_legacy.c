
/******************************************************************************
 *   Legacy List Utilities for TinTin++ (Zig Migration)                        *
 *   Functions requiring complex sorting or algorithms.                        *
 ******************************************************************************/

#include "tintin.h"

// Prototypes for functions possibly missing from headers or zig exports
struct session *array_add(struct session *ses, struct listnode *list, char *arg,
                          char *var, char *arg1, char *arg2);
int cmp_num(const void *a,
            const void *b); // Assuming standard qsort-like comparison
int cmp_str(const void *a,
            const void *b); // Assuming standard qsort-like comparison

#define DO_ARRAY(array)                                                        \
  struct session *array(struct session *ses, struct listnode *list, char *arg, \
                        char *var, char *arg1, char *arg2)

DO_ARRAY(array_order) {
  int cnt, val, len;
  char **arg2_buffer;

  array_add(ses, list, arg, var, arg1, arg2);

  if (list->root->used > 1) {
    /*		if (*list->root->list[0]->arg2 == 0)
                    {
                            show_error(ses, LIST_COMMAND, "#ERROR: #LIST {%s}
       ORDER: LIST IS NOT INDEXED.", var);

                            return ses;
                    }
    */
    if (list->root->list[0]->root) {
      struct listroot **root_buffer;

      root_buffer = malloc(list->root->used * sizeof(struct listroot *));
      arg2_buffer = malloc(list->root->used * sizeof(char *));

      for (cnt = 0; cnt < list->root->used; cnt++) {
        len = str_len(list->root->list[cnt]->arg2);

        root_buffer[cnt] = list->root->list[cnt]->root;
        arg2_buffer[cnt] = list->root->list[cnt]->arg2;

        str_resize(&arg2_buffer[cnt], 10);

        sprintf(arg2_buffer[cnt] + len + 1, "%x", cnt);
      }

      quadsort(arg2_buffer, list->root->used, sizeof(char *), cmp_num);

      for (cnt = 0; cnt < list->root->used; cnt++) {
        val =
            hex_number_32bit(arg2_buffer[cnt] + str_len(arg2_buffer[cnt]) + 1);

        list->root->list[cnt]->root = root_buffer[val];
        list->root->list[cnt]->arg2 = arg2_buffer[cnt];
      }

      free(arg2_buffer);
      free(root_buffer);
    } else {
      arg2_buffer = malloc(list->root->used * sizeof(char *));

      for (cnt = 0; cnt < list->root->used; cnt++) {
        arg2_buffer[cnt] = list->root->list[cnt]->arg2;
      }

      quadsort(arg2_buffer, list->root->used, sizeof(char *), cmp_num);

      for (cnt = 0; cnt < list->root->used; cnt++) {
        list->root->list[cnt]->arg2 = arg2_buffer[cnt];
      }

      free(arg2_buffer);
    }
  }
  return ses;
}

DO_ARRAY(array_sort) {
  int cnt, val, len;
  char **arg2_buffer;

  array_add(ses, list, arg, var, arg1, arg2);

  if (list->root->used > 1) {
    if (list->root->list[0]->root) {
      struct listroot **root_buffer;

      root_buffer = malloc(list->root->used * sizeof(struct listroot *));
      arg2_buffer = malloc(list->root->used * sizeof(char *));

      for (cnt = 0; cnt < list->root->used; cnt++) {
        len = str_len(list->root->list[cnt]->arg2);

        root_buffer[cnt] = list->root->list[cnt]->root;
        arg2_buffer[cnt] = list->root->list[cnt]->arg2;

        str_resize(&arg2_buffer[cnt], 10);

        sprintf(arg2_buffer[cnt] + len + 1, "%x", cnt);
      }

      quadsort(arg2_buffer, list->root->used, sizeof(char *), cmp_str);

      for (cnt = 0; cnt < list->root->used; cnt++) {
        val =
            hex_number_32bit(arg2_buffer[cnt] + str_len(arg2_buffer[cnt]) + 1);

        list->root->list[cnt]->root = root_buffer[val];
        list->root->list[cnt]->arg2 = arg2_buffer[cnt];
      }

      free(arg2_buffer);
      free(root_buffer);
    } else {
      arg2_buffer = malloc(list->root->used * sizeof(char *));

      for (cnt = 0; cnt < list->root->used; cnt++) {
        arg2_buffer[cnt] = list->root->list[cnt]->arg2;
      }

      quadsort(arg2_buffer, list->root->used, sizeof(char *), cmp_str);

      for (cnt = 0; cnt < list->root->used; cnt++) {
        list->root->list[cnt]->arg2 = arg2_buffer[cnt];
      }

      free(arg2_buffer);
    }
  }
  return ses;
}

DO_ARRAY(array_tokenize) {
  char *buf;
  int index = 1, i;

  buf = str_alloc_stack(0);

  substitute(ses, arg, buf, SUB_VAR | SUB_FUN);

  arg = buf;

  if (list->root) {
    free_list(list->root);
  }

  list->root = init_list(ses, LIST_VARIABLE, LIST_SIZE);

  while (*arg) {
    arg = get_arg_in_braces(ses, arg, arg1, GET_ALL);

    i = 0;

    while (arg1[i] != 0) {
      if (arg1[i] == '{') {
        strcpy(arg2, "\\x7B");
        i++;
      } else if (arg1[i] == '}') {
        strcpy(arg2, "\\x7D");
        i++;
      } else if (arg1[i] == '\\' && arg1[i + 1] == 'x' && is_hex(arg1[i + 2]) &&
                 is_hex(arg1[i + 3])) {
        i += sprintf(arg2, "%.4s", &arg1[i]);
      } else if (HAS_BIT(ses->charset, CHARSET_FLAG_EUC) &&
                 is_euc_head(ses, &arg1[i])) {
        i += sprintf(arg2, "%.*s", get_euc_size(ses, &arg1[i]), &arg1[i]);
      } else if (HAS_BIT(ses->charset, CHARSET_FLAG_UTF8) &&
                 is_utf8_head(&arg1[i])) {
        i += sprintf(arg2, "%.*s", get_utf8_size(&arg1[i]), &arg1[i]);
      } else {
        i += sprintf(arg2, "%c", arg1[i]);
      }

      set_nest_node(list->root, ntos(index++), "%s", arg2);
    }

    if (*arg == COMMAND_SEPARATOR) {
      arg++;
    }
  }
  return ses;
}

// externs from tintin.h or other modules might be needed to link correctly if
// they are not in the header. But mostly they should be in tintin.h
