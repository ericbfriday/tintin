import os
import re

out = """#include "tintin.h"

// Forward declarations for missing symbols
extern void buffer_print(struct session *ses, int index, int start, int end);
extern void string_to_stamp(struct session *ses, long long flags, char *in, char *out);
extern void string_to_font(struct session *ses, long long flags, char *in, char *out);
extern struct session *gts;
extern struct tintin_data *gtd;

"""

def get_missing_symbols():
    symbols = []
    with open('build.log', 'r') as f:
        for line in f:
            if "error: undefined symbol: _" in line:
                symbols.append(line.split("error: undefined symbol: _")[1].strip())
    return symbols

def extract_function(filepath, func_name):
    try:
        with open(filepath, 'r') as f:
            content = f.read()
    except FileNotFoundError:
        return ""

    # Try different regex patterns to match the function signature
    patterns = [
        r'(?:(?:\w+\s+)?\w+\s*\*?\s*)' + func_name + r'\s*\([^)]*\)\s*\{',
        r'(?:(?:\w+\s+)?\w+\s*\*?\s*)' + func_name + r'\s*\([^)]*\.\.\.\s*\)\s*\{',
        r'(?:(?:\w+\s+)?\w+\s*\*?\s*)' + func_name + r'\s*\([^)]*,?\s*\.\.\.\s*\)\s*\{',
        r'(?:(?:\w+\s+)?\w+\s*\*?\s*)' + func_name + r'\s*\([^\{]*\)\s*\{',
        r'DO_\w+\(\s*' + func_name + r'\s*\)\s*\{'
    ]
    
    match = None
    for pattern in patterns:
        match = re.search(pattern, content)
        if match:
            break
            
    if not match:
        return ""

    start_idx = match.start()
    brace_count = 0
    in_func = False
    end_idx = start_idx
    
    for i in range(start_idx, len(content)):
        if content[i] == '{':
            brace_count += 1
            in_func = True
        elif content[i] == '}':
            brace_count -= 1
        
        if in_func and brace_count == 0:
            end_idx = i + 1
            break
            
    return content[start_idx:end_idx]

def main():
    missing_symbols = get_missing_symbols()
    print(f"Missing symbols to extract: {missing_symbols}")
    
    global out
    
    src_files = [f for f in os.listdir("src") if f.endswith(".c") and not f.startswith("missing_") and not f.startswith("test_")]
    
    extracted_symbols = set()
    for symbol in missing_symbols:
        found = False
        for src_file in src_files:
            filepath = os.path.join("src", src_file)
            extracted = extract_function(filepath, symbol)
            if extracted:
                out += f"// --- Extracted {symbol} from {filepath} ---\n\n"
                out += extracted + "\n\n"
                found = True
                extracted_symbols.add(symbol)
                break
        if not found:
            print(f"Warning: Could not find {symbol} in any .c file")

    with open("src/missing_variadics.c", "w") as f:
        f.write(out)

    print(f"Extracted {len(extracted_symbols)} symbols out of {len(missing_symbols)}")
    print("Generated src/missing_variadics.c")

if __name__ == "__main__":
    main()
