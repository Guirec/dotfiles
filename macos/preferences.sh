#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n • Preferences\n"

# ---------------------------------------------------------------------

# Close any open `System Preferences` panes in order to avoid
# overriding the preferences that are being changed.
# ---------------------------------------------------------------------

./preferences/scripts/close_system_preferences_panes.applescript

# ---------------------------------------------------------------------

./preferences/app_store.sh
./preferences/chrome.sh
./preferences/dashboard.sh
./preferences/dock.sh
./preferences/finder.sh
./preferences/photos.sh
./preferences/safari.sh
./preferences/system.sh
./preferences/terminal.sh
./preferences/textedit.sh
