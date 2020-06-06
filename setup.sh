#!/bin/bash

# Declare
# =====================================================================

declare -r GITHUB_REPOSITORY="Guirec/dotfiles"

declare -r DOTFILES_ORIGIN="git@github.com:$GITHUB_REPOSITORY.git"
declare -r DOTFILES_TARBALL_URL="https://github.com/$GITHUB_REPOSITORY/tarball/master"
declare -r DOTFILES_UTILS_URL="https://raw.githubusercontent.com/$GITHUB_REPOSITORY/master/utils/utils.sh"

declare dotfilesDirectory="$HOME/Projects/Personal/dotfiles"

# Helper functions
# =====================================================================

download() {

    local url="$1"
    local output="$2"

    if command -v "curl" &> /dev/null; then

        curl -LsSo "$output" "$url" &> /dev/null
        #     │││└─ write output to file
        #     ││└─ show error messages
        #     │└─ don't show the progress meter
        #     └─ follow redirects

        return $?

    fi

    return 1

}

download_dotfiles() {

    local tmpFile=""

    # -----------------------------------------------------------------

    print_in_purple "\n • Download and extract archive\n\n"

    tmpFile="$(mktemp /tmp/XXXXX)"

    download "$DOTFILES_TARBALL_URL" "$tmpFile"
    print_result $? "Download archive" "true"
    printf "\n"

    # -----------------------------------------------------------------

    ask_for_confirmation "Do you want to store the dotfiles in '$dotfilesDirectory'?"

    if ! answer_is_yes; then
        dotfilesDirectory=""
        while [ -z "$dotfilesDirectory" ]; do
            ask "Please specify another location for the dotfiles (path): "
            dotfilesDirectory="$(get_answer)"
        done
    fi

    # Ensure the `dotfiles` directory is available

    while [ -e "$dotfilesDirectory" ]; do
        ask_for_confirmation "'$dotfilesDirectory' already exists, do you want to overwrite it?"
        if answer_is_yes; then
            rm -rf "$dotfilesDirectory"
            break
        else
            dotfilesDirectory=""
            while [ -z "$dotfilesDirectory" ]; do
                ask "Please specify another location for the dotfiles (path): "
                dotfilesDirectory="$(get_answer)"
            done
        fi
    done

    printf "\n"

    mkdir -p "$dotfilesDirectory"
    print_result $? "Create '$dotfilesDirectory'" "true"

    # Extract archive in the `dotfiles` directory.
    # -----------------------------------------------------------------

    extract "$tmpFile" "$dotfilesDirectory"
    print_result $? "Extract archive" "true"

    # -----------------------------------------------------------------

    rm -rf "$tmpFile"
    print_result $? "Remove archive"

    # -----------------------------------------------------------------

    cd "$dotfilesDirectory" \
        || return 1

}

download_utils() {

    local tmpFile=""

    tmpFile="$(mktemp /tmp/XXXXX)"

    download "$DOTFILES_UTILS_URL" "$tmpFile" \
        && . "$tmpFile" \
        && rm -rf "$tmpFile" \
        && return 0

   return 1

}

extract() {

    local archive="$1"
    local outputDir="$2"

    if command -v "tar" &> /dev/null; then
        tar -zxf "$archive" --strip-components 1 -C "$outputDir"
        return $?
    fi

    return 1

}

verify_os() {

    declare -r MINIMUM_MACOS_VERSION="10.10"

    local os_name=""
    local os_version=""

    # Check if the OS is macOS and it's above the required version.
    # -----------------------------------------------------------------

    os_name="$(uname -s)"

    if [ "$os_name" == "Darwin" ]; then

        os_version="$(sw_vers -productVersion)"

        if is_supported_version "$os_version" "$MINIMUM_MACOS_VERSION"; then
            return 0
        else
            printf "Sorry, this script is intended only for macOS %s+" "$MINIMUM_MACOS_VERSION"
        fi

    else
        printf "Sorry, this script is intended only for macOS!"
    fi

    return 1

}

# Main
# =====================================================================

main() {

    # Ensure that the following actions are made relative to this
    # file's path.
    # -----------------------------------------------------------------

    cd "$(dirname "${BASH_SOURCE[0]}")" \
        || exit 1

    # Load utils
    # -----------------------------------------------------------------

    if [ -x "utils.sh" ]; then
        . "utils.sh" || exit 1
    else
        download_utils || exit 1
    fi

    # Ensure the OS is supported and it's above the required version.
    # -----------------------------------------------------------------

    verify_os \
        || exit 1

    # Ask for the administrator password
    # -----------------------------------------------------------------

    ask_for_sudo

    # Check if this script was run directly (./setup.sh),
    # and if not, it most likely means that the dotfiles were not
    # yet set up, and they will need to be downloaded.
    # -----------------------------------------------------------------

    printf "%s" "${BASH_SOURCE[0]}" | grep "setup.sh" &> /dev/null \
        || download_dotfiles

    # Install Xcode CLT
    # -----------------------------------------------------------------

    ./macos/xcode-clt.sh

    # Install Homebrew
    # -----------------------------------------------------------------

    ./macos/homebrew.sh

    # Install mac-cli
    # -----------------------------------------------------------------

    ./macos/mas.sh

    # Install Git
    # -----------------------------------------------------------------

    ./macos/git.sh

    # Install Symfony
    # -----------------------------------------------------------------

    ./macos/symfony.sh

    # Install fonts
    # -----------------------------------------------------------------

    ./macos/fonts.sh

    # Install Zsh and Starship
    # -----------------------------------------------------------------

    ./macos/zsh.sh

    # Create directories
    # -----------------------------------------------------------------

    ./macos/create_directories.sh

    # Create symbolic links
    # -----------------------------------------------------------------

    ./macos/create_symbolic_links.sh

    # Create local config files
    # -----------------------------------------------------------------

    ./macos/create_local_config_files.sh

    # Install Node Version Manager and latest Node version
    # -----------------------------------------------------------------

    ./macos/nvm.sh

    # Install PHP and Composer
    # -----------------------------------------------------------------

    ./macos/php.sh

    # Install apps
    # -----------------------------------------------------------------

    ./macos/apps.sh

    # Cleanup
    # -----------------------------------------------------------------

    ./macos/cleanup.sh

    # Set system and softwares preferences
    # -----------------------------------------------------------------

    ./macos/preferences.sh

    # Initialize git repository
    # -----------------------------------------------------------------

    if cmd_exists "git"; then

        if [ "$(git config --get remote.origin.url)" != "$DOTFILES_ORIGIN" ]; then
            ./utils/initialize_git_repository.sh "$DOTFILES_ORIGIN"
        fi

    fi

    # Ask to restart
    # -----------------------------------------------------------------

    ./utils/restart.sh

}

main
