#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

(
    cd "$DIR"

    for i in python python3
    do
        virtualenv -p $i --no-site-packages ~/.pyenv/$i

        source ~/.pyenv/$i/bin/activate

        pip install pip --upgrade
        pip install -r requirements_$i.txt

        deactivate
    done

    #
    # Symlink python2 to python
    #
    (
        cd ~/.pyenv/
        ln -s python python2
    )

    #
    # Install pysvn in python2 venv
    #
    (
        cd ~/.pyenv/python2/lib/python2.7/site-packages
        ln -s /usr/lib/python2.7/dist-packages/pysvn pysvn
    )
)
