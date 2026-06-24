with open("src/missing_variadics.c", "r") as f:
    lines = f.readlines()

out = []
for line in lines:
    if line.strip() == "#if 0" or line.strip() == "#endif":
        continue
    out.append(line)

with open("src/missing_variadics.c", "w") as f:
    f.writelines(out)

print("Removed #if 0 from missing_variadics.c")
