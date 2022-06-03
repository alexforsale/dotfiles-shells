#!/bin/sh
# ~/.config/profile.d/99-elinks.sh
# configuration for elinks
# <alexforsale@yahoo.com>

if [ "$(command -v elinks)" ];then
    if [ -d "${XDG_CONFIG_HOME}"/elinks ];then
        if [ -d "${HOME}/.elinks" ]; then
            mv "${HOME}/.elinks" "${XDG_CONFIG_HOME}/elinks"
        else
            mkdir -p "${XDG_CONFIG_HOME}/elinks"
        fi
    fi
    export ELINKS_CONFDIR="${XDG_CONFIG_HOME}/elinks"
fi
