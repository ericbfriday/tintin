import sys
import re

with open("src/quadsort.h", "r") as f:
    quadsort_content = f.read()

# Extract partial_forward_merge
forward_match = re.search(r'void FUNC\(partial_forward_merge\).*?\n\}', quadsort_content, re.DOTALL)
forward_tmpl = forward_match.group(0)

# Extract partial_backward_merge
backward_match = re.search(r'void FUNC\(partial_backward_merge\).*?\n\}', quadsort_content, re.DOTALL)
backward_tmpl = backward_match.group(0)

# Extract quad_swap
swap_match = re.search(r'size_t FUNC\(quad_swap\)\(VAR \*array, size_t nmemb, CMPFUNC \*cmp\).*?\n\}', quadsort_content, re.DOTALL)
swap_tmpl = swap_match.group(0)

tmpl = forward_tmpl + "\n" + backward_tmpl + "\n" + swap_tmpl

tmpl32 = re.sub(r'FUNC\((.*?)\)', r'\g<1>32', tmpl)
tmpl32 = tmpl32.replace('head_branchless_merge', 'head_branchless_merge32')
tmpl32 = tmpl32.replace('tail_branchless_merge', 'tail_branchless_merge32')
tmpl32 = tmpl32.replace('VAR', 'int')

tmpl64 = re.sub(r'FUNC\((.*?)\)', r'\g<1>64', tmpl)
tmpl64 = tmpl64.replace('head_branchless_merge', 'head_branchless_merge64')
tmpl64 = tmpl64.replace('tail_branchless_merge', 'tail_branchless_merge64')
tmpl64 = tmpl64.replace('VAR', 'long long')

header = """#include "tintin.h"

extern void head_branchless_merge32(int *array, size_t x, int *ptl, int *ptr, CMPFUNC *cmp);
extern void tail_branchless_merge32(int *array, size_t x, int *ptl, int *ptr, CMPFUNC *cmp);
extern void quad_swap_merge32(int *array, int *swap, CMPFUNC *cmp);
extern void quad_reversal32(int *pts, int *pta);
extern void tail_swap32(int *pta, int *swap, size_t nmemb, CMPFUNC *cmp);
extern void parity_merge32(int *swap, int *pta, size_t x, size_t y, CMPFUNC *cmp);
extern void tail_merge32(int *pta, int *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp);

extern void head_branchless_merge64(long long *array, size_t x, long long *ptl, long long *ptr, CMPFUNC *cmp);
extern void tail_branchless_merge64(long long *array, size_t x, long long *ptl, long long *ptr, CMPFUNC *cmp);
extern void quad_swap_merge64(long long *array, long long *swap, CMPFUNC *cmp);
extern void quad_reversal64(long long *pts, long long *pta);
extern void tail_swap64(long long *pta, long long *swap, size_t nmemb, CMPFUNC *cmp);
extern void parity_merge64(long long *swap, long long *pta, size_t x, size_t y, CMPFUNC *cmp);
extern void tail_merge64(long long *pta, long long *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp);

"""

with open("src/missing_sort.c", "w") as f:
    f.write(header + tmpl32 + "\n\n" + tmpl64)

print("Created src/missing_sort.c with all missing macros.")

# Now for parse_script
with open("src/tokenize.c", "r") as f:
    tokenize_content = f.read()

parse_script_match = re.search(r'struct scriptnode \*parse_script\(.*?\n\}', tokenize_content, re.DOTALL)
if parse_script_match:
    parse_script_code = parse_script_match.group(0)
    
    with open("src/missing_phase5.c", "a") as f:
        f.write("\n\n// --- Extracted from src/tokenize.c ---\n\n")
        f.write(parse_script_code)
        f.write("\n")
    print("Appended parse_script to src/missing_phase5.c")
