#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

signin_mac_app_store() {

    appleId=""
    while [ -z "$appleId" ]; do
        ask "Please specify your Apple ID: "
        appleId="$(get_answer)"
    done

    printf "\n"

    execute \
        "mas signin $appleId" \
        "Signin to the Mac App Store"

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • mas-cli\n\n"

    brew_install "mas-cli" "mas"

    signin_mac_app_store

}

main
