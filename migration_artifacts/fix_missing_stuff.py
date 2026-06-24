import sys
import re

# Fix missing_sort.c
with open("src/quadsort.h", "r") as f:
    quadsort_content = f.read()

with open("src/sort.c", "r") as f:
    sort_lines = f.readlines()

macros = "".join(sort_lines[29:105])

funcs = ["cross_merge", "partial_forward_merge", "partial_backward_merge", "quad_swap"]
tmpls = []

for func in funcs:
    match = re.search(r'(void|size_t) FUNC\(' + func + r'\).*?\n\}', quadsort_content, re.DOTALL)
    if match:
        tmpls.append(match.group(0))
    else:
        print(f"Could not find {func}")

tmpl = "\n\n".join(tmpls)

tmpl32 = re.sub(r'FUNC\((.*?)\)', r'\g<1>32', tmpl)
tmpl32 = tmpl32.replace('VAR', 'int')

tmpl64 = re.sub(r'FUNC\((.*?)\)', r'\g<1>64', tmpl)
tmpl64 = tmpl64.replace('VAR', 'long long')

header = """#include "tintin.h"

""" + macros + """

extern void quad_swap_merge32(int *array, int *swap, CMPFUNC *cmp);
extern void quad_reversal32(int *pts, int *pta);
extern void tail_swap32(int *pta, int *swap, size_t nmemb, CMPFUNC *cmp);
extern void parity_merge32(int *swap, int *pta, size_t x, size_t y, CMPFUNC *cmp);
extern void tail_merge32(int *pta, int *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp);
extern void parity_merge_two32(int *array, int *swap, size_t x, int *ptl, int *ptr, int *pts, CMPFUNC *cmp);
extern void parity_merge_four32(int *array, int *swap, size_t x, int *ptl, int *ptr, int *pts, CMPFUNC *cmp);

extern void quad_swap_merge64(long long *array, long long *swap, CMPFUNC *cmp);
extern void quad_reversal64(long long *pts, long long *pta);
extern void tail_swap64(long long *pta, long long *swap, size_t nmemb, CMPFUNC *cmp);
extern void parity_merge64(long long *swap, long long *pta, size_t x, size_t y, CMPFUNC *cmp);
extern void tail_merge64(long long *pta, long long *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp);

"""

with open("src/missing_sort.c", "w") as f:
    f.write(header + tmpl32 + "\n\n" + tmpl64)

print("missing_sort.c updated!")
