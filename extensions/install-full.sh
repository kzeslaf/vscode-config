#!/bin/bash

set -e

extensions=(
    # bookmarks
    alefragnani.Bookmarks

    # c/c++
    ms-vscode.cpptools
    ms-vscode.cmake-tools

    # java
    redhat.java

    # latex
    james-yu.latex-workshop

    # plantuml
    jebbs.plantuml

    # python
    ms-python.python

    # rewrap
    stkb.rewrap

    # rust
    matklad.rust-analyzer

    # shellcheck
    timonwong.shellcheck

    # spellchecker
    streetsidesoftware.code-spell-checker
    streetsidesoftware.code-spell-checker-german
    streetsidesoftware.code-spell-checker-polish
)

for i in "${extensions[@]}"; do
    code --install-extension "$i"
done
