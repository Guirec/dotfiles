#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   Trackpad\n\n"

# ---------------------------------------------------------------------

execute "defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2 && \
         defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true && \
         defaults -currentHost write -g com.apple.trackpad.trackpadCornerClickBehavior -int 1 && \
         defaults -currentHost write com.apple.trackpad.enableSecondaryClick -bool true" \
    "Map bottom right corner of Apple trackpad to right-click"
