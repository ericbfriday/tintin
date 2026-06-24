with open("src/mapper.zig", "r") as f:
    for line in f:
        if "LIST_PATHDIR" in line and "search_node_list" in line:
            print(line.strip())
