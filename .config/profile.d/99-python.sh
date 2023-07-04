#!/bin/sh
# ~/.config/profile.d/99-python.sh
# Python configuration
# <alexforsale@yahoo.com>

if [ $(command -v pipenv) ]; then
    [ -z "${PIPENV_VENV_IN_PROJECT}" ] &&
        export PIPENV_VENV_IN_PROJECT=1
fi

# pyenv
if [ $(command -v pyenv) ]; then
    eval "$(pyenv init -)"
fi
