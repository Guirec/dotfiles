#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Working tools\n\n"

# ---------------------------------------------------------------------

brew_install "GPG Suite" "gpgtools" "caskroom/cask" "cask"
brew_install "Harvest" "harvest" "caskroom/cask" "cask"
brew_install "Skype" "skype" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"
brew_install "TeamViewer" "teamviewer" "caskroom/cask" "cask"
brew_install "Transmit" "transmit" "caskroom/cask" "cask"
