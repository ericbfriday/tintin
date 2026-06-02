#include "tintin.h"

// Stubs for symbols that are missing when running Zig tests without linking all C files

struct tintin_data *gtd;
struct session *gts;

void quitmsg(char *str) { (void)str; }
void syserr_fatal(int signal, char *msg) { (void)signal; (void)msg; }
void syserr_printf(struct session *ses, char *fmt, ...) { (void)ses; (void)fmt; }
void winch_handler(int sig) { (void)sig; }

// Add other stubs as needed
