#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

is_xcode_installed() {
    [ -d "/Applications/Xcode.app" ]
}

install_xcode() {

    # If necessary, prompt user to install `Xcode`.

    if ! is_xcode_installed; then
        mas_install "Xcode" "497799835"
    fi

    # -----------------------------------------------------------------

    # Wait until `Xcode` is installed.

    execute \
        "until is_xcode_installed; do \
            sleep 5; \
         done" \
        "Xcode.app"

}

set_xcode_developer_directory() {

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`.
    #
    # https://github.com/alrra/dotfiles/issues/13

    sudo xcode-select -switch "/Applications/Xcode.app/Contents/Developer" &> /dev/null
    print_result $? "Make 'xcode-select' developer directory point to the appropriate directory from within Xcode.app"

}

agree_with_xcode_licence() {

    # Automatically agree to the terms of the `Xcode` license.

    sudo xcodebuild -license accept &> /dev/null
    print_result $? "Agree to the terms of the Xcode licence"

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • Xcode\n\n"

    install_xcode
    set_xcode_developer_directory
    agree_with_xcode_licence

}

main
