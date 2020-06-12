#!/bin/bash

set -e

# Propositions:
#    - CMake Tools (vector-of-bool)
#    - Jenkins Pipeline Linter Connector (janjoerke)
#    - Nagios (tmlo)

extensions=(
    # C/C++
    ms-vscode.cpptools

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
