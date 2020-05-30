#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

install_symfony_cli() {

    if ! cmd_exists "symfony"; then
        printf "\n" | ruby -e "$(curl -sS https://get.symfony.com/cli/installer | bash)" &> /dev/null
        #  └─ simulate the ENTER keypress
    fi

    print_result $? "Symfony CLI"

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • Symfony\n\n"

    install_symfony_cli

}

main