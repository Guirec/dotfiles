#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

install_symfony_cli() {

    if ! cmd_exists "symfony"; then
        execute \
            "curl -sS https://get.symfony.com/cli/installer | bash" \
            "Symfony CLI"
    fi

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • Symfony\n\n"

    install_symfony_cli

}

main
