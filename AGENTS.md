# TinTin++ Zigified Project Context

## Project Overview

**TinTin++** is a classic, powerful command-line MUD (Multi-User Dungeon) client. This fork is being **converted from C to Zig**. The goal is to leverage Zig's modern features while maintaining compatibility with the existing C codebase.

*   **Website:** https://tintin.mudhalla.net (Original C version)
*   **License:** GPL 3
*   **Primary Languages:** C, Zig
*   **Build System:** Zig Build System (`build.zig`)

## Getting Started

### Prerequisites

*   **Zig 0.16.x** — do NOT use 0.17+: `@cImport` (used by 11 modules) was removed in 0.17
*   **PCRE2** (`libpcre2-dev` / `pcre2`) — build.zig links `pcre2-8`
*   **Zlib** (`zlib1g-dev` / `zlib`)
*   **GnuTLS** (`libgnutls28-dev` / `gnutls`)

On macOS (Homebrew):
```bash
brew install pcre2 zlib gnutls zig@0.16
```

On Linux (Ubuntu/Debian):
```bash
sudo apt-get install libpcre2-dev zlib1g-dev libgnutls28-dev
```

### Building

1.  Generate `src/config.h` once per clone (gitignored):
    ```bash
    cd src && ./configure
    ```
2.  Build:
    ```bash
    zig build
    ```
3.  The binary lands in `zig-out/bin/tt++`.

**WSL2 notes (Windows hosts):**
*   Never build on `/mnt/*` (drvfs breaks Zig's cache renames). Sync to ext4 first (e.g. `rsync -a --exclude .git --exclude .zig-cache --exclude zig-out . ~/tintin/`).
*   Strip Windows paths from `PATH` before building: `export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`. A Windows `pkg-config` shim in `WindowsApps` fails with `EACCES` and breaks Zig's library lookup at link time with a bare `error: AccessDenied` (this was previously misattributed to an `.sframe` linker bug).

### Running & Testing

```bash
./zig-out/bin/tt++                       # interactive
./zig-out/bin/tt++ -H tests/smoke_test.tin < /dev/null   # headless script
bash tests/run_tests.sh                  # black-box suite (smoke, list, string, variadic)
zig build test                           # compile/link test of all modules
```

## Zig Conversion Progress

The core engine, network stack, parser, and scripting engine are translated to Zig. Build and tests pass on Ubuntu 22.04 + Zig 0.16.0.

*   **Variadic bridge:** `src/variadics.zig` implements all 33 variadic wrappers (23 forward to the C-ABI implementations in `missing_variadics.c` / `command.zig` / `nest.zig`; 10 chat/port/msdp/arachnos functions ported from upstream). Zig callers reach it via local `pub fn` wrappers in each module.
*   **Struct ABI invariant:** the raw translate-c files embed a Darwin-sized `struct termios` (72B) while glibc's is 60B; `tintin.h` carries `zig_abi_pad_tintin[8]`/`zig_abi_pad_session[8]` so C and `@cImport` layouts match the frozen Zig layouts. Any change to a shared struct must keep offsets aligned (audit with a generated offsetof comparison).
*   **Remaining C:** `missing_variadics.c` (17 functions, now shadowed by the Zig wrappers), `missing_goto.c`, `missing_sort.c`, `darwin_shim.c` (supplies Darwin libc symbols on Linux).
*   **Remaining work:** migrate the 11 `@cImport` modules off `@cImport` for Zig 0.17+; port the remaining C files; keep `master` synced with upstream scandum/tintin.

### Conversion Strategy

1.  **Translate C to Zig:** `zig translate-c` on existing C implementation files.
2.  **Expose to C:** `pub export fn` keeps functions available across module boundaries; `tintin.h` is the shared ABI contract (new/renamed functions need a prototype there).
3.  **Link via `build.zig`:** each Zig module compiles as an object linked into `tt++` (mirroring the old C translation units).
4.  **Gradual Refactoring:** translated code is refactored to idiomatic Zig incrementally; match the existing style of the file you are editing (raw translate-c vs. hand-cleaned).

## Project Structure

*   **`src/`**: Zig implementation + remaining C files; `tintin.h` is the C/Zig ABI contract.
*   **`build.zig`**: build configuration (per-module objects, C flags, `_GNU_SOURCE` macro).
*   **`tests/`**: black-box `.tin` test scripts + `run_tests.sh`.
*   **`docs/`**: Documentation files (HTML and text).
*   **`mods/`**: Release notes and modification history.

## Architecture & Key Concepts

### Core Data Structures (`src/tintin.h`)

*   **`struct session`**: one MUD connection; linked list via `next`/`prev`.
*   **`struct listroot` / `struct listnode`**: the generic list backing aliases, actions, variables, etc.
*   **`struct tintin_data` (`gtd`)**: the global client state, defined in `main.zig`.

### Execution Flow

Entry point is `pub fn main` in `src/main.zig` (there is no `main.c`). After `init_tintin`, the file/`-e` command runs, then `mainloop()` in `src/update_a.zig` drives the pulse-based event loop (input, sessions, delays, tickers, chat, port).

## Common Terms

*   **Mud**: Multi-User Dungeon (the game server).
*   **Trigger/Action**: A script that runs automatically when specific text is received from the server.
*   **Alias**: A shortcut command defined by the user.
*   **Tick**: A periodic timer event.

## Agent skills

### Issue tracker

Issues and PRDs are tracked in GitHub Issues for this repo. See `docs/agents/issue-tracker.md`.

### Triage labels

This repo uses the default five-role triage label vocabulary. See `docs/agents/triage-labels.md`.

### Domain docs

This repo uses a single-context domain docs layout. See `docs/agents/domain.md`.
