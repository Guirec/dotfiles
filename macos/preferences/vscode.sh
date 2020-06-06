#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

install_vscode_extensions() {

    declare -a VSCODE_EXTENSIONS_TO_INSTALL=(

        "antfu.i18n-ally"
        "bierner.emojisense"
        "christian-kohler.npm-intellisense"
        "christian-kohler.path-intellisense"
        "CoenraadS.bracket-pair-colorizer-2"
        "dbaeumer.vscode-eslint"
        "eamodio.gitlens"
        "eg2.vscode-npm-script"
        "esbenp.prettier-vscode"
        "felixfbecker.php-debug"
        "felixfbecker.php-intellisense"
        "fivethree.vscode-svelte-snippets"
        "GitHub.vscode-pull-request-github"
        "howardzuo.vscode-npm-dependency"
        "JamesBirtles.svelte-vscode"
        "jeremyljackson.vs-docblock"
        "jock.svg"
        "JounQin.vscode-mdx"
        "mblode.twig-language"
        "ms-azuretools.vscode-docker"
        "ms-vsliveshare.vsliveshare"
        "nicoespeon.abracadabra"
        "octref.vetur"
        "ricard.postcss"
        "stylelint.vscode-stylelint"
        "sysoev.language-stylus"
        "TheNouillet.symfony-vscode"
        "tombonnike.vscode-status-bar-format-toggle"
        "Tyriar.sort-lines"
        "vincaslt.highlight-matching-tag"
        "VisualStudioExptTeam.vscodeintellicode"
        "wix.vscode-import-cost"
        "wooodhead.vscode-wrap-console-log-simple"
        "xabikos.JavaScriptSnippets"

    )

    local i=""

    # -----------------------------------------------------------------

    if cmd_exists "code"; then
        for i in "${VSCODE_EXTENSIONS_TO_INSTALL[@]}"; do
            execute \
                "code --install-extension $i" \
                "$i"
        done
    fi

}

symlink_vscode_settings() {
    declare -a VSCODE_SETTINGS=(

        "keybindings.json"
        "settings.json"

    )

    local i=""
    local sourceFile=""
    local targetFile=""

    # -----------------------------------------------------------------

    for i in "${VSCODE_SETTINGS[@]}"; do

        sourceFile="./visual_studio_code/$i"
        targetFile="~/Library/Application\ Support/Code/User/$i"

        if [ ! -e "$targetFile" ]; then

            execute \
                "ln -fs $sourceFile $targetFile" \
                "$targetFile → $sourceFile"

        elif [ "$(readlink "$targetFile")" == "$sourceFile" ]; then
            print_success "$targetFile → $sourceFile"
        else

            ask_for_confirmation "'$targetFile' already exists, do you want to overwrite it?"
            if answer_is_yes; then

                rm -rf "$targetFile"

                execute \
                    "ln -fs $sourceFile $targetFile" \
                    "$targetFile → $sourceFile"

            else
                print_error "$targetFile → $sourceFile"
            fi

        fi

    done
}

# ---------------------------------------------------------------------

main() {

    print_in_purple "\n   Visual Studio Code\n\n"

    install_vscode_extensions
    symlink_vscode_settings

}

main
