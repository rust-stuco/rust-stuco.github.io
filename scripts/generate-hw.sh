#!/bin/bash

set -e

HOMEWORKS_REPO="https://github.com/rust-stuco/homeworks.git"
HOMEWORKS_DIR="./homeworks-temp"
HW_OUTPUT_DIR="./hw"

if [ -d "$HOMEWORKS_DIR" ]; then
    rm -rf "$HOMEWORKS_DIR"
fi

if [ -d "$HW_OUTPUT_DIR" ]; then
    rm -rf "$HW_OUTPUT_DIR"
fi
echo "Cloning homeworks repository..."
git clone --depth 1 "$HOMEWORKS_REPO" "$HOMEWORKS_DIR"

mkdir -p "$HW_OUTPUT_DIR"

# Check if Rust is available
if ! command -v cargo &> /dev/null; then
    echo "Please install Rust: https://rustup.rs/"
    exit 1
fi

echo "Discovering labs..."
cd "$HOMEWORKS_DIR"

# Collect all labs
labs=()
for week_dir in week*/; do
    if [ ! -d "$week_dir" ]; then
        continue
    fi
    
    for lab_dir in "$week_dir"*/; do
        if [ ! -d "$lab_dir" ]; then
            continue
        fi
        
        lab_name=$(basename "$lab_dir")
        
        # Skip reference implementations and autograder directories
        if [[ "$lab_name" == *"_ref" ]] || [[ "$lab_name" == "autograder" ]]; then
            continue
        fi
        
        # Only process directories that end with "lab" and have Cargo.toml
        if [[ "$lab_name" == *"lab" ]] && [ -f "$lab_dir/Cargo.toml" ]; then
            week_name=$(basename "$week_dir")
            labs+=("$week_name:$lab_name")
        fi
    done
done

echo "Found ${#labs[@]} labs to build"

# Return to website directory
cd - > /dev/null

# Build all labs in parallel
echo "Building labs in parallel..."
for lab_info in "${labs[@]}"; do
    week_dir="${lab_info%:*}"
    lab_name="${lab_info#*:}"
    ./.github/scripts/build-lab.sh "$week_dir" "$lab_name" &
done
wait

rm -rf "$HOMEWORKS_DIR"

echo "Generated documentation and zip files in hw/ directory"
ls -1 "$HW_OUTPUT_DIR"
