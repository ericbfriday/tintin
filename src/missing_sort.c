#include "tintin.h"

#define QUAD_CACHE 262144

// utilize branchless ternary operations in clang

#if !defined __clang__
#define head_branchless_merge(ptd, x, ptl, ptr, cmp)  \
	x = cmp(ptl, ptr) <= 0;  \
	*ptd = *ptl;  \
	ptl += x;  \
	ptd[x] = *ptr;  \
	ptr += !x;  \
	ptd++;
#else
#define head_branchless_merge(ptd, x, ptl, ptr, cmp)  \
	*ptd++ = cmp(ptl, ptr) <= 0 ? *ptl++ : *ptr++;
#endif

#if !defined __clang__
#define tail_branchless_merge(tpd, y, tpl, tpr, cmp)  \
	y = cmp(tpl, tpr) <= 0;  \
	*tpd = *tpl;  \
	tpl -= !y;  \
	tpd--;  \
	tpd[y] = *tpr;  \
	tpr -= y;
#else
#define tail_branchless_merge(tpd, x, tpl, tpr, cmp)  \
	*tpd-- = cmp(tpl, tpr) > 0 ? *tpl-- : *tpr--;
#endif

// guarantee small parity merges are inlined with minimal overhead

#define parity_merge_two(array, swap, x, ptl, ptr, pts, cmp)  \
	ptl = array; ptr = array + 2; pts = swap;  \
	head_branchless_merge(pts, x, ptl, ptr, cmp);  \
	*pts = cmp(ptl, ptr) <= 0 ? *ptl : *ptr;  \
  \
	ptl = array + 1; ptr = array + 3; pts = swap + 3;  \
	tail_branchless_merge(pts, x, ptl, ptr, cmp);  \
	*pts = cmp(ptl, ptr)  > 0 ? *ptl : *ptr;

#define parity_merge_four(array, swap, x, ptl, ptr, pts, cmp)  \
	ptl = array + 0; ptr = array + 4; pts = swap;  \
	head_branchless_merge(pts, x, ptl, ptr, cmp);  \
	head_branchless_merge(pts, x, ptl, ptr, cmp);  \
	head_branchless_merge(pts, x, ptl, ptr, cmp);  \
	*pts = cmp(ptl, ptr) <= 0 ? *ptl : *ptr;  \
  \
	ptl = array + 3; ptr = array + 7; pts = swap + 7;  \
	tail_branchless_merge(pts, x, ptl, ptr, cmp);  \
	tail_branchless_merge(pts, x, ptl, ptr, cmp);  \
	tail_branchless_merge(pts, x, ptl, ptr, cmp);  \
	*pts = cmp(ptl, ptr)  > 0 ? *ptl : *ptr;


#if !defined __clang__
#define branchless_swap(pta, swap, x, cmp)  \
	x = cmp(pta, pta + 1) > 0;  \
	swap = pta[!x];  \
	pta[0] = pta[x];  \
	pta[1] = swap;
#else
#define branchless_swap(pta, swap, x, cmp)  \
	x = 0;  \
	swap = cmp(pta, pta + 1) > 0 ? pta[x++] : pta[1];  \
	pta[0] = pta[x];  \
	pta[1] = swap;
#endif

#define swap_branchless(pta, swap, x, y, cmp)  \
	x = cmp(pta, pta + 1) > 0;  \
	y = !x;  \
	swap = pta[y];  \
	pta[0] = pta[x];  \
	pta[1] = swap;



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

void cross_merge32(int *dest, int *from, size_t left, size_t right, CMPFUNC *cmp)
{
	int *ptl, *tpl, *ptr, *tpr, *ptd, *tpd;
	size_t loop;
#if !defined __clang__
	size_t x, y;
#endif
	ptl = from;
	ptr = from + left;
	tpl = ptr - 1;
	tpr = tpl + right;

	if (left + 1 >= right && right >= left && left >= 32)
	{
		if (cmp(ptl + 15, ptr) > 0 && cmp(ptl, ptr + 15) <= 0 && cmp(tpl, tpr - 15) > 0 && cmp(tpl - 15, tpr) <= 0)
		{
			parity_merge32(dest, from, left, right, cmp);
			return;
		}
	}
	ptd = dest;
	tpd = dest + left + right - 1;

	while (1)
	{
		if (tpl - ptl > 8)
		{
			ptl8_ptr: if (cmp(ptl + 7, ptr) <= 0)
			{
				memcpy(ptd, ptl, 8 * sizeof(int)); ptd += 8; ptl += 8;

				if (tpl - ptl > 8) {goto ptl8_ptr;} continue;
			}

			tpl8_tpr: if (cmp(tpl - 7, tpr) > 0)
			{
				tpd -= 7; tpl -= 7; memcpy(tpd--, tpl--, 8 * sizeof(int));

				if (tpl - ptl > 8) {goto tpl8_tpr;} continue;
			}
		}

		if (tpr - ptr > 8)
		{
			ptl_ptr8: if (cmp(ptl, ptr + 7) > 0)
			{
				memcpy(ptd, ptr, 8 * sizeof(int)); ptd += 8; ptr += 8;

				if (tpr - ptr > 8) {goto ptl_ptr8;} continue;
			}

			tpl_tpr8: if (cmp(tpl, tpr - 7) <= 0)
			{
				tpd -= 7; tpr -= 7; memcpy(tpd--, tpr--, 8 * sizeof(int));

				if (tpr - ptr > 8) {goto tpl_tpr8;} continue;
			}
		}

		if (tpd - ptd < 16)
		{
			break;
		}

#if !defined cmp && !defined __clang__
		if (left > QUAD_CACHE)
		{
			loop = 8; do
			{
				*ptd++ = cmp(ptl, ptr) <= 0 ? *ptl++ : *ptr++;
				*tpd-- = cmp(tpl, tpr)  > 0 ? *tpl-- : *tpr--;
			}
			while (--loop);
		}
		else
#endif
		{
			loop = 8; do
			{
				head_branchless_merge(ptd, x, ptl, ptr, cmp);
				tail_branchless_merge(tpd, y, tpl, tpr, cmp);
			}
			while (--loop);
		}
	}

	while (ptl <= tpl && ptr <= tpr)
	{
		*ptd++ = cmp(ptl, ptr) <= 0 ? *ptl++ : *ptr++;
	}
	while (ptl <= tpl)
	{
		*ptd++ = *ptl++;
	}
	while (ptr <= tpr)
	{
		*ptd++ = *ptr++;
	}
}

void partial_forward_merge32(int *array, int *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp)
{
	int *ptl, *ptr, *tpl, *tpr;
	size_t x;

	if (nmemb == block)
	{
		return;
	}

	ptr = array + block;
	tpr = array + nmemb - 1;

	if (cmp(ptr - 1, ptr) <= 0)
	{
		return;
	}

	memcpy(swap, array, block * sizeof(int));

	ptl = swap;
	tpl = swap + block - 1;

	while (ptl < tpl - 1 && ptr < tpr - 1)
	{
		ptr2: if (cmp(ptl, ptr + 1) > 0)
		{
			*array++ = *ptr++; *array++ = *ptr++;

			if (ptr < tpr - 1) {goto ptr2;} break;
		}
		if (cmp(ptl + 1, ptr) <= 0)
		{
			*array++ = *ptl++; *array++ = *ptl++;

			if (ptl < tpl - 1) {goto ptl2;} break;
		}

		goto cross_swap;

		ptl2: if (cmp(ptl + 1, ptr) <= 0)
		{
			*array++ = *ptl++; *array++ = *ptl++;

			if (ptl < tpl - 1) {goto ptl2;} break;
		}

		if (cmp(ptl, ptr + 1) > 0)
		{
			*array++ = *ptr++; *array++ = *ptr++;

			if (ptr < tpr - 1) {goto ptr2;} break;
		}

		cross_swap:

		x = cmp(ptl, ptr) <= 0; array[x] = *ptr; ptr += 1; array[!x] = *ptl; ptl += 1; array += 2;
		head_branchless_merge(array, x, ptl, ptr, cmp);
	}

	while (ptl <= tpl && ptr <= tpr)
	{
		*array++ = cmp(ptl, ptr) <= 0 ? *ptl++ : *ptr++;
	}

	while (ptl <= tpl)
	{
		*array++ = *ptl++;
	}
}

void partial_backward_merge32(int *array, int *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp)
{
	int *tpl, *tpa, *tpr;
	size_t right, loop, x;

	if (nmemb == block)
	{
		return;
	}

	tpl = array + block - 1;
	tpa = array + nmemb - 1;

	if (cmp(tpl, tpl + 1) <= 0)
	{
		return;
	}

	right = nmemb - block;

	if (nmemb <= swap_size && right >= 64)
	{
		cross_merge32(swap, array, block, right, cmp);

		memcpy(array, swap, nmemb * sizeof(int));

		return;
	}

	memcpy(swap, array + block, right * sizeof(int));

	tpr = swap + right - 1;

	while (tpl > array + 16 && tpr > swap + 16)
	{
		tpl_tpr16: if (cmp(tpl, tpr - 15) <= 0)
		{
			loop = 16; do *tpa-- = *tpr--; while (--loop);

			if (tpr > swap + 16) {goto tpl_tpr16;} break;
		}

		tpl16_tpr: if (cmp(tpl - 15, tpr) > 0)
		{
			loop = 16; do *tpa-- = *tpl--; while (--loop);
			
			if (tpl > array + 16) {goto tpl16_tpr;} break;
		}
		loop = 8; do
		{
			if (cmp(tpl, tpr - 1) <= 0)
			{
				*tpa-- = *tpr--; *tpa-- = *tpr--;
			}
			else if (cmp(tpl - 1, tpr) > 0)
			{
				*tpa-- = *tpl--; *tpa-- = *tpl--;
			}
			else
			{
				x = cmp(tpl, tpr) <= 0; tpa--; tpa[x] = *tpr; tpr -= 1; tpa[!x] = *tpl; tpl -= 1; tpa--;
				tail_branchless_merge(tpa, x, tpl, tpr, cmp);
			}
		}
		while (--loop);
	}

	while (tpr > swap + 1 && tpl > array + 1)
	{
		tpr2: if (cmp(tpl, tpr - 1) <= 0)
		{
			*tpa-- = *tpr--; *tpa-- = *tpr--;
			
			if (tpr > swap + 1) {goto tpr2;} break;
		}

		if (cmp(tpl - 1, tpr) > 0)
		{
			*tpa-- = *tpl--; *tpa-- = *tpl--;

			if (tpl > array + 1) {goto tpl2;} break;
		}
		goto cross_swap;

		tpl2: if (cmp(tpl - 1, tpr) > 0)
		{
			*tpa-- = *tpl--; *tpa-- = *tpl--;

			if (tpl > array + 1) {goto tpl2;} break;
		}

		if (cmp(tpl, tpr - 1) <= 0)
		{
			*tpa-- = *tpr--; *tpa-- = *tpr--;
			
			if (tpr > swap + 1) {goto tpr2;} break;
		}
		cross_swap:

		x = cmp(tpl, tpr) <= 0; tpa--; tpa[x] = *tpr; tpr -= 1; tpa[!x] = *tpl; tpl -= 1; tpa--;
		tail_branchless_merge(tpa, x, tpl, tpr, cmp);
	}

	while (tpr >= swap && tpl >= array)
	{
		*tpa-- = cmp(tpl, tpr) > 0 ? *tpl-- : *tpr--;
	}

	while (tpr >= swap)
	{
		*tpa-- = *tpr--;
	}
}

size_t quad_swap32(int *array, size_t nmemb, CMPFUNC *cmp)
{
	int tmp, swap[32];
	size_t count;
	int *pta, *pts;
	unsigned char v1, v2, v3, v4, x;
	pta = array;

	count = nmemb / 8;

	while (count--)
	{
		v1 = cmp(pta + 0, pta + 1) > 0;
		v2 = cmp(pta + 2, pta + 3) > 0;
		v3 = cmp(pta + 4, pta + 5) > 0;
		v4 = cmp(pta + 6, pta + 7) > 0;

		switch (v1 + v2 * 2 + v3 * 4 + v4 * 8)
		{
			case 0:
				if (cmp(pta + 1, pta + 2) <= 0 && cmp(pta + 3, pta + 4) <= 0 && cmp(pta + 5, pta + 6) <= 0)
				{
					goto ordered;
				}
				quad_swap_merge32(pta, swap, cmp);
				break;

			case 15:
				if (cmp(pta + 1, pta + 2) > 0 && cmp(pta + 3, pta + 4) > 0 && cmp(pta + 5, pta + 6) > 0)
				{
					pts = pta;
					goto reversed;
				}

			default:
			not_ordered:
				x = !v1; tmp = pta[x]; pta[0] = pta[v1]; pta[1] = tmp; pta += 2;
				x = !v2; tmp = pta[x]; pta[0] = pta[v2]; pta[1] = tmp; pta += 2;
				x = !v3; tmp = pta[x]; pta[0] = pta[v3]; pta[1] = tmp; pta += 2;
				x = !v4; tmp = pta[x]; pta[0] = pta[v4]; pta[1] = tmp; pta -= 6;

				quad_swap_merge32(pta, swap, cmp);
		}
		pta += 8;

		continue;

		ordered:

		pta += 8;

		if (count--)
		{
			if ((v1 = cmp(pta + 0, pta + 1) > 0) | (v2 = cmp(pta + 2, pta + 3) > 0) | (v3 = cmp(pta + 4, pta + 5) > 0) | (v4 = cmp(pta + 6, pta + 7) > 0))
			{
				if (v1 + v2 + v3 + v4 == 4 && cmp(pta + 1, pta + 2) > 0 && cmp(pta + 3, pta + 4) > 0 && cmp(pta + 5, pta + 6) > 0)
				{
					pts = pta;
					goto reversed;
				}
				goto not_ordered;
			}
			if (cmp(pta + 1, pta + 2) <= 0 && cmp(pta + 3, pta + 4) <= 0 && cmp(pta + 5, pta + 6) <= 0)
			{
				goto ordered;
			}
			quad_swap_merge32(pta, swap, cmp);
			pta += 8;
			continue;
		}
		break;

		reversed:

		pta += 8;

		if (count--)
		{
			if ((v1 = cmp(pta + 0, pta + 1) <= 0) | (v2 = cmp(pta + 2, pta + 3) <= 0) | (v3 = cmp(pta + 4, pta + 5) <= 0) | (v4 = cmp(pta + 6, pta + 7) <= 0))
			{
				// not reversed
			}
			else
			{
				if (cmp(pta - 1, pta) > 0 && cmp(pta + 1, pta + 2) > 0 && cmp(pta + 3, pta + 4) > 0 && cmp(pta + 5, pta + 6) > 0)
				{
					goto reversed;
				}
			}
			quad_reversal32(pts, pta - 1);

			if (v1 + v2 + v3 + v4 == 4 && cmp(pta + 1, pta + 2) <= 0 && cmp(pta + 3, pta + 4) <= 0 && cmp(pta + 5, pta + 6) <= 0)
			{
				goto ordered;
			}
			if (v1 + v2 + v3 + v4 == 0 && cmp(pta + 1, pta + 2)  > 0 && cmp(pta + 3, pta + 4)  > 0 && cmp(pta + 5, pta + 6)  > 0)
			{
				pts = pta;
				goto reversed;
			}

			x = !v1; tmp = pta[v1]; pta[0] = pta[x]; pta[1] = tmp; pta += 2;
			x = !v2; tmp = pta[v2]; pta[0] = pta[x]; pta[1] = tmp; pta += 2;
			x = !v3; tmp = pta[v3]; pta[0] = pta[x]; pta[1] = tmp; pta += 2;
			x = !v4; tmp = pta[v4]; pta[0] = pta[x]; pta[1] = tmp; pta -= 6;

			if (cmp(pta + 1, pta + 2) > 0 || cmp(pta + 3, pta + 4) > 0 || cmp(pta + 5, pta + 6) > 0)
			{
				quad_swap_merge32(pta, swap, cmp);
			}
			pta += 8;
			continue;
		}

		switch (nmemb % 8)
		{
			case 7: if (cmp(pta + 5, pta + 6) <= 0) break;
			case 6: if (cmp(pta + 4, pta + 5) <= 0) break;
			case 5: if (cmp(pta + 3, pta + 4) <= 0) break;
			case 4: if (cmp(pta + 2, pta + 3) <= 0) break;
			case 3: if (cmp(pta + 1, pta + 2) <= 0) break;
			case 2: if (cmp(pta + 0, pta + 1) <= 0) break;
			case 1: if (cmp(pta - 1, pta + 0) <= 0) break;
			case 0:
				quad_reversal32(pts, pta + nmemb % 8 - 1);

				if (pts == array)
				{
					return 1;
				}
				goto reverse_end;
		}
		quad_reversal32(pts, pta - 1);
		break;
	}
	tail_swap32(pta, swap, nmemb % 8, cmp);

	reverse_end:

	pta = array;

	for (count = nmemb / 32 ; count-- ; pta += 32)
	{
		if (cmp(pta + 7, pta + 8) <= 0 && cmp(pta + 15, pta + 16) <= 0 && cmp(pta + 23, pta + 24) <= 0)
		{
			continue;
		}
		parity_merge32(swap, pta, 8, 8, cmp);
		parity_merge32(swap + 16, pta + 16, 8, 8, cmp);
		parity_merge32(pta, swap, 16, 16, cmp);
	}

	if (nmemb % 32 > 8)
	{
		tail_merge32(pta, swap, 32, nmemb % 32, 8, cmp);
	}
	return 0;
}

void cross_merge64(long long *dest, long long *from, size_t left, size_t right, CMPFUNC *cmp)
{
	long long *ptl, *tpl, *ptr, *tpr, *ptd, *tpd;
	size_t loop;
#if !defined __clang__
	size_t x, y;
#endif
	ptl = from;
	ptr = from + left;
	tpl = ptr - 1;
	tpr = tpl + right;

	if (left + 1 >= right && right >= left && left >= 32)
	{
		if (cmp(ptl + 15, ptr) > 0 && cmp(ptl, ptr + 15) <= 0 && cmp(tpl, tpr - 15) > 0 && cmp(tpl - 15, tpr) <= 0)
		{
			parity_merge64(dest, from, left, right, cmp);
			return;
		}
	}
	ptd = dest;
	tpd = dest + left + right - 1;

	while (1)
	{
		if (tpl - ptl > 8)
		{
			ptl8_ptr: if (cmp(ptl + 7, ptr) <= 0)
			{
				memcpy(ptd, ptl, 8 * sizeof(long long)); ptd += 8; ptl += 8;

				if (tpl - ptl > 8) {goto ptl8_ptr;} continue;
			}

			tpl8_tpr: if (cmp(tpl - 7, tpr) > 0)
			{
				tpd -= 7; tpl -= 7; memcpy(tpd--, tpl--, 8 * sizeof(long long));

				if (tpl - ptl > 8) {goto tpl8_tpr;} continue;
			}
		}

		if (tpr - ptr > 8)
		{
			ptl_ptr8: if (cmp(ptl, ptr + 7) > 0)
			{
				memcpy(ptd, ptr, 8 * sizeof(long long)); ptd += 8; ptr += 8;

				if (tpr - ptr > 8) {goto ptl_ptr8;} continue;
			}

			tpl_tpr8: if (cmp(tpl, tpr - 7) <= 0)
			{
				tpd -= 7; tpr -= 7; memcpy(tpd--, tpr--, 8 * sizeof(long long));

				if (tpr - ptr > 8) {goto tpl_tpr8;} continue;
			}
		}

		if (tpd - ptd < 16)
		{
			break;
		}

#if !defined cmp && !defined __clang__
		if (left > QUAD_CACHE)
		{
			loop = 8; do
			{
				*ptd++ = cmp(ptl, ptr) <= 0 ? *ptl++ : *ptr++;
				*tpd-- = cmp(tpl, tpr)  > 0 ? *tpl-- : *tpr--;
			}
			while (--loop);
		}
		else
#endif
		{
			loop = 8; do
			{
				head_branchless_merge(ptd, x, ptl, ptr, cmp);
				tail_branchless_merge(tpd, y, tpl, tpr, cmp);
			}
			while (--loop);
		}
	}

	while (ptl <= tpl && ptr <= tpr)
	{
		*ptd++ = cmp(ptl, ptr) <= 0 ? *ptl++ : *ptr++;
	}
	while (ptl <= tpl)
	{
		*ptd++ = *ptl++;
	}
	while (ptr <= tpr)
	{
		*ptd++ = *ptr++;
	}
}

void partial_forward_merge64(long long *array, long long *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp)
{
	long long *ptl, *ptr, *tpl, *tpr;
	size_t x;

	if (nmemb == block)
	{
		return;
	}

	ptr = array + block;
	tpr = array + nmemb - 1;

	if (cmp(ptr - 1, ptr) <= 0)
	{
		return;
	}

	memcpy(swap, array, block * sizeof(long long));

	ptl = swap;
	tpl = swap + block - 1;

	while (ptl < tpl - 1 && ptr < tpr - 1)
	{
		ptr2: if (cmp(ptl, ptr + 1) > 0)
		{
			*array++ = *ptr++; *array++ = *ptr++;

			if (ptr < tpr - 1) {goto ptr2;} break;
		}
		if (cmp(ptl + 1, ptr) <= 0)
		{
			*array++ = *ptl++; *array++ = *ptl++;

			if (ptl < tpl - 1) {goto ptl2;} break;
		}

		goto cross_swap;

		ptl2: if (cmp(ptl + 1, ptr) <= 0)
		{
			*array++ = *ptl++; *array++ = *ptl++;

			if (ptl < tpl - 1) {goto ptl2;} break;
		}

		if (cmp(ptl, ptr + 1) > 0)
		{
			*array++ = *ptr++; *array++ = *ptr++;

			if (ptr < tpr - 1) {goto ptr2;} break;
		}

		cross_swap:

		x = cmp(ptl, ptr) <= 0; array[x] = *ptr; ptr += 1; array[!x] = *ptl; ptl += 1; array += 2;
		head_branchless_merge(array, x, ptl, ptr, cmp);
	}

	while (ptl <= tpl && ptr <= tpr)
	{
		*array++ = cmp(ptl, ptr) <= 0 ? *ptl++ : *ptr++;
	}

	while (ptl <= tpl)
	{
		*array++ = *ptl++;
	}
}

void partial_backward_merge64(long long *array, long long *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp)
{
	long long *tpl, *tpa, *tpr;
	size_t right, loop, x;

	if (nmemb == block)
	{
		return;
	}

	tpl = array + block - 1;
	tpa = array + nmemb - 1;

	if (cmp(tpl, tpl + 1) <= 0)
	{
		return;
	}

	right = nmemb - block;

	if (nmemb <= swap_size && right >= 64)
	{
		cross_merge64(swap, array, block, right, cmp);

		memcpy(array, swap, nmemb * sizeof(long long));

		return;
	}

	memcpy(swap, array + block, right * sizeof(long long));

	tpr = swap + right - 1;

	while (tpl > array + 16 && tpr > swap + 16)
	{
		tpl_tpr16: if (cmp(tpl, tpr - 15) <= 0)
		{
			loop = 16; do *tpa-- = *tpr--; while (--loop);

			if (tpr > swap + 16) {goto tpl_tpr16;} break;
		}

		tpl16_tpr: if (cmp(tpl - 15, tpr) > 0)
		{
			loop = 16; do *tpa-- = *tpl--; while (--loop);
			
			if (tpl > array + 16) {goto tpl16_tpr;} break;
		}
		loop = 8; do
		{
			if (cmp(tpl, tpr - 1) <= 0)
			{
				*tpa-- = *tpr--; *tpa-- = *tpr--;
			}
			else if (cmp(tpl - 1, tpr) > 0)
			{
				*tpa-- = *tpl--; *tpa-- = *tpl--;
			}
			else
			{
				x = cmp(tpl, tpr) <= 0; tpa--; tpa[x] = *tpr; tpr -= 1; tpa[!x] = *tpl; tpl -= 1; tpa--;
				tail_branchless_merge(tpa, x, tpl, tpr, cmp);
			}
		}
		while (--loop);
	}

	while (tpr > swap + 1 && tpl > array + 1)
	{
		tpr2: if (cmp(tpl, tpr - 1) <= 0)
		{
			*tpa-- = *tpr--; *tpa-- = *tpr--;
			
			if (tpr > swap + 1) {goto tpr2;} break;
		}

		if (cmp(tpl - 1, tpr) > 0)
		{
			*tpa-- = *tpl--; *tpa-- = *tpl--;

			if (tpl > array + 1) {goto tpl2;} break;
		}
		goto cross_swap;

		tpl2: if (cmp(tpl - 1, tpr) > 0)
		{
			*tpa-- = *tpl--; *tpa-- = *tpl--;

			if (tpl > array + 1) {goto tpl2;} break;
		}

		if (cmp(tpl, tpr - 1) <= 0)
		{
			*tpa-- = *tpr--; *tpa-- = *tpr--;
			
			if (tpr > swap + 1) {goto tpr2;} break;
		}
		cross_swap:

		x = cmp(tpl, tpr) <= 0; tpa--; tpa[x] = *tpr; tpr -= 1; tpa[!x] = *tpl; tpl -= 1; tpa--;
		tail_branchless_merge(tpa, x, tpl, tpr, cmp);
	}

	while (tpr >= swap && tpl >= array)
	{
		*tpa-- = cmp(tpl, tpr) > 0 ? *tpl-- : *tpr--;
	}

	while (tpr >= swap)
	{
		*tpa-- = *tpr--;
	}
}

size_t quad_swap64(long long *array, size_t nmemb, CMPFUNC *cmp)
{
	long long tmp, swap[32];
	size_t count;
	long long *pta, *pts;
	unsigned char v1, v2, v3, v4, x;
	pta = array;

	count = nmemb / 8;

	while (count--)
	{
		v1 = cmp(pta + 0, pta + 1) > 0;
		v2 = cmp(pta + 2, pta + 3) > 0;
		v3 = cmp(pta + 4, pta + 5) > 0;
		v4 = cmp(pta + 6, pta + 7) > 0;

		switch (v1 + v2 * 2 + v3 * 4 + v4 * 8)
		{
			case 0:
				if (cmp(pta + 1, pta + 2) <= 0 && cmp(pta + 3, pta + 4) <= 0 && cmp(pta + 5, pta + 6) <= 0)
				{
					goto ordered;
				}
				quad_swap_merge64(pta, swap, cmp);
				break;

			case 15:
				if (cmp(pta + 1, pta + 2) > 0 && cmp(pta + 3, pta + 4) > 0 && cmp(pta + 5, pta + 6) > 0)
				{
					pts = pta;
					goto reversed;
				}

			default:
			not_ordered:
				x = !v1; tmp = pta[x]; pta[0] = pta[v1]; pta[1] = tmp; pta += 2;
				x = !v2; tmp = pta[x]; pta[0] = pta[v2]; pta[1] = tmp; pta += 2;
				x = !v3; tmp = pta[x]; pta[0] = pta[v3]; pta[1] = tmp; pta += 2;
				x = !v4; tmp = pta[x]; pta[0] = pta[v4]; pta[1] = tmp; pta -= 6;

				quad_swap_merge64(pta, swap, cmp);
		}
		pta += 8;

		continue;

		ordered:

		pta += 8;

		if (count--)
		{
			if ((v1 = cmp(pta + 0, pta + 1) > 0) | (v2 = cmp(pta + 2, pta + 3) > 0) | (v3 = cmp(pta + 4, pta + 5) > 0) | (v4 = cmp(pta + 6, pta + 7) > 0))
			{
				if (v1 + v2 + v3 + v4 == 4 && cmp(pta + 1, pta + 2) > 0 && cmp(pta + 3, pta + 4) > 0 && cmp(pta + 5, pta + 6) > 0)
				{
					pts = pta;
					goto reversed;
				}
				goto not_ordered;
			}
			if (cmp(pta + 1, pta + 2) <= 0 && cmp(pta + 3, pta + 4) <= 0 && cmp(pta + 5, pta + 6) <= 0)
			{
				goto ordered;
			}
			quad_swap_merge64(pta, swap, cmp);
			pta += 8;
			continue;
		}
		break;

		reversed:

		pta += 8;

		if (count--)
		{
			if ((v1 = cmp(pta + 0, pta + 1) <= 0) | (v2 = cmp(pta + 2, pta + 3) <= 0) | (v3 = cmp(pta + 4, pta + 5) <= 0) | (v4 = cmp(pta + 6, pta + 7) <= 0))
			{
				// not reversed
			}
			else
			{
				if (cmp(pta - 1, pta) > 0 && cmp(pta + 1, pta + 2) > 0 && cmp(pta + 3, pta + 4) > 0 && cmp(pta + 5, pta + 6) > 0)
				{
					goto reversed;
				}
			}
			quad_reversal64(pts, pta - 1);

			if (v1 + v2 + v3 + v4 == 4 && cmp(pta + 1, pta + 2) <= 0 && cmp(pta + 3, pta + 4) <= 0 && cmp(pta + 5, pta + 6) <= 0)
			{
				goto ordered;
			}
			if (v1 + v2 + v3 + v4 == 0 && cmp(pta + 1, pta + 2)  > 0 && cmp(pta + 3, pta + 4)  > 0 && cmp(pta + 5, pta + 6)  > 0)
			{
				pts = pta;
				goto reversed;
			}

			x = !v1; tmp = pta[v1]; pta[0] = pta[x]; pta[1] = tmp; pta += 2;
			x = !v2; tmp = pta[v2]; pta[0] = pta[x]; pta[1] = tmp; pta += 2;
			x = !v3; tmp = pta[v3]; pta[0] = pta[x]; pta[1] = tmp; pta += 2;
			x = !v4; tmp = pta[v4]; pta[0] = pta[x]; pta[1] = tmp; pta -= 6;

			if (cmp(pta + 1, pta + 2) > 0 || cmp(pta + 3, pta + 4) > 0 || cmp(pta + 5, pta + 6) > 0)
			{
				quad_swap_merge64(pta, swap, cmp);
			}
			pta += 8;
			continue;
		}

		switch (nmemb % 8)
		{
			case 7: if (cmp(pta + 5, pta + 6) <= 0) break;
			case 6: if (cmp(pta + 4, pta + 5) <= 0) break;
			case 5: if (cmp(pta + 3, pta + 4) <= 0) break;
			case 4: if (cmp(pta + 2, pta + 3) <= 0) break;
			case 3: if (cmp(pta + 1, pta + 2) <= 0) break;
			case 2: if (cmp(pta + 0, pta + 1) <= 0) break;
			case 1: if (cmp(pta - 1, pta + 0) <= 0) break;
			case 0:
				quad_reversal64(pts, pta + nmemb % 8 - 1);

				if (pts == array)
				{
					return 1;
				}
				goto reverse_end;
		}
		quad_reversal64(pts, pta - 1);
		break;
	}
	tail_swap64(pta, swap, nmemb % 8, cmp);

	reverse_end:

	pta = array;

	for (count = nmemb / 32 ; count-- ; pta += 32)
	{
		if (cmp(pta + 7, pta + 8) <= 0 && cmp(pta + 15, pta + 16) <= 0 && cmp(pta + 23, pta + 24) <= 0)
		{
			continue;
		}
		parity_merge64(swap, pta, 8, 8, cmp);
		parity_merge64(swap + 16, pta + 16, 8, 8, cmp);
		parity_merge64(pta, swap, 16, 16, cmp);
	}

	if (nmemb % 32 > 8)
	{
		tail_merge64(pta, swap, 32, nmemb % 32, 8, cmp);
	}
	return 0;
}