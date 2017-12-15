#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

(
    cd "$DIR"

    virtualenv --no-site-packages ~/.pyenv/py2

    source ~/.pyenv/py2/bin/activate

    pip install pip --upgrade
    pip install -r requirements.txt

    #
    # Install pysvn in venv
    #

    cd ~/.pyenv/py2/lib/python2.7/site-packages
    ln -s /usr/lib/python2.7/dist-packages/pysvn pysvn
)
