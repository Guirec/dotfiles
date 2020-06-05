#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

declare -r SHELL_CONFIG_FILE="$HOME/.zshrc"

# ---------------------------------------------------------------------

create_nvm_directory() {

    execute \
        "mkdir ~/.config/nvm" \
        "Create nvm directory"

}

install_latest_stable_node() {

    # Install the latest stable version of Node
    # (this will also set it as the default).

    execute \
        ". $SHELL_CONFIG_FILE \
            && nvm install node" \
        "nvm (install latest Node)"

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • nvm\n\n"

    brew_install "nvm (install)" "nvm"

    create_nvm_directory
    install_latest_stable_node

}

main
