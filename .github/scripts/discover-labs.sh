#!/bin/bash

# Discovers all labs in the homeworks repository

set -e

HOMEWORKS_DIR="$(pwd)/homeworks-temp"

if [ ! -d "$HOMEWORKS_DIR" ]; then
    echo "Error: Homeworks directory $HOMEWORKS_DIR does not exist"
    exit 1
fi

cd "$HOMEWORKS_DIR"

labs=()
for week_dir in week*/; do
    if [ ! -d "$week_dir" ]; then
        continue
    fi
    
    # Look for lab directories
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
            labs+=("{\"week\":\"$week_name\",\"lab\":\"$lab_name\"}")
        fi
    done
done

# Output as JSON array for GitHub Actions matrix
echo "{"
echo "  \"include\": ["
for i in "${!labs[@]}"; do
    echo "    ${labs[$i]}"
    if [ $i -lt $((${#labs[@]} - 1)) ]; then
        echo ","
    fi
done
echo "  ]"
echo "}"
