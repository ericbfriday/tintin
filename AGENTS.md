# TinTin++ Zigified Project Context

## Project Overview

**TinTin++** is a classic, powerful command-line MUD (Multi-User Dungeon) client. This fork is currently in the process of being **converted from C to Zig**. The goal is to leverage Zig's modern features while maintaining compatibility with the existing C codebase.

*   **Website:** https://tintin.mudhalla.net (Original C version)
*   **License:** GPL 3
*   **Primary Languages:** C, Zig
*   **Build System:** Zig Build System (`build.zig`)

## Getting Started

### Prerequisites

To build this version of TinTin++, you need:

*   **Zig Compiler** (0.13.0 or later recommended)
*   **PCRE** (Perl Compatible Regular Expressions)
*   **Zlib** (Compression)
*   **GnuTLS** (SSL/TLS support)

On macOS (Homebrew):
```bash
brew install pcre zlib gnutls zig
```

On Linux (Ubuntu/Debian):
```bash
sudo apt-get install libpcre3-dev zlib1g-dev gnutls-dev zig
```

### Building

The project uses `zig build`:

1.  In the project root:
    ```bash
    zig build
    ```

2.  The resulting binary will be in `zig-out/bin/tt++`.

### Running

```bash
./zig-out/bin/tt++
```

## Zig Conversion Progress

The project is in the final stages of conversion. The vast majority of the core engine, network stack, parser, and scripting engine have been translated to Zig (`*.zig`).

*   **Current State:** The build succeeds using Zig modules, with a few remaining C stubs (`missing_*.c`) for complex macros, regex, and variadics.
*   **Current Focus (Phase 8):** Replacing legacy C variadic function calls (e.g., `tintin_printf`, `show_info`) with Zig tuple arguments, and translating the remaining manual C pieces.

### Conversion Strategy

1.  **Translate C to Zig:** Use `zig translate-c` on existing C implementation files.
2.  **Expose to C:** Use `pub export fn` in Zig to keep functions available to the remaining C code.
3.  **Link via `build.zig`:** Zig modules are compiled as objects and added to the main executable.
4.  **Gradual Refactoring:** Once translated, the Zig code can be incrementally refactored to use idiomatic Zig features.

## Project Structure

*   **`src/`**: Contains the new Zig implementation files and the few remaining C files.
*   **`build.zig`**: The main build configuration.
*   **`docs/`**: Documentation files (HTML and text).
*   **`mods/`**: Release notes and modification history.
*   **`migration_artifacts/`**: AI migration scripts, temporary files, logs, and backups from the C-to-Zig conversion process.

## Architecture & Key Concepts

### Core Data Structures (`src/tintin.h`)

*   **`struct session`**: Represents a connection to a MUD.
*   **`struct listroot` / `struct listnode`**: A generic doubly-linked list implementation.

### Execution Flow

The entry point remains in `main.c`, which calls into both remaining C logic and new Zig logic. The main event loop is in `update.c`.

## Common Terms

*   **Mud**: Multi-User Dungeon (the game server).
*   **Trigger/Action**: A script that runs automatically when specific text is received from the server.
*   **Alias**: A shortcut command defined by the user.
*   **Tick**: A periodic timer event.
