#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Terminal\n\n"

# ---------------------------------------------------------------------

execute "defaults write com.apple.terminal StringEncodings -array 4" \
    "Only use UTF-8"

execute "./scripts/set_terminal_theme.applescript" \
    "Set custom terminal theme"
