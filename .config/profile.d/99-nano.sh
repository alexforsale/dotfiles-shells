#!/bin/sh
# ~/.config/profile.d/99-nano.sh
# see https://nano-editor.org
# <alexforsale@yahoo.com>

if [ "$(command -v nano)" ]; then
    if [ ! -d "${XDG_CONFIG_HOME}/nano" ]; then
        mkdir -p "${XDG_CONFIG_HOME}/nano"
        if [ -f "${HOME}/.nanorc" ]; then
            mv "${HOME}/.nanorc" "${XDG_CONFIG_HOME}/nanorc"
        fi
    else
        if [ -f "${HOME}/.nanorc" ]; then
            mv "${HOME}/.nanorc" "${XDG_HOME_CONFIG}/nanorc.bak"
        fi
    fi
    # backups
    mkdir -p "${XDG_CONFIG_HOME}/nano/backups"
fi
