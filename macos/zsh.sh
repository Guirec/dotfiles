#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • Oh My Zsh\n\n"

    brew_install "Zsh" "zsh"
    brew_install "Zsh autosuggestions" "zsh-autosuggestions"
    brew_install "Starship" "starship"

}

main
