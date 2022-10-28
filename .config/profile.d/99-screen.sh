#!/bin/sh
# ~/.config/profile.d/99-screen.sh
# configuration for GNU Screen
# <alexforsale@yahoo.com>

if [ "$(command -v screen)" ] &&
       [ ! -d "${XDG_CONFIG_HOME}/screen" ]; then
    if [ -d "${HOME}/.screen" ]; then
        mv "${HOME}/.screen" "${XDG_CONFIG_HOME}/screen"
    else
        mkdir -p "${XDG_CONFIG_HOME}/screen"
    fi
fi
export SCREENDIR="${XDG_CONFIG_HOME}/screen"
chmod 700 "${SCREENDIR}"
export SCREENRC="${SCREENDIR}/config"
