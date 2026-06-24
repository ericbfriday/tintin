import os
import subprocess

EXCLUDED = {'utils.zig', 'memory.zig', 'math.zig', 'string.zig', 'list.zig', 'dict.zig'}

def main():
    src_dir = "src"
    zig_files = []
    for root, _, files in os.walk(src_dir):
        for file in files:
            if file.endswith(".zig") and file not in EXCLUDED:
                # check if there is a corresponding .c file
                base = file[:-4]
                c_file = base + ".c"
                if os.path.exists(os.path.join(root, c_file)):
                    zig_files.append(os.path.join(root, file))
                    
    print(f"Running fix_absolute_final.py on {len(zig_files)} files:")
    for zf in sorted(zig_files):
        print(f"  {zf}")
        subprocess.run(["python3", "fix_absolute_final.py", zf], check=True)

if __name__ == "__main__":
    main()
