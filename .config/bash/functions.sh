#!/bin/bash

# Copy the ~/latex_template/ template files to some dir
cp_latex_temp() {
    local dest="${1:-.}"
    local src="$HOME/latex_template"
    local files=("macros.tex" "letterfonts.tex" "preamble.tex")

    for file in "${files[@]}"; do
        if [ ! -e "$dest/$file" ]; then
            cp "$src/$file" "$dest/"
            echo "Copied $file to $dest"
        else
            echo "Skipped $file (already exists in $dest)"
        fi
    done
}
