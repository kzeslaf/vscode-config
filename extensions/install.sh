#!/bin/bash

set -e

# Propositions:
#    - C/C++ (Microsoft)
#    - CMake Tools (vector-of-bool)
#    - Nagios (tmlo)
#    - PlantUML (jebbs)
#    - torn4dom4n.latex-support

extensions=(
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
