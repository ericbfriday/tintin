# Migration Artifacts

This directory contains scripts, temporary files, debug outputs, and logs that were used during the AI-assisted migration of the codebase from C to Zig.

## Contents

- `*.py`: Various Python scripts used for automating code transformations (e.g., regex replacements, extracting functions, renaming variables).
- `*.sh`: Shell scripts used for orchestration of fixes or running LLDB.
- `*.log`: Build logs, translation logs, LLDB logs, and error logs generated during the migration process.
- `scratch_*`: Temporary code files used to experiment with C/Zig semantics and behavior.
- `test_*`: Test files and scripts for verifying function conversions and overall module behavior.
- `missing_*`, `temp_*`, `tmp*`: Temporary objects and manual translation files.
- `*.o`: Intermediate object files generated during builds.
- `backups/`: Original C file backups (e.g., `math.c.bak`) and script backups from the migration process.

These files are retained for historical context, auditing, and reference in case we need to understand the automated transformations applied during the migration. They are not required for normal operation or compiling the final `tt++` binary.
