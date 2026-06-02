
#include "tintin.h"

#define EXP_NUMBER 0
#define EXP_STRING 1
#define EXP_BRACE 2
#define EXP_OPERATOR 3
#define EXP_PARANTHESES 4

#define EXP_PR_CONSTANT 0
#define EXP_PR_DICE 1
#define EXP_PR_INTMUL 2
#define EXP_PR_INTADD 3
#define EXP_PR_BITSHIFT 4
#define EXP_PR_LOGLTGT 5
#define EXP_PR_LOGCOMP 6
#define EXP_PR_BITAND 7
#define EXP_PR_BITXOR 8
#define EXP_PR_BITOR 9
#define EXP_PR_LOGAND 10
#define EXP_PR_LOGXOR 11
#define EXP_PR_LOGOR 12
#define EXP_PR_TERNARY 13
#define EXP_PR_VAR 14
#define EXP_PR_LVL 15

#define EXP_OP_MULTIPLY '*'
#define EXP_OP_POWER '*' + 128 * '*'
#define EXP_OP_DIVIDE '/'
#define EXP_OP_ROOT '/' + 128 * '/'
#define EXP_OP_MODULO '%'
#define EXP_OP_DICE 'd'
#define EXP_OP_ADDITION '+'
#define EXP_OP_SUBTRACTION '-'
#define EXP_OP_LEFT_SHIFT '<' + 128 * '<'
#define EXP_OP_RIGHT_SHIFT '>' + 128 * '>'
#define EXP_OP_ELLIPSIS '.' + 128 * '.'
#define EXP_OP_GREATER '>'
#define EXP_OP_GREATER_EQUAL '>' + 128 * '='
#define EXP_OP_LESSER '<'
#define EXP_OP_LESSER_EQUAL '<' + 128 * '='
#define EXP_OP_EQUAL '=' + 128 * '='
#define EXP_OP_COMPARE '=' + 128 * '=' + 128 * 128 * '='
#define EXP_OP_NOT_EQUAL '!' + 128 * '='
#define EXP_OP_NOT_COMPARE '!' + 128 * '=' + 128 * 128 * '='
#define EXP_OP_AND '&'
#define EXP_OP_XOR '^'
#define EXP_OP_OR '|'
#define EXP_OP_LOGICAL_AND '&' + 128 * '&'
#define EXP_OP_LOGICAL_XOR '^' + 128 * '^'
#define EXP_OP_LOGICAL_OR '|' + 128 * '|'
#define EXP_OP_TERNARY_IF '?'
#define EXP_OP_TERNARY_ELSE ':'

extern struct math_node *math_head;
extern struct math_node *math_tail;
extern int precision;
extern int wonky;

extern void add_math_node(int type, int level, int priority, char *arg3);
extern void del_math_node(struct math_node *node);

#define MATH_NODE(type, priority, newstatus)                                   \
  {                                                                            \
    *pta = 0;                                                                  \
    add_math_node(type, level, priority, buf3);                                \
    status = newstatus;                                                        \
    pta = buf3;                                                                \
    point = -1;                                                                \
  }

int mathexp_tokenize(struct session *ses, char *str, int seed, int debug) {
  char *buf3, *pti, *pta;
  int level, status, point, nest;

  push_call("mathexp_tokenize(%p,%s,%d,%d)", ses, str, seed, debug);

  buf3 = str_alloc_stack(0);

  nest = 0;
  level = 0;
  wonky = 0;
  point = -1;
  status = EXP_NUMBER;
  precision = seed;

  pta = buf3;
  pti = str;

  while (math_head) {
    del_math_node(math_head);
  }

  while (*pti) {
    switch (status) {
    case EXP_NUMBER:
      switch (*pti) {
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
        *pta++ = *pti++;

        if (point >= 0) {
          point++;

          if (precision < point) {
            precision = point;
          }
        }
        break;

      case '!':
        if (pta != buf3) {
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
        } else {
          add_math_node(EXP_NUMBER, level, EXP_PR_VAR, "0");
          add_math_node(EXP_OPERATOR, level, EXP_PR_CONSTANT, "==");

          *pta++ = *pti++;

          pta = buf3;
        }
        break;

      case '~':
        if (pta != buf3) {
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
        } else {
          add_math_node(EXP_NUMBER, level, EXP_PR_VAR, "-1");
          add_math_node(EXP_OPERATOR, level, EXP_PR_INTADD, "-");

          *pta++ = *pti++;

          pta = buf3;
        }
        break;

      case '+':
        if (pta != buf3) {
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
        } else {
          //							add_math_node(EXP_NUMBER,
          //level, EXP_PR_VAR, "1"); 							add_math_node(EXP_OPERATOR, level,
          //EXP_PR_INTMUL, "*"); 							*pta++ = *pti++;

          pti++;

          pta = buf3;
        }
        break;

      case '-':
        if (pta != buf3) {
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
        } else {
          add_math_node(EXP_NUMBER, level, EXP_PR_VAR, "-1");
          add_math_node(EXP_OPERATOR, level, EXP_PR_INTMUL, "*");

          *pta++ = *pti++;

          pta = buf3;
        }
        break;

      case '{':
        if (pta != buf3) {
          if (debug) {
            show_debug(ses, LIST_VARIABLE, NULL,
                       "#DEBUG MATH: \x7B FOUND INSIDE A NUMBER");
          }
          pop_call();
          return FALSE;
        }
        pti++;
        status = EXP_BRACE;
        nest++;
        break;

      case '"':
        if (pta != buf3) {
          if (debug) {
            show_debug(ses, LIST_VARIABLE, NULL,
                       "#DEBUG MATH: \" FOUND INSIDE A NUMBER");
          }
          pop_call();
          return FALSE;
        }
        pti++;
        nest++;
        status = EXP_STRING;
        break;

      case '(':
        if (pta != buf3) {
          if (debug) {
            show_debug(ses, LIST_VARIABLE, NULL,
                       "#DEBUG MATH: PARANTESES FOUND INSIDE A NUMBER");
          }
          pop_call();
          return FALSE;
        } else {
          *pta++ = *pti++;
          MATH_NODE(EXP_PARANTHESES, EXP_PR_LVL, EXP_NUMBER);
        }
        level++;
        break;

      case ',':
        pti++;
        break;

      case ':':
        if (debug && wonky == 0) {
          show_error(gtd->ses, LIST_COMMAND,
                     "#WARNING: COMPUTING {%s}. THE : TIME OPERATOR IN #MATH "
                     "WILL BE REMOVED IN FUTURE RELEASES.",
                     str);
        }
        *pta++ = *pti++;
        break;

      case '.':
        if (pti[1] == '.') {
          if (pta == buf3) {
            *pta++ = '1';
          }

          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);

          if (pti[2] == 0) {
            *pta++ = *pti++;
            *pta++ = *pti++;

            MATH_NODE(EXP_OPERATOR, EXP_PR_LOGCOMP, EXP_NUMBER);

            *pta++ = '-';
            *pta++ = '1';
          }
        } else {
          *pta++ = *pti++;
          if (point >= 0) {
            if (debug) {
              show_debug(
                  ses, LIST_VARIABLE, NULL,
                  "#DEBUG MATH: MORE THAN ONE POINT FOUND INSIDE A NUMBER");
            }
            precision = 0;
            pop_call();
            return FALSE;
          }
          point++;
        }
        break;

      case ' ':
      case '\t':
        pti++;
        break;

      case 'd':
      case ')':
      case '*':
      case '/':
      case '%':
      case '<':
      case '>':
      case '&':
      case '^':
      case '|':
      case '=':
      case '?':
        if (pti == str) {
          if (debug) {
            show_debug(ses, LIST_VARIABLE, NULL,
                       "#DEBUG MATH: EXPRESSION STARTED WITH AN OPERATOR.");
          }
          pop_call();
          return FALSE;
        }

        if (pta != buf3) {
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
          if (*pti == '?') {
            wonky = 1;
          }
        } else {
          *pta++ = *pti++;
          *pta = 0;

          if (debug) {
            show_debug(
                ses, LIST_VARIABLE, NULL,
                "#DEBUG MATH {%s}: FOUND OPERATOR %s WHILE EXPECTING A VALUE.",
                str, buf3);
          }
          pop_call();
          return FALSE;
        }
        break;

      case 'K':
      case 'M':
      case 'G':
      case 'T':
        //					case 'P':
        //					case 'E':
        //					case 'Z':
        //					case 'Y':
        if (pta == buf3) {
          *pta++ = *pti++;
          *pta = 0;

          if (debug) {
            show_debug(ses, LIST_VARIABLE, NULL,
                       "#DEBUG MATH {%s}: INVALID NUMBER %s.", str, buf3);
          }

          pop_call();
          return FALSE;
        } else {
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);

          *pta++ = '*';
          MATH_NODE(EXP_OPERATOR, EXP_PR_CONSTANT, EXP_NUMBER);

          switch (*pti++) {
          case 'K':
            pta += sprintf(pta, "1000");
            break;
          case 'M':
            pta += sprintf(pta, "1000000");
            break;
          case 'G':
            pta += sprintf(pta, "1000000000");
            break;
          case 'T':
            pta += sprintf(pta, "1000000000000");
            break;
            //								case
            //'P': pta += sprintf(pta, "1000000000000000"); break; 								case 'E': pta
            //+= sprintf(pta, "1000000000000000000"); break; 								case 'Z': pta +=
            //sprintf(pta, "1000000000000000000000"); break; 								case 'Y': pta +=
            //sprintf(pta, "1000000000000000000000000"); break;
          }
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
        }
        break;

      case 'm':
      case 'u':
      case 'n':
      case 'p':
        //					case 'f':
        //					case 'a':
        //					case 'z':
        //					case 'y':
        if (pta == buf3) {
          *pta++ = *pti++;
          *pta = 0;

          pop_call();
          return FALSE;
        } else {
          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);

          *pta++ = '/';

          MATH_NODE(EXP_OPERATOR, EXP_PR_CONSTANT, EXP_NUMBER);

          pta = buf3;

          switch (*pti++) {
          case 'm':
            pta += sprintf(pta, "1000");
            break;
          case 'u':
            pta += sprintf(pta, "1000000");
            break;
          case 'n':
            pta += sprintf(pta, "1000000000");
            break;
          case 'p':
            pta += sprintf(pta, "1000000000000");
            break;
            //								case
            //'f': pta += sprintf(pta, "1000000000000000"); break; 								case 'a': pta
            //+= sprintf(pta, "1000000000000000000"); break; 								case 'z': pta +=
            //sprintf(pta, "1000000000000000000000"); break; 								case 'y': pta +=
            //sprintf(pta, "1000000000000000000000000"); break;
          }
          precision = UMAX(precision, pta - buf3 - 1);

          MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
        }
        break;

      default:
        *pta++ = *pti++;
        *pta = 0;

        if (debug) {
          show_debug(ses, LIST_VARIABLE, NULL,
                     "#DEBUG MATH {%s}: INVALID NUMBER %s.", str, buf3);
        }
        pop_call();
        return FALSE;
      }
      break;

    case EXP_STRING:
      switch (*pti) {
      case '"':
        if (--nest == 0) {
          pti++;
          MATH_NODE(EXP_STRING, EXP_PR_VAR, EXP_OPERATOR);
        } else {
          *pta++ = *pti++;
        }
        break;

      default:
        *pta++ = *pti++;
        break;
      }
      break;

    case EXP_BRACE:
      switch (*pti) {
      case '{':
        *pta++ = *pti++;
        nest++;
        break;

      case '}':
        if (--nest == 0) {
          pti++;
          MATH_NODE(EXP_STRING, EXP_PR_VAR, EXP_OPERATOR);
        } else {
          *pta++ = *pti++;
        }
        break;

      default:
        *pta++ = *pti++;
        break;
      }
      break;

    case EXP_OPERATOR:
      switch (*pti) {
      case ' ':
        pti++;
        break;

      case '.':
        if (pti[1] == '.') {
          *pta++ = *pti++;
          *pta++ = *pti++;

          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGCOMP, EXP_NUMBER);
          break;
        } else {
          if (debug) {
            show_debug(ses, LIST_VARIABLE, NULL,
                       "#DEBUG MATH: UNKNOWN OPERATOR: %c%c", pti[0], pti[1]);
          }
          pop_call();
          return FALSE;
        }
        break;

      case ')':
        *pta++ = *pti++;
        level--;
        MATH_NODE(EXP_PARANTHESES, EXP_PR_LVL, EXP_OPERATOR);
        break;

      case '?':
        *pta++ = *pti++;
        MATH_NODE(EXP_OPERATOR, EXP_PR_TERNARY, EXP_NUMBER);
        break;

      case ':':
        *pta++ = *pti++;
        MATH_NODE(EXP_OPERATOR, EXP_PR_TERNARY, EXP_NUMBER);
        break;

      case 'd':
        *pta++ = *pti++;
        MATH_NODE(EXP_OPERATOR, EXP_PR_DICE, EXP_NUMBER);
        break;

      case '*':
        *pta++ = *pti++;

        switch (*pti) {
        case '*':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_INTMUL, EXP_NUMBER);
          break;

        default:
          MATH_NODE(EXP_OPERATOR, EXP_PR_INTMUL, EXP_NUMBER);
          break;
        }
        break;

      case '/':
        *pta++ = *pti++;

        switch (*pti) {
        case '/':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_INTMUL, EXP_NUMBER);
          break;
        default:
          MATH_NODE(EXP_OPERATOR, EXP_PR_INTMUL, EXP_NUMBER);
          break;
        }
        break;

      case '%':
        *pta++ = *pti++;
        MATH_NODE(EXP_OPERATOR, EXP_PR_INTMUL, EXP_NUMBER);
        break;

      case '+':
      case '-':
        *pta++ = *pti++;
        MATH_NODE(EXP_OPERATOR, EXP_PR_INTADD, EXP_NUMBER);
        break;

      case '<':
        *pta++ = *pti++;

        switch (*pti) {
        case '<':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_BITSHIFT, EXP_NUMBER);
          break;

        case '=':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGLTGT, EXP_NUMBER);
          break;

        default:
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGLTGT, EXP_NUMBER);
          break;
        }
        break;

      case '>':
        *pta++ = *pti++;

        switch (*pti) {
        case '>':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_BITSHIFT, EXP_NUMBER);
          break;

        case '=':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGLTGT, EXP_NUMBER);
          break;

        default:
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGLTGT, EXP_NUMBER);
          break;
        }
        break;

      case '&':
        *pta++ = *pti++;

        switch (*pti) {
        case '&':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGAND, EXP_NUMBER);
          break;

        default:
          MATH_NODE(EXP_OPERATOR, EXP_PR_BITAND, EXP_NUMBER);
          break;
        }
        break;

      case '^':
        *pta++ = *pti++;

        switch (*pti) {
        case '^':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGXOR, EXP_NUMBER);
          break;

        default:
          MATH_NODE(EXP_OPERATOR, EXP_PR_BITXOR, EXP_NUMBER);
          break;
        }
        break;

      case '|':
        *pta++ = *pti++;

        switch (*pti) {
        case '|':
          *pta++ = *pti++;
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGOR, EXP_NUMBER);
          break;

        default:
          MATH_NODE(EXP_OPERATOR, EXP_PR_BITOR, EXP_NUMBER);
          break;
        }
        break;

      case '=':
      case '!':
        *pta++ = *pti++;
        switch (*pti) {
        case '=':
          *pta++ = *pti++;
          if (*pti == '=') {
            *pta++ = *pti++;
          }
          MATH_NODE(EXP_OPERATOR, EXP_PR_LOGCOMP, EXP_NUMBER);
          break;

        default:
          if (debug) {
            show_debug(ses, LIST_VARIABLE, NULL,
                       "#DEBUG MATH: UNKNOWN OPERATOR: %c%c", pti[-1], pti[0]);
          }
          pop_call();
          return FALSE;
        }
        break;

      default:
        if (debug) {
          show_debug(ses, LIST_VARIABLE, NULL,
                     "#DEBUG MATH: UNKNOWN OPERATOR: %c", *pti);
        }
        pop_call();
        return FALSE;
      }
      break;
    }
  }

  if (level != 0) {
    if (debug) {
      show_debug(ses, LIST_VARIABLE, NULL,
                 "#DEBUG MATH: UNMATCHED PARENTHESES, LEVEL: %d", level);
    }
    pop_call();
    return FALSE;
  }

  if (status != EXP_OPERATOR) {
    if (pta == buf3) {
      pop_call();
      return FALSE;
    }
    MATH_NODE(EXP_NUMBER, EXP_PR_VAR, EXP_OPERATOR);
  }

  pop_call();
  return TRUE;
}
