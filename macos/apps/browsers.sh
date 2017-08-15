#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Browsers\n"

# ---------------------------------------------------------------------

brew_install "Chrome" "google-chrome" "caskroom/cask" "cask"
brew_install "Firefox" "firefox" "caskroom/cask" "cask"
brew_install "Opera" "opera" "caskroom/cask" "cask"
