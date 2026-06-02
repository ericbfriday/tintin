
/******************************************************************************
 *   Legacy Utilities for TinTin++ (Zig Migration)                             *
 *   Functions requiring C-style variable arguments or complex macros.         *
 ******************************************************************************/

#include "tintin.h"

int cat_sprintf(char *dest, char *fmt, ...) {
  char buf[STRING_SIZE];
  int size;

  va_list args;

  va_start(args, fmt);
  size = vsprintf(buf, fmt, args);
  va_end(args);

  strcat(dest, buf);

  return size;
}

// unused, also needs testing

void ins_sprintf(char *dest, char *fmt, ...) {
  char tmp[STRING_SIZE];
  int len;
  va_list args;

  strcpy(tmp, dest);

  va_start(args, fmt);
  len = vsprintf(dest, fmt, args);
  va_end(args);

  strcpy(dest + len, tmp);
}

void socket_printf(struct session *ses, size_t length, char *format, ...) {
  size_t size;

  char buf[STRING_SIZE];
  va_list args;

  va_start(args, format);
  size = vsprintf(buf, format, args);
  va_end(args);

  if (size != length && HAS_BIT(ses->telopts, TELOPT_FLAG_DEBUG)) {
    tintin_printf(ses, "DEBUG TELNET: socket_printf size difference: %d vs %d",
                  size, length);
  }

  if (HAS_BIT(ses->flags, SES_FLAG_CONNECTED)) {
    write_line_mud(ses, buf, length);
  }
}

void telnet_printf(struct session *ses, int length, char *format, ...) {
  size_t size;

  char buf[STRING_SIZE];
  va_list args;

  va_start(args, format);
  size = vsprintf(buf, format, args);
  va_end(args);

  if (length != -1 && size != length &&
      HAS_BIT(ses->telopts, TELOPT_FLAG_DEBUG)) {
    tintin_printf(ses, "DEBUG TELNET: telnet_printf size difference: %d vs %d",
                  size, length);
  }

  if (HAS_BIT(ses->flags, SES_FLAG_CONNECTED)) {
    SET_BIT(ses->telopts, TELOPT_FLAG_TELNET);

    write_line_mud(ses, buf, size);

    DEL_BIT(ses->telopts, TELOPT_FLAG_TELNET);
  }
}

char *str_time(struct session *ses, char *format, time_t time) {
  static char buf[10][NAME_SIZE];
  static int cnt;
  struct tm timeval_tm;

  cnt = (cnt + 1) % 10;

  timeval_tm = *localtime(&time);

  strftime(buf[cnt], NAME_SIZE, format, &timeval_tm);

  return buf[cnt];
}

char *ftos(double number) {
  static char outbuf[10][NUMBER_SIZE];
  static int cnt;
  int len;

  cnt = (cnt + 1) % 10;

  sprintf(outbuf[cnt], "%f", number);

  for (len = strlen(outbuf[cnt]) - 1; len > 0; len--) {
    if (outbuf[cnt][len] == '0') {
      outbuf[cnt][len] = 0;
    } else {
      if (outbuf[cnt][len] == '.') {
        outbuf[cnt][len] = 0;
      }
      break;
    }
  }
  return outbuf[cnt];
}

char *ntos(long long number) {
  static char outbuf[10][NUMBER_SIZE];
  static int cnt;

  cnt = (cnt + 1) % 10;

  sprintf(outbuf[cnt], "%lld", number);

  return outbuf[cnt];
}

char *indent_one(int len) {
  static char outbuf[10][STACK_SIZE];
  static int cnt;

  cnt = (cnt + 1) % 10;

  memset(outbuf[cnt], ' ', UMAX(1, len));

  outbuf[cnt][len] = 0;

  return outbuf[cnt];
}

char *indent(int len) {
  static char outbuf[21][101];

  len = URANGE(0, len, 20);

  if (outbuf[len][0] == 0) {
    sprintf(outbuf[len], "%*s", len * 4, "");
  }

  return outbuf[len];
}

void ins_cpy(char *dest, char *str) {
  char tmp[STRING_SIZE];

  strcpy(tmp, dest);
  strcpy(dest, str);
  strcat(dest, tmp);
}
