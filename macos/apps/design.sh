#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Design tools\n\n"

# ---------------------------------------------------------------------

brew_install "Figma" "figma" "homebrew/cask" "cask"
brew_install "ImageOptim" "imageoptim" "homebrew/cask" "cask"
brew_install "Sketch" "sketch" "homebrew/cask" "cask"
