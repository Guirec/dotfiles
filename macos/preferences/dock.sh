#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Dock\n\n"

# ---------------------------------------------------------------------

execute "defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true" \
    "Enable spring loading for all Dock items"

execute "defaults write com.apple.dock expose-group-by-app -bool false" \
    "Do not group windows by application in Mission Control"

execute "defaults write com.apple.dock mru-spaces -bool false" \
    "Do not automatically rearrange spaces based on most recent use"

execute "defaults write com.apple.dock persistent-apps -array && \
         defaults write com.apple.dock persistent-others -array " \
    "Wipe all app icons"

execute "defaults write com.apple.dock show-process-indicators -bool false" \
    "Do not show indicator for open applications"

execute "defaults write com.apple.dock launchanim -bool false" \
    "Do not animate opening applications from the Dock"

execute "defaults write com.apple.dock showhidden -bool true" \
    "Make icons of hidden applications translucent"

execute "defaults write com.apple.dock tilesize -int 20" \
    "Set icon size"

execute "defaults write com.apple.dock autohide -bool true" \
    "Autohide the Dock"

killall "Dock" &> /dev/null
