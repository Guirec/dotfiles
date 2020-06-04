#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

install_fonts() {

    declare -a FONTS_TO_INSTALL=(

        "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-Bold.ttf"
        "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-Light.ttf"
        "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-Medium.ttf"
        "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-Regular.ttf"
        "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-Retina.ttf"
        "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-SemiBold.ttf"

    )

    local i=""

    # -----------------------------------------------------------------

    for i in "${FONTS_TO_INSTALL[@]}"; do

        execute \
            "cd ~/Library/Fonts && { curl -O '$i' ; cd -; }" \
            "$i"

    done

}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n • Fonts\n\n"

    install_fonts

}

main
