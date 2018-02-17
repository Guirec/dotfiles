#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils/utils.sh"

# ---------------------------------------------------------------------

print_in_purple "\n • Installs\n"

# ---------------------------------------------------------------------

./apps/browsers.sh
./apps/coding.sh
./apps/design.sh
./apps/work.sh
./apps/miscellaneous.sh
./apps/appstore.sh
