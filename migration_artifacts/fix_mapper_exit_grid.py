import re

def main():
    filepath = "src/mapper.zig"
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
        
    content = content.replace("\r\n", "\n")
    
    # 1. Clean up debug compileError on line 8471
    content = content.replace(
        '@compileError("TYPE_ELEMENT: " ++ @typeName(@TypeOf(ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit_1.*.vnum)))])));',
        'rev_exit = ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit_1.*.vnum)))][0].exit_grid[@as(usize, @intCast(revdir_to_grid(exit_1.*.dir)))];'
    )
    content = content.replace(
        '@compileError("TYPE: " ++ @typeName(@TypeOf(ses.*.map.*.room_list)));',
        'rev_exit = ses.*.map.*.room_list[@bitCast(@as(isize, @intCast(exit_1.*.vnum)))][0].exit_grid[@as(usize, @intCast(revdir_to_grid(exit_1.*.dir)))];'
    )

    # 2. Replace ].*.exit_grid with ][0].exit_grid
    content = content.replace("].*.exit_grid", "][0].exit_grid")

    # 3. Replace room.*.exit_grid, room_nw.*.exit_grid, etc. with [0].exit_grid
    # Pattern: word + .*.exit_grid -> word + [0].exit_grid
    content = re.sub(
        r'\b([a-zA-Z0-9_]+)\.\*\.exit_grid',
        r'\1[0].exit_grid',
        content
    )

    # 4. Replace constant indices like exit_grid[EXIT_GRID_SE] with exit_grid[@as(usize, @intCast(EXIT_GRID_SE))]
    content = re.sub(
        r'exit_grid\[(EXIT_GRID_[A-Z0-9]+)\]',
        r'exit_grid[@as(usize, @intCast(\1))]',
        content
    )
    
    # 5. Replace complex @bitCast indices with clean @as(usize, @intCast(EXPR))
    # E.g., exit_grid[@bitCast(@as(isize, @intCast(revdir_to_grid(exit_1.*.dir))))]
    content = re.sub(
        r'exit_grid\[@bitCast\(@as\(isize,\s*@intCast\((.*?)\)\)\)\]',
        r'exit_grid[@as(usize, @intCast(\1))]',
        content
    )

    # 6. Fix invalid LHS casts like @as(c_int, room.*.exit_size) += 1
    # Use a robust character class including '.', '*', '[', ']'
    content = re.sub(
        r'@as\(c_int,\s*([a-zA-Z0-9_.*[\]]+)\)\s*\+=',
        r'\1 +=',
        content
    )
    content = re.sub(
        r'@as\(c_int,\s*([a-zA-Z0-9_.*[\]]+)\)\s*-=',
        r'\1 -=',
        content
    )
    
    # Clean up double @ptrCast/@alignCast in mapper.zig if any
    content = content.replace("@ptrCast(@ptrCast(", "@ptrCast(")
    
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)
    print("Fixed exit_grid indexing and LHS casts in mapper.zig")

if __name__ == "__main__":
    main()
