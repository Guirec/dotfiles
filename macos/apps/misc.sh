#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Miscellaneous\n\n"

# ---------------------------------------------------------------------

brew_install "1Password" "1password" "caskroom/cask" "cask"
brew_install "Alfred" "alfred" "caskroom/cask" "cask"
brew_install "AppCleaner" "appcleaner" "caskroom/cask" "cask"
brew_install "KeepingYouAwake" "keepingyouawake" "caskroom/cask" "cask"
brew_install "MacDown" "macdown" "caskroom/cask" "cask"
brew_install "Molotov" "molotov" "caskroom/cask" "cask"
brew_install "Muzzle" "muzzle" "caskroom/cask" "cask"
brew_install "Numi" "numi" "caskroom/cask" "cask"
brew_install "Paste" "paste" "caskroom/cask" "cask"
brew_install "Pocket Casts" "pocket-casts" "caskroom/cask" "cask"
brew_install "Spotify" "spotify" "caskroom/cask" "cask"
brew_install "Unarchiver" "the-unarchiver" "caskroom/cask" "cask"
brew_install "VLC" "vlc" "caskroom/cask" "cask"
