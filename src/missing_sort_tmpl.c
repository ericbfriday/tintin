void FUNC(partial_forward_merge)(VAR *array, VAR *swap, size_t swap_size, size_t nmemb, size_t block, CMPFUNC *cmp)
{
	VAR *ptl, *ptr, *tpl, *tpr;
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

	memcpy(swap, array, block * sizeof(VAR));

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
size_t FUNC(quad_swap)(VAR *array, size_t nmemb, CMPFUNC *cmp)
{
	VAR tmp, swap[32];
	size_t count;
	VAR *pta, *pts;
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
				FUNC(quad_swap_merge)(pta, swap, cmp);
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

				FUNC(quad_swap_merge)(pta, swap, cmp);
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
			FUNC(quad_swap_merge)(pta, swap, cmp);
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
			FUNC(quad_reversal)(pts, pta - 1);

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
				FUNC(quad_swap_merge)(pta, swap, cmp);
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
				FUNC(quad_reversal)(pts, pta + nmemb % 8 - 1);

				if (pts == array)
				{
					return 1;
				}
				goto reverse_end;
		}
		FUNC(quad_reversal)(pts, pta - 1);
		break;
	}
	FUNC(tail_swap)(pta, swap, nmemb % 8, cmp);

	reverse_end:

	pta = array;

	for (count = nmemb / 32 ; count-- ; pta += 32)
	{
		if (cmp(pta + 7, pta + 8) <= 0 && cmp(pta + 15, pta + 16) <= 0 && cmp(pta + 23, pta + 24) <= 0)
		{
			continue;
		}
		FUNC(parity_merge)(swap, pta, 8, 8, cmp);
		FUNC(parity_merge)(swap + 16, pta + 16, 8, 8, cmp);
		FUNC(parity_merge)(pta, swap, 16, 16, cmp);
	}

	if (nmemb % 32 > 8)
	{
		FUNC(tail_merge)(pta, swap, 32, nmemb % 32, 8, cmp);
	}
	return 0;
}
