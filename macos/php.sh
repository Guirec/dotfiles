#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

install_symfony_cli() {

    if ! cmd_exists "symfony"; then
        execute \
            "curl -sS https://get.symfony.com/cli/installer | bash \
                && mv ~/.symfony/bin/symfony /usr/local/bin/symfony" \
            "Symfony CLI"
    fi

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • PHP\n\n"

    brew_install "PHP" "php"
    brew_install "Composer" "composer"

    install_symfony_cli

}

main
