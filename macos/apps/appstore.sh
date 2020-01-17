#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

install_spark() {

    # If necessary, prompt user to install `Spark`.

    if ! is_spark_installed; then
        open "macappstores://itunes.apple.com/en/app/id1176895641"
    fi

    # -----------------------------------------------------------------

    # Wait until `Spark` is installed.

    execute \
        "until is_spark_installed; do \
            sleep 5; \
         done" \
        "Reeder.app"

}

is_spark_installed() {
    [ -d "/Applications/Reeder.app" ]
}

# ---------------------------------------------------------------------

install_tweetbot() {

    # If necessary, prompt user to install `Tweetbot`.

    if ! is_tweetbot_installed; then
        open "macappstores://itunes.apple.com/en/app/id1384080005"
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
        open "macappstores://itunes.apple.com/en/app/id967805235"
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

    install_spark
    install_tweetbot
    install_paste

}

main
