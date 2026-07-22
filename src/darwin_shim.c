#include <stdio.h>
#include <ctype.h>
#include <errno.h>
#include <stdint.h>

FILE *__stdoutp;

int *__error(void) {
    return &errno;
}

int __tolower(int c) {
    return tolower(c);
}

int __toupper(int c) {
    return toupper(c);
}

int __maskrune(int c, unsigned long f) {
    int res = 0;
    if (f & 0x00000100L) res |= isalpha(c);
    if (f & 0x00000200L) res |= iscntrl(c);
    if (f & 0x00000400L) res |= isdigit(c);
    if (f & 0x00000800L) res |= isgraph(c);
    if (f & 0x00001000L) res |= islower(c);
    if (f & 0x00002000L) res |= ispunct(c);
    if (f & 0x00004000L) res |= isspace(c);
    if (f & 0x00008000L) res |= isupper(c);
    if (f & 0x00010000L) res |= isxdigit(c);
    if (f & 0x00020000L) res |= isblank(c);
    if (f & 0x00040000L) res |= isprint(c);
    return res ? 1 : 0;
}

typedef struct {
    int min;
    int max;
    int map;
    unsigned int *types;
} _RuneEntry;

typedef struct {
    int nranges;
    _RuneEntry *ranges;
} _RuneRange;

typedef struct {
    char __magic[8];
    char __encoding[32];
    void *__sgetrune;
    void *__sputrune;
    int __invalid_rune;
    uint32_t __runetype[256];
    int __maplower[256];
    int __mapupper[256];
    _RuneRange __runetype_ext;
    _RuneRange __maplower_ext;
    _RuneRange __mapupper_ext;
    void *__variable;
    int __variable_len;
} _RuneLocale;

_RuneLocale _DefaultRuneLocale;

__attribute__((constructor)) void init_darwin_shim() {
    __stdoutp = stdout;
    for (int i = 0; i < 256; i++) {
        uint32_t mask = 0;
        if (isalpha(i)) mask |= 0x00000100L;
        if (iscntrl(i)) mask |= 0x00000200L;
        if (isdigit(i)) mask |= 0x00000400L;
        if (isgraph(i)) mask |= 0x00000800L;
        if (islower(i)) mask |= 0x00001000L;
        if (ispunct(i)) mask |= 0x00002000L;
        if (isspace(i)) mask |= 0x00004000L;
        if (isupper(i)) mask |= 0x00008000L;
        if (isxdigit(i)) mask |= 0x00010000L;
        if (isblank(i)) mask |= 0x00020000L;
        if (isprint(i)) mask |= 0x00040000L;
        _DefaultRuneLocale.__runetype[i] = mask;
    }
}
