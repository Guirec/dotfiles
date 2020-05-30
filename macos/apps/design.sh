#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Design tools\n\n"

# ---------------------------------------------------------------------

brew_install "Figma" "figma" "caskroom/cask" "cask"
brew_install "ImageOptim" "imageoptim" "caskroom/cask" "cask"
brew_install "Sip" "sip" "caskroom/cask" "cask"
brew_install "Sketch" "sketch" "caskroom/cask" "cask"
