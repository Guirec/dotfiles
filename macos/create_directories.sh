#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

create_directories() {

    declare -a DIRECTORIES=(
        "$HOME/Projects/Personal"
        "$HOME/Projects/Work"
    )

    for i in "${DIRECTORIES[@]}"; do
        mkd "$i"
    done

}

# ---------------------------------------------------------------------

main() {
    print_in_purple "\n • Create directories\n\n"
    create_directories
}

main
