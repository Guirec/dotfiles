#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Working tools\n\n"

# ---------------------------------------------------------------------

brew_install "GPG Suite" "gpg-suite" "homebrew/cask" "cask"
brew_install "Harvest" "harvest" "homebrew/cask" "cask"
brew_install "Skype" "skype" "homebrew/cask" "cask"
brew_install "Slack" "slack" "homebrew/cask" "cask"
brew_install "TeamViewer" "teamviewer" "homebrew/cask" "cask"
