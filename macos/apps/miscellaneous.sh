#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Miscellaneous\n\n"

# ---------------------------------------------------------------------

brew_install "1Password" "1password" "homebrew/cask" "cask"
brew_install "Alfred" "alfred" "homebrew/cask" "cask"
brew_install "AppCleaner" "appcleaner" "homebrew/cask" "cask"
brew_install "KeepingYouAwake" "keepingyouawake" "homebrew/cask" "cask"
brew_install "MacDown" "macdown" "homebrew/cask" "cask"
brew_install "Signal" "signal" "homebrew/cask" "cask"
brew_install "Soulver" "soulver" "homebrew/cask" "cask"
brew_install "Spotify" "spotify" "homebrew/cask" "cask"
brew_install "Unarchiver" "the-unarchiver" "homebrew/cask" "cask"
brew_install "VirtualBox" "virtualbox" "homebrew/cask" "cask"
brew_install "VLC" "vlc" "homebrew/cask" "cask"
