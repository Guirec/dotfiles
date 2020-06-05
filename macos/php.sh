#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n • PHP\n\n"

# ---------------------------------------------------------------------

brew_install "PHP" "php"
brew_install "Composer" "composer"
