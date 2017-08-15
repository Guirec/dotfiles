#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • Oh My Zsh\n\n"

    brew_install "Zsh" "zsh"

    execute "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
        "Oh My Zsh"

}

main
