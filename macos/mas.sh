#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

signin_mac_app_store() {

    print_warning "Please make sure to be signed to the Mac App Store"

    ask_for_confirmation "Would you like to open the Mac App Store to verify?"

    if answer_is_yes; then
        open "macappstores://itunes.apple.com/en/app/xcode/id497799835"

        ask_for_confirmation "Are you now signed to the Mac App Store?"

        if ! answer_is_yes; then
            print_error "You need to be signed to the Mac App Store to continue"
            exit 3
        fi
    fi

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • mas-cli\n\n"

    brew_install "mas-cli" "mas"

    signin_mac_app_store

}

main
