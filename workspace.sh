#!/bin/bash

WORKSPACE_DIR="/path/to/workspace"

OUTPUT_FILE="workspace_context.txt"

# add/remove file extensions that you wanna include in the output file
INCLUDE_EXTENSIONS=("*.js" "*.jsx" "*.ts" "*.tsx")

> $OUTPUT_FILE

for ext in "${INCLUDE_EXTENSIONS[@]}"; do
    find $WORKSPACE_DIR -type f -name "$ext" | while read -r file; do
        echo "/* File: $file */" >> $OUTPUT_FILE
        cat "$file" >> $OUTPUT_FILE
        echo -e "\n" >> $OUTPUT_FILE
    done
done

echo "Workspace code content gathered successfully: $OUTPUT_FILE"
