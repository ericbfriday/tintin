# Port Manifest: upstream 2.02.61 → 2.02.62 (semantic delta for the Zig tree)

Delta base: `git diff 010881e..a4710ab -- src/` (010881e = 2.02.61 fork point, a4710ab = 2.02.62).
Header-churn filter applied throughout: the ~15-line GPL-3 boilerplate was replaced by
`SPDX-License-Identifier: LGPL-2.1-or-later` + copyright-year bump in every file. That churn is
excluded from all counts below.

## 1. Summary

- **51 files with real (non-header) changes** in `src/`, plus 1 new file (`src/validate.h`, a
  z64 data blob) and 1 effectively-new file (`src/mccp.c`, extracted from telopt_client.c).
- **~6,600 real changed diff lines** (adds+dels, license block excluded). Largest: regex.c 998,
  telopt_client.c 494, tables.c 485, telopt_server.c 455, nest.c 426, mccp.c 390, parse.c 371,
  tintin.h 279, misc.c 261, data.c 181, help.c 175, vt102.c 174, line.c 169.
- **Header-only (license/copyright churn, NOTHING to port):** base.c, config.c, daemon.c, dict.c,
  dict.h, edit.c, memory.c, sort.c, terminal.c, utf8.c, quadsort.h (license block only — the
  quadsort code itself is intact and still called by sort.c), Makefile.in (license + `-flto` →
  `-flto=auto` only).
- **Build-system-only:** configure (regenerated), configure.in, configure.ac (new autoconf source),
  config.h.in (see §4), `.github/workflows/build.yml` (new CI), COPYING deleted / LICENSE added
  (GPL-3 → LGPL-2.1-or-later relicense — repo-level decision, not a code port).
- Thematic split: (a) PCRE2 shared match_data + JIT stack; (b) 64-bit character-mask pre-filter
  engine for triggers (`struct ttre_data`, `listnode.mask`, `mask_table`); (c) MCCP4 (zstd)
  + mccp.c extraction + telopt rework; (d) `#line ignore` list masks + batched log flushing;
  (e) `skip_arg_*` parser family; (f) vt102 fast-paths (Jay Howard perf PRs); (g) four
  leak/OOB fixes; (h) data/table/help updates; (i) broad misc-fix batch.

## 2. Change chunks

### Chunk 1 — ABI foundation: tintin.h / telnet.h struct + flag + constant changes
**Complexity: L (ABI-critical).** Zig: `src/tintin.h` (shared contract) **and every frozen
translate-c struct copy** (`tintin_c.zig`, `missing_phase*.zig`, raw modules embedding
`struct tintin_data`/`struct session`); `src/main.zig` (gtd definition).

Upstream commits (all Scandum "2.02.62"): b591329, 26c3475, e5c42f0, f9ae6a2, 01319df, aa292b4,
aed554a, 72ab809, ed5f216, c42230a (tintin.h); b591329 (telnet.h). Details in §3 — this chunk is
the prerequisite for everything else. Also: `CLIENT_VERSION "2.02.62b"`, new `CLIENT_COPYRIGHT`,
`CLIENT_LICENSE`, `SPC_50`/`SPC_500`; macro renames `SCROLL()`→`IS_SCROLL()`,
`VERBATIM()`→`IS_VERBATIM()` (tokenize.c, split.c callers), new `IS_CTRL(c)`, `IS_IGNORED(listtype)`.

### Chunk 2 — PCRE2: one shared match_data + JIT stack for all matches
**Complexity: M.** Zig: `src/regex.zig`, `src/main.zig` (init_tintin), `src/missing_regex.zig` (check).

- `07969f5` "Reuse a single PCRE2 match_data across matches" + Scandum follow-ups (01319df, 26c3475):
  `init_tintin()` now creates `gtd->match_data = pcre2_match_data_create(101)`,
  `gtd->jit_stack = pcre2_jit_stack_create(16K, 1M)`, `gtd->match_context` + `pcre2_jit_stack_assign`.
  Every `pcre2_match(...)` call passes `gtd->match_data, gtd->match_context` instead of a per-pattern
  `pcre2_match_data_create_from_pattern`; ovector read via `pcre2_get_ovector_pointer(gtd->match_data)`
  then memcpy into `gtd->match`.
- Rename wave (affects tintin.h prototypes and all callers):
  `regexp_compare` → `tintin_regex_compare` (bool-only match); old `tintin_regexp` split into
  `tintin_regex_compare` + `tintin_regex_match` (captures into vars/cmds); `regexp_compile` deleted
  (folded into `tintin_regex_compile`); `tintin_regexp_compile` → `tintin_regex_compile`;
  `tintin_regexp_check` → `tintin_regex_check`; new `tintin_regex_free(node)` (frees node->regex).
- Risk: any of these names referenced from `missing_variadics.c`/raw translate-c callers must be
  renamed in lockstep or the link breaks. `pcre2_match_data_create(101)` fixed capture budget —
  patterns with >101 groups would break (upstream accepted).

### Chunk 3 — Trigger mask pre-filter engine (`ttre_data`)
**Complexity: L.** Zig: `src/regex.zig`, `src/trigger.zig`, `src/data.zig`, `src/tables.zig`
(`mask_table`), `src/cursor.zig`, `src/parse.zig`, `src/text.zig` (check_one_line_multi).

Upstream commits: 26c3475 (regex.c +303, tintin.h, tables.c), c42230a (tables/utils/variable/nest),
ed5f216, plus 07969f5 interaction.

- New `struct ttre_data { char *raw; unsigned raw_len; long long raw_mask; char *txt; unsigned
  txt_len; long long txt_mask; }`; built once per line by `init_mask(&ttre, raw, txt)` using
  `string_mask()` (raw byte OR of `mask_table[256]`, new table in tables.c; needs BV42–BV64).
- `struct listnode` gains `long long mask`; set in `create_node_list()` for regex lists (via
  `tintin_string_mask`, which skips `{...}` groups / escapes / caseless folding) and for
  LIST_BUTTON/CLASS/COMMAND/HISTORY via plain `string_mask`.
- `check_one_regexp()` → `check_one_regex(ses, node, ttre, txt, raw, comp_option, flag)`:
  returns 0 before touching PCRE when `HAS_BIT(ttre_mask, node->mask) != node->mask`; leading `~`
  on a pattern means match the *raw* (unstripped) line and test `raw_mask`.
- All `check_all_{actions,actions_multi,gags,highlights,prompts,substitutions,substitutions_multi}`
  signatures change to take `struct ttre_data ttre` by value (trigger.zig).
- New `tintin_match_data(ses, exp)` — pre-scans pattern filling `gtd->args[]` (used by
  `tintin_regex_match` for %N mapping; replaces part of old tintin_regexp logic).
- `nsearch_list()` (data.c) short-circuits on `text_mask != node->mask` before strcmp.
- `cursor_history_next/prev` (cursor.c) build a temp regex node via new
  `create_regex_node()`/`delete_regex_node()` (data.c, sets `NODE_FLAG_CUSTOM`) and mask-filter
  history before pcre2_match.
- Risk: `struct ttre_data` passed **by value** across the C ABI — the C definition in tintin.h and
  the Zig translate must agree (24+8=32 bytes: 2 ptrs + 2 uints (padded) + 2 long longs). New
  `create_regex_node`/`delete_regex_node`/`delete_node_with_wild(…, char *command)` prototypes.

### Chunk 4 — MCCP4 (zstd) + mccp.c extraction + telopt rework
**Complexity: L.** Zig: new content in `src/mccp.zig` (file exists; was thin), `src/telopt_client.zig`,
`src/telopt_server.zig`, `src/telnet.h`-driven constants, `src/session.zig` (cleanup/dispose),
`src/port.zig`, `src/msdp.zig`, `src/tables.zig` (telopt_table), `src/build.zig` (link zstd).

- `b591329`: created `src/mccp.c` — moved all client-side MCCP2/MCCP3 handlers out of
  telopt_client.c, unified to `(ses, cplen, cpsrc)` signatures directly callable from
  `iac_client_table`; **added MCCP4 = zstd** (`TELOPT_MCCP4 88`, `client_recv_will_mccp4`,
  `client_send_dont_mccp4`, `client_init_mccp4`, `client_end_mccp4`, `client_write_compressed`
  moved here). ZSTD decompress loop (`ZSTD_decompressStream`, grow `gtd->mccp_buf`, realloc-doubling)
  lives in `client_translate_telopts` under `#ifdef HAVE_ZSTD_H`.
- `26c3475`: server side — `process_do_mccp4`/`process_sb_mccp4`, `write_mccp4`, `end_mccp4`,
  `unannounce_support`; MSDP per-connection init moved out of telopt_server.c into new
  `init_msdp_data(ses, buddy)` / `uninit_msdp_data(buddy)` in msdp.c; `debug_telopts`/`telopt_debug`
  consolidated into `server_telopt_debug` + new variadic `client_telopt_debug(ses, fmt, ...)`.
- `a45b10b`/`1ddbd40`: telopt_client cleanups — `client_skip_sb` hoisted, iac table adjustments.
- telopt_client.c hardening: `memcpy`→`memmove` for read_buf append; MCCP already-enabled guards;
  ESC handling lifted out of `default:` case; prompt EOL fix now also fires on `TELOPT_FLAG_ECHO`;
  MSDP and GMCP subneg parsers get `pto - ptv < BUFFER_SIZE - 5000` bounds (overflow fix);
  GMCP JSON unescape handles `\/` (emit `/`) and `\\` correctly, guards `nest--` at 0
  (`30f72ec` PR #298 "allow escaped '/'").
- tables.c telopt_table: entry 88 → `"MCCP4"` (TEL_Y when HAVE_ZSTD_H, else TEL_N).
- port.c: `port_socket_write` branches to `write_mccp4`; `close_port` calls `end_mccp4` +
  `uninit_msdp_data`, frees `proxyip`/`ttype`; `port_data.proxy` renamed `proxyip`.
- session.c cleanup/dispose: `client_end_mccp4`, mccp4 in status string; dispose order changed
  (kill_list all lists BEFORE delete_map — fixes double-free of map search action nodes).
- Risk: **conditional struct fields** (`#ifdef HAVE_ZSTD_H`) — build.zig must define HAVE_ZSTD_H for
  both C and Zig translation units or neither; the struct-offset audit must run in the chosen config.
  `client_telopt_debug` is a new C-ABI variadic → add to variadics bridge if Zig callers need it.

### Chunk 5 — `#line ignore` list masks + batched log/file flushing
**Complexity: M.** Zig: `src/line.zig`, `src/log.zig`, `src/update_a.zig`, `src/main.zig`,
`tintin.h` flags; touches `src/text.zig`, `src/event.zig`, `src/substitute.zig` (IS_IGNORED callers).

- Upstream e5c42f0/ed5f216/26c3475/c42230a: `#line ignore {cmd}` now optionally takes list names
  (`#line ignore {action,event} {cmd}`); pushes a per-list mask onto new
  `gtd->ignore_flags[STACK_SIZE]` (the big new struct tintin_data array); checked everywhere via
  new macro `IS_IGNORED(listtype)` replacing bare `gtd->level->ignore` tests (event.c
  `check_all_events` also gains an early-out when the session has no events; `if (ses && ses->list[LIST_EVENT]->used == 0) return 0`).
- Log flushing is batched: `logit()` only `fflush`es with `LOG_FLAG_FLUSH`; `LOG_FLAG_UPDATE` sets
  `TINTIN_FLAG_FILEUPDATE`/`SES_FLAG_FILEUPDATE`; new `update_files()` (update.c, called from
  `update_sessions()` when the gtd flag is set) flushes log + line_file once per pulse.
  New flags: `LOG_FLAG_FLUSH BV10`, `LOG_FLAG_UPDATE BV11`, `SES_FLAG_FILEUPDATE BV16`,
  `TINTIN_FLAG_FILEUPDATE BV18`, `SUB_LOG BV13` (line_log marks log-format substitution).
- `#line log`/`#line logverbatim` rewrite the line_file switch-in logic (close previous line_file,
  track `log->line_time/line_name`).
- Risk: `update_files` belongs in `src/update_a.zig` (that's where update.c landed; update_b.zig is
  a translate-c system-header shim, not update.c's second half).

### Chunk 6 — Parser: `skip_arg_*` family, command suggestions, detect_prompt move
**Complexity: M.** Zig: `src/parse.zig`, `src/tables.zig`, `src/net.zig`, `src/help.zig`.

- `26c3475`: new non-copying argument skippers `skip_arg_all(ses, string, verbatim)`,
  `skip_arg_in_braces(ses, string, flag)`, `skip_arg_with_spaces`, `skip_arg_stop_spaces`
  (parse.c +230 lines); `cnt_arg_all` uses `skip_arg_in_braces` (drops a BUFFER_SIZE stack buffer);
  used by chunk 3's `tintin_match_data`/`tintin_string_mask`.
- Unknown-command errors now driven by new `suggestion_table[]` (tables.c: connect→session/run,
  exit/quit/disconnect→end/zap, forall→foreach, load→read, say→showme/echo, sleep/wait→delay,
  tls→ssl, trigger→action/info) — replaces hardcoded if-chains in `parse_tintin_command`.
- `detect_prompt()` moved net.c → parse.c, rewritten around `init_mask` + `check_one_regex`
  (no longer mutates its input; old copy deleted from net.c).
- `readmud()` (net.c): `linebuf` is now `str_alloc_stack(STRING_SIZE)` instead of a 200 KB stack array.

### Chunk 7 — vt102 / text perf fast-paths
**Complexity: M.** Zig: `src/vt102_a.zig` (skip/strip/get_width), `src/vt102_b.zig`
(interpret/catch), `src/text.zig`, `src/buffer.zig`, `src/net.zig`, `src/log.zig`.

Jay Howard commits: 63c4ec2, 27bb2d5 + 7598404, a992ce9, 845164f, 7cf8fb6, a7616f8; plus Scandum's
own vt102 rework in f9ae6a2/26c3475 (new `skip_all_vt102_codes()` + `skip_all_vt102_codes_non_graph()`).

- Hot-call-site guards: `skip = (unsigned char)*pti < 32 || *pti == 127 ? skip_vt102_codes(pti) : 0`
  in strip_vt102_codes, strip_vt102_strstr, strip_vt102_strlen, word_wrap, word_wrap_split
  (text.c), add_line_buffer (buffer.c).
- `get_vt102_width`: early-return 1/1 for printable ASCII (a992ce9 + 845164f).
- `interpret_vt102_codes`: per-call scratch buffer dropped (63c4ec2); skip_vt102_codes evaluated
  once per escape sequence (27bb2d5/7598404; log.c counterpart too).
- `readmud`/process_one_line (net.c, a7616f8 + Scandum): the received line is only
  strip_vt102_codes'd when something actually reads the strip result (events for
  RECEIVED LINE/PROMPT now fire lazily when `prompt || HAS_BIT(gtd->event_flags,
  EVENT_FLAG_OUTPUT|EVENT_FLAG_CATCH)`); `gtd->mud_output_line` tracks current line for #line log.
- add_line_buffer (buffer.c): printable-char fast path; `SCROLL(ses)` → `IS_SCROLL(ses)`.
- text.c: new `puts_stdout(row, col, str, prompt)` (fputs/puts + optional detach_sock writev +
  TINTIN_FLAG_DISPLAYUPDATE) replaces many `print_stdout(0,0,"%s"...)` calls in net/text/split/
  draw/screen/buffer/input (≈24 call sites).

### Chunk 8 — Memory-leak / OOB fixes (small, independently verifiable)
**Complexity: S.** Zig: `src/mapper.zig`, `src/history.zig`, `src/scan.zig`, `src/variable.zig`.

- `f191f80` mapper.c `delete_map`: free `search->arg`, `search->exit_list`, `search->id` before
  `free(ses->map->search)`.
- `58bb67e` history.c `history_get`: error out on empty history list (was OOB read).
- `816df7c` scan.c `scan_json`: `free(src)` on short read error path.
- `fe09096` variable.c `basetostring`/`basetostringz`: `free(buf)` before return.
Also related Scandum fixes worth folding in: files.c read_file error paths now `goto end` (single
free path), session.c dispose order (see chunk 4), telopt MSDP/GMCP bounds checks (chunk 4).

### Chunk 9 — Tables / help / banner / validate data updates
**Complexity: M (mostly data).** Zig: `src/tables.zig`, `src/help.zig`, `src/banner.zig`,
`src/misc.zig` (tt_gui string + do_test), optionally a new data file for `tt_valid`.

- c42230a tables.c (+455): new `mask_table[256]` (chunk 3), new `suggestion_type` +
  `suggestion_table[]` (chunk 6), new `color_table_alpha[]`, big color_table additions (light
  black, dark black, bold, faint, dim, italic, un-italic/underscore/blink/reverse, b azure/black/
  green …), telopt_table MCCP4 (chunk 4), event_table entries + new `int len` field +
  `bsearch_event_table()` binary search, `command_table[]` now `extern`.
- c9762ef help.c (+130 net): text-only edits to help_table strings (semicolon semantics, delay
  naming, draw box example, etc.) — port by re-translating help_table data.
- `ef4b523` + c42230a banner.c: Carrion Fields banner refreshed/re-enabled (banner data +
  banner_init gating tweaks).
- ad56884 + bffd8e4: new `src/validate.h` (`char *tt_valid = "<z64 blob>"`) + `validate()` in
  main.c (checks command_table sort order) + do_test extensions (mask benchmark, GMCP self-tests
  via `test_gmcp`, z64 round-trip self-check reading validate.h). Porting validate.h is OPTIONAL
  (test scaffolding); `validate()` is 10 lines.
- misc.c do_send rework (bffd8e4/26c3475): #send no longer takes format args — substitutes
  SUB_VAR|SUB_FUN first, warns on second argument, writes with SUB_ESC|SUB_EOL;
  command_table: `send` and `variable` arg-count 1→2.

### Chunk 10 — Misc fixes batch (mop-up)
**Complexity: M (many small).** Zig: files listed per item.

- event.c: `init_events()` (fills `event_table[].len`, checks sort) called from init_tintin
  (replaces inline loop in main.c init); `do_event` listing simplified (uses table level, no
  per-node root scan).
- nest.c: `get_nest_size*` family simplified (~150 lines removed, `get_nest_size_index` deleted);
  **`set_nest_node(root, var, val)` and `add_nest_node(root, var, val)` are NO LONGER VARIADIC**
  (the `_ses` variants stay variadic). Mechanical caller updates drop `"%s"`: variable.c, list.c,
  tokenize.c, path.c, class.c, data.c, nest.c internals.
- chat.c (a45b10b): `close_chat()` now returns `struct chat_data *` (next buddy) — all callers in
  chat.c/update loops updated; `chat_name_change` returns buddy; ~60 lines of dead
  threaded_chat_call code removed.
- class.c: new `destroy_class()` (= clear_class + close + CLASS DESTROYED events);
  clear_class prototype commented out of tintin.h.
- show.c: new variadic `show_critical(ses, fmt, ...)` (REFORMAT-aware, always prints).
- utils.c: `ntos()` ring 10→16 slots; new `format(fmt, ...)` helper.
- net.c: TCP keepalive tuning in connect_mud (TCP_KEEPIDLE 300 / INTVL 10 / CNT 5).
- main.c: `main()` ports RLIMIT_STACK raise (`RLIMIT_SIZE 67092480`, getrlimit/setrlimit) and
  `setvbuf(stdout, NULL, _IOFBF, 16K)` — needed because STRING_SIZE/BUFFER_SIZE doubling inflates
  stack frames; `arg` heap-allocated.
- ssl.c: static `ssl_cred`→`global_ssl_cred`, gnutls_init error check, cert-load cleanups.
- input.c: OSC macro dispatch null-terminates `gtd->macro_buf` + #INFO COMMAND OSC output.
- debug.c: push_call stack >100 warning now throttled (1/hour) and dumps first 20 frames.
- math.c: `:` time-operator deprecation warning in is_math.
- substitute.c: local var rename buffer→out (no semantic change) + SUB_LOG handling (chunk 5).
- system.c: fflush(stdout) in do_system. string.c: brace-style only. 8394a85: text.c one-liner.
- gui.h (8 lines, embedded tt_gui script): `input_update` alias fixed to copy `$tab[0]` into
  `$reg` before #replace (avoids corrupting tab[0]) and strips backslashes — port into the
  `tt_gui` string in `src/misc.zig`.
- command.c: init_commands no longer exits on unsorted table (validate() took over); `do_un`
  stub commented out.

## 3. tintin.h delta (ABI-critical)

Our tree: `zig_abi_pad_tintin[8]` sits immediately after `old_terminal` in `struct tintin_data`
(src/tintin.h:1166-1169); `zig_abi_pad_session[8]` immediately after `cur_terminal` in
`struct session` (src/tintin.h:1228-1230). Upstream inserts fields exactly at those points, so
every downstream offset shifts — the pad must stay adjacent to the termios and the whole struct
must be mirrored identically in the C header and every frozen Zig translate, then the offsetof
audit re-run.

### struct tintin_data
| Change | Where | Notes |
|---|---|---|
| `+ pcre2_match_data *match_data` | **immediately after `old_terminal`** (before detach_file) | exactly at our pad location — insert pad-relative |
| `+ pcre2_match_context *match_context` | same | |
| `+ pcre2_jit_stack *jit_stack` | same | |
| `char tintin_char/verbatim_char/repeat_char` **removed** | were right after `script_index` | 4 bytes |
| `+ int ignore_flags[STACK_SIZE]` | same spot (after `script_index`) | 1000 ints = **+4000 bytes**, mid-struct |
| tintin_char/verbatim_char/repeat_char **re-added** | at END, after `color_reset` | |
| `macro_buf[BUFFER_SIZE]` | mid-struct | BUFFER_SIZE 50000→**100000** (+50000 bytes, shifts everything after) |
| `color_reset[COLOR_SIZE]` | near end | COLOR_SIZE 50→**48** |

### struct session
| Change | Where | Notes |
|---|---|---|
| `+ ZSTD_DStream *mccp4` | after `mccp3`, **before `ssl`/`cur_terminal`** | `#ifdef HAVE_ZSTD_H` — shifts cur_terminal itself |
| `+ unsigned int mccp4_in` / `+ unsigned int mccp4_out` | same | |
| `unsigned short rkey` → `unsigned int rkey` | near tail (after `rand`, before `proxy`) | tail only, size +4/8 |
| `// char more_output[BUFFER_SIZE]` comment | removed | cosmetic |

### other structs
- `struct listnode`: **`+ long long mask`** after `int flags`, before the regex/val union (mid-struct).
- `struct port_data`: `char *proxy` → **`char *proxyip`** (rename, same slot); `+ ZSTD_CStream
  *mccp4` + `unsigned int mccp4_in/mccp4_out` after `mccp3` (mid-struct, `#ifdef HAVE_ZSTD_H`);
  `telbuf[BUFFER_SIZE]`/`inbuf[BUFFER_SIZE]` grow with BUFFER_SIZE.
- `struct map_data`: `unsigned short display_stamp` moved from before `nofollow` to after
  `legend_raw`; `legend[LEGEND_MAX][LEGEND_SIZE]` + `legend_raw[...]` shrink (LEGEND_SIZE 50→48).
- `struct room_data`: `short terrain_flags` + `int terrain_index` moved from after `z` to before
  `flags` (reorder changes offsets of flags/w/x/y/z).
- `struct search_data`: `unsigned short stamp` moved lower; `int exit_size` → `unsigned short
  exit_size` (retyped + moved).
- `struct event_type`: **`+ int len`** after `int level`.
- **NEW** `struct ttre_data` (passed by value in check_one_regex / check_all_* — ABI-relevant).
- **NEW** `struct suggestion_type { name, sug1, sug2, sug3 }`.
- `struct split_data` / `struct scroll_data`: relocated later in the header, content unchanged.
- `struct window_data`: whitespace only. All others (buffer_data, log_data, etc.): unchanged.

### constants/macros (tintin.h)
`RLIMIT_SIZE 67092480` (new); `STRING_SIZE 100000→200000`; `BUFFER_SIZE 50000→100000`;
`LEGEND_SIZE 50→48`; `COLOR_SIZE 50→48`; `CHAR_SIZE 5→8`; `CLIENT_VERSION "2.02.62b"`;
`CLIENT_COPYRIGHT`, `CLIENT_LICENSE`, `SPC_50`, `SPC_500` (new); `BV42`–`BV64` (new);
`SUB_LOG BV13`; `TINTIN_FLAG_FILEUPDATE BV18`; `SES_FLAG_FILEUPDATE BV16`;
`NODE_FLAG_CASELESS BV04`, `NODE_FLAG_CUSTOM BV05`; `LOG_FLAG_FLUSH BV10`, `LOG_FLAG_UPDATE BV11`;
`MAP_FLAG_DESTROY BV22`; `SCROLL`→`IS_SCROLL`, `VERBATIM`→`IS_VERBATIM`; new `IS_CTRL`,
`IS_IGNORED`; `#include <zstd.h>` block under `HAVE_ZSTD_H`.

### telnet.h
`+ TELOPT_MCCP4 88`; `+ MCCP4_ACCEPT_ENCODING 1 / MCCP4_BEGIN_ENCODING 2 / MCCP4_WONT 252`;
comments for telopts 102 (Aardwolf) / 200 (Achaea). No structs.

### dict.h / dict.c
Header-only (license). No changes to port.

### gui.h
Real 8-line change (tt_gui `input_update` alias fix — see chunk 10). No structs.

### prototype changes (all headers)
New: `skip_arg_all/in_braces/with_spaces/stop_spaces`, `detect_prompt` (moved from net.c),
`show_critical`, `client_telopt_debug`, `write_mccp4`, `client_end_mccp4`, `end_mccp4`,
`client_{recv_will,send_dont,init}_mccp2/3/4` (mccp.c block), `init_msdp_data`,
`uninit_msdp_data`, `init_events`, `bsearch_event_table`, `validate`, `update_files`,
`puts_stdout`, `format`, `skip_all_vt102_codes`, `skip_all_vt102_codes_non_graph`,
`tintin_regex_compare/match/check/compile/free`, `tintin_match_data`, `init_mask`, `string_mask`,
`tintin_string_mask`, `create_regex_node`, `delete_regex_node`, `command_table[]` extern,
`mask_table[]`, `suggestion_table[]`.
Changed: `delete_node_with_wild(+char *command)`, `close_chat` returns `struct chat_data *`,
`clear_class` → `destroy_class`, regex/trigger family (chunk 2/3), `set_nest_node`/
`add_nest_node` lose varargs.

## 4. New / removed files

- **`src/validate.h` (NEW)**: one-line `char *tt_valid = "<huge z64 string>"`. Consumed only by
  `do_test` (misc.c) self-tests and written by those same tests. Porting it is optional; if
  ported, keep it out of the Zig module graph (data file read at runtime by #scan) or embed in
  misc.zig. Updated twice upstream (ad56884, bffd8e4) — take the a4710ab blob.
- **`src/configure.ac` (NEW)** + regenerated `configure`, tweaked `configure.in`, `Makefile.in`
  (-flto=auto): autoconf modernization. Our tree generates `src/config.h` from the OLD
  `./configure` shell script — do NOT adopt configure.ac wholesale; instead mirror the needed
  `config.h.in` delta in our configure: **add `HAVE_ZSTD_H`, `HAVE_LIBZSTD`** (required for
  MCCP4; also new checks HAVE_PCRE2_H, HAVE_GNUTLS_GNUTLS_H, HAVE_LIBPCRE2_8, HAVE_LIBGNUTLS,
  HAVE_LIBM, HAVE_LIBSOCKET, HAVE_UTIME_H, PACKAGE_URL; drop HAVE_LIBTERMCAP/HAVE_TERMCAP_H).
  If MCCP4 is declined, leave HAVE_ZSTD_H undefined everywhere (C flags + Zig translates must agree).
- **`src/quadsort.h`**: the "19 lines removed" is ONLY the GPL license header block. Upstream
  sort.c still includes quadsort.h and calls `quadsort`/`quadsort32`/`quadsort64`; our
  `src/sort.zig` already translates them and `src/missing_sort.c` provides the merge primitives
  (cross_merge32/64, partial_forward/backward_merge32/64, quad_swap32/64, parity_merge*…).
  **No port action**; do not touch missing_sort.c.
- **`.github/workflows/build.yml` (NEW, outside src/)**: CI building on Linux+macOS (06ede28).
  Irrelevant to the Zig build; optionally mirror in our fork.
- **COPYING deleted / LICENSE added**: GPL-3 → LGPL-2.1-or-later relicense + all file headers.
  Repo-policy decision, not code. (Our AGENTS.md still says GPL 3.)

## 5. Recommended port order

1. **Chunk 1 — ABI headers** (tintin.h, telnet.h, constants): everything else compiles against
   it; update C header + all frozen Zig struct copies, keep pads adjacent to termios, re-run the
   offsetof audit before proceeding.
2. **Chunk 2 — PCRE2 match_data**: small, self-contained; regex.zig + main.zig init; unlocks the
   rename wave referenced by chunks 3/7.
3. **Chunk 6 — parse skip_arg_* family**: `tintin_match_data`/`tintin_string_mask` (chunk 3) call
   `skip_arg_in_braces`; port the skippers first so chunk 3 lands in one pass.
4. **Chunk 3 — mask engine (ttre_data)**: depends on 1 (BV42-64, listnode.mask, struct) + 2 + 6;
   widest call-site fan-out (trigger/data/cursor/parse/text/tables).
5. **Chunk 7 — vt102 fast-paths**: independent of 3/4; pure perf guards; keep as its own
   verifiable commit (benchmarkable).
6. **Chunk 4 — MCCP4 + telopt rework**: depends on 1 (struct fields, telnet.h) and build.zig zstd
   decision; biggest behavioral surface; includes MSDP/GMCP bounds fixes.
7. **Chunk 5 — line/log/ignore batching**: depends on 1 (flags) and 3 (IS_IGNORED semantics);
   touches update_a.zig pulse loop.
8. **Chunk 8 — leak/OOB fixes**: tiny, independent; safe anytime after 1 (do early if desired —
   they touch mapper/history/scan/variable which chunks 3/9 also edit).
9. **Chunk 9 — tables/help/banner/validate data**: depends on 1 (event_type.len) + 3 (mask_table)
   + 6 (suggestion_table); mostly data translation, good batching work.
10. **Chunk 10 — misc mop-up**: variadic bridge updates for set_nest_node/add_nest_node
    (de-variadification!), close_chat/destroy_class/do_send reworks, puts_stdout spread, main.zig
    setrlimit + stdout buffering; last because it sweeps files touched by earlier chunks.

After every chunk: `zig build` + `bash tests/run_tests.sh`; after chunks 1, 3, 4: regenerate and
compare the C-vs-Zig offsetof report (gtd/session/listnode/port_data/map_data/room_data/
search_data/event_type/ttre_data).
