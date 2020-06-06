#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Browsers\n"

# ---------------------------------------------------------------------

brew_install "Chrome" "google-chrome" "homebrew/cask" "cask"
brew_install "Firefox" "firefox" "homebrew/cask" "cask"
brew_install "Firefox Developer Edition" "firefox-developer-edition" "homebrew/cask-versions" "cask"
