#!/bin/bash

set -e

# Propositions:
#    - C/C++ (Microsoft)
#    - CMake Tools (vector-of-bool)
#    - Jenkins Pipeline Linter Connector (janjoerke)
#    - Nagios (tmlo)
#    - PlantUML (jebbs)

extensions=(
    # java
    redhat.java

    # latex
    james-yu.latex-workshop

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
