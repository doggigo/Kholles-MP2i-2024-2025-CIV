#!/bin/bash


SCRIPT_DIR=$(dirname "$(realpath "$0")")
REDIGE_FOLDER="$SCRIPT_DIR/redige"
DIST_FOLDER="$SCRIPT_DIR/dist"

if [ ! -d "$DIST_FOLDER" ]; then
    mkdir -p "$DIST_FOLDER"
fi

for FILE in "$REDIGE_FOLDER"/*.typ; do
    if [ -f "$FILE" ]; then
        PDF_FILE_NAME="$(basename "$FILE" .typ).pdf"
        PDF_FILE_PATH="$DIST_FOLDER/$PDF_FILE_NAME"

        typst compile "$FILE"

        COMPILED_PDF_PATH="$REDIGE_FOLDER/$PDF_FILE_NAME"
        if [ -f "$COMPILED_PDF_PATH" ]; then
            mv -f "$COMPILED_PDF_PATH" "$PDF_FILE_PATH"
        fi
    fi
done
