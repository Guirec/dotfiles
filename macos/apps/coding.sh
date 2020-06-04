#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Coding tools\n\n"

# ---------------------------------------------------------------------

brew_install "Docker" "docker" "homebrew/cask" "cask"
brew_install "Sequel Pro" "sequel-pro" "homebrew/cask" "cask"
brew_install "Sublime Merge" "sublime-merge" "homebrew/cask" "cask"
brew_install "Visual Studio Code" "visual-studio-code" "homebrew/cask" "cask"
