#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

install_reeder() {

    # If necessary, prompt user to install `Reeder`.

    if ! is_reeder_installed; then
        open "macappstores://itunes.apple.com/en/app/reeder-3/id880001334"
    fi

    # -----------------------------------------------------------------

    # Wait until `Reeder` is installed.

    execute \
        "until is_reeder_installed; do \
            sleep 5; \
         done" \
        "Reeder.app"

}

is_reeder_installed() {
    [ -d "/Applications/Reeder.app" ]
}

# ---------------------------------------------------------------------

install_tweetbot() {

    # If necessary, prompt user to install `Tweetbot`.

    if ! is_tweetbot_installed; then
        open "macappstores://itunes.apple.com/en/app/tweetbot-for-twitter/id557168941"
    fi

    # -----------------------------------------------------------------

    # Wait until `Tweetbot` is installed.

    execute \
        "until is_tweetbot_installed; do \
            sleep 5; \
         done" \
        "Tweetbot.app"

}

is_tweetbot_installed() {
    [ -d "/Applications/Tweetbot.app" ]
}

# ---------------------------------------------------------------------

install_paste() {

    # If necessary, prompt user to install `Paste`.

    if ! is_paste_installed; then
        open "macappstores://itunes.apple.com/en/app/paste-clipboard-history-manager/id967805235"
    fi

    # -----------------------------------------------------------------

    # Wait until `Paste` is installed.

    execute \
        "until is_paste_installed; do \
            sleep 5; \
         done" \
        "Paste.app"

}

is_paste_installed() {
    [ -d "/Applications/Paste.app" ]
}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n   App Store\n"

    install_reeder
    install_tweetbot
    install_paste

}

main
