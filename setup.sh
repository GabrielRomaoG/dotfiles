#!/bin/bash

# Lines to append to ~/.bashrc
SOURCE_LINES=(
    '[ -f "$HOME/.config/bash/aliases.sh" ] && source "$HOME/.config/bash/aliases.sh"'
    '[ -f "$HOME/.config/bash/functions.sh" ] && source "$HOME/.config/bash/functions.sh"'
)

# Append source lines to ~/.bashrc if missing
for line in "${SOURCE_LINES[@]}"; do
    grep -qxF "$line" "$HOME/.bashrc" || echo "$line" >>"$HOME/.bashrc"
done

echo "✅ .bashrc updated. Restart shell or run: source ~/.bashrc"
