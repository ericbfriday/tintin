#include "tintin.h"

struct session *gts;
struct tintin_data *gtd;

void quitmsg(char *message) { (void)message; }
void syserr_fatal(int signal, char *msg) { (void)signal; (void)msg; }
void syserr_printf(struct session *ses, char *fmt, ...) { (void)ses; (void)fmt; }
void winch_handler(int signal) { (void)signal; }
