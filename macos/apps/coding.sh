#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Coding tools\n\n"

# ---------------------------------------------------------------------

brew_install "Docker Edge" "docker-edge" "caskroom/versions" "cask"
brew_install "Sequel Pro" "sequel-pro" "caskroom/cask" "cask"
brew_install "Sublime Merge" "sublime-merge" "caskroom/cask" "cask"
brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"
