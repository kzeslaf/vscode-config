#!/bin/bash

set -e

extensions=(
    # c/c++
    ms-vscode.cpptools
    ms-vscode.cmake-tools

    # rewrap
    stkb.rewrap

    # spellchecker
    streetsidesoftware.code-spell-checker
    streetsidesoftware.code-spell-checker-polish
)

for i in "${extensions[@]}"; do
    code --install-extension "$i"
done
