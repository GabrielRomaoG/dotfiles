#!/bin/bash

# ALIASES

alias nv='nvim'
alias rebash='source .bashrc'

# FUNCTIONS

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

# mkdir with cd

mkcdir() {
    mkdir -p -- "$1" &&
        cd -P -- "$1"
}

# use tlmgr without user mode errors
texman() {
    local pkg_list=("$@")
    local tlmgr_path=$(which tlmgr)

    if [ ! -x "$tlmgr_path" ]; then
        echo "❌ tlmgr not found at $tlmgr_path"
        return 1
    fi

    if [ ${#pkg_list[@]} -eq 0 ]; then
        echo "Usage: tlmgrsys package1 [package2 ...]"
        return 2
    fi

    sudo "$tlmgr_path" install "${pkg_list[@]}"
}
