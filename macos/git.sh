#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n • Git\n\n"

# ---------------------------------------------------------------------

brew_install "Git" "git"
brew_install "GitHub CLI" "github/gh/gh"
brew_install "lazygit" "jesseduffield/lazygit/lazygit"
brew_install "Tig" "tig"
