#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n   App Store\n"

# ---------------------------------------------------------------------

mas_install "Paste" "967805235"
mas_install "Spark" "1176895641"
mas_install "Tweetbot" "1384080005"
mas_install "Xcode" "497799835"
