#!/bin/bash

# Builds documentation and zip file for a lab

set -e

# Check arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <week_dir> <lab_name>"
    echo "Example: $0 week1 primerlab"
    exit 1
fi

WEEK_DIR="$1"
LAB_NAME="$2"
HOMEWORKS_DIR="$(pwd)/homeworks-temp"
LAB_PATH="$HOMEWORKS_DIR/$WEEK_DIR/$LAB_NAME"
HW_OUTPUT_DIR="$(pwd)/hw"
OUTPUT_DIR="$HW_OUTPUT_DIR/$LAB_NAME"

# Validate lab directory exists
if [ ! -d "$LAB_PATH" ]; then
    echo "Error: Lab directory $LAB_PATH does not exist"
    exit 1
fi

if [ ! -f "$LAB_PATH/Cargo.toml" ]; then
    echo "Error: No Cargo.toml found in $LAB_PATH"
    exit 1
fi

echo "Building $LAB_NAME from $WEEK_DIR..."

mkdir -p "$OUTPUT_DIR"

cd "$LAB_PATH"

# Generate documentation
echo "  Generating documentation for $LAB_NAME..."
if cargo doc --no-deps --document-private-items; then
    if [ -d "target/doc" ]; then
        local doc_dir="$OUTPUT_DIR/doc"
        mkdir -p "$doc_dir"
        cp -r target/doc/. "$doc_dir/"

        echo "  Documentation generated successfully for $LAB_NAME"
    else
        echo "  Warning: No documentation generated for $LAB_NAME"
    fi
else
    echo "  Error: Failed to generate documentation for $LAB_NAME"
    exit 1
fi

# Create zip file excluding target directory and Cargo.lock
echo "  Creating zip file for $LAB_NAME..."
zip -r "$OUTPUT_DIR/$LAB_NAME.zip" . -x "target/*" "*.zip" "Cargo.lock"

echo "Successfully built $LAB_NAME"
