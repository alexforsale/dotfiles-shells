#!/usr/bin/env zsh
# <alexforsale@yahoo.com>
# minimal zsh

if [ -d "${ZDOTDIR}"/conf.d ]; then
    for files in "${ZDOTDIR}"/conf.d/*.zsh; do
        [ -r "${files}" ] &&
            . "${files}"
    done

    unset files
fi

# local zshrc
if [ -f "${ZDOTDIR}"/.zshrc.local ]; then
    . "${ZDOTDIR}"/.zshrc.local
fi
