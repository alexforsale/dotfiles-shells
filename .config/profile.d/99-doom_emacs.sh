#!/bin/sh
# ~/.config/profile.d/99-doom_emacs.sh
# doom emacs path
# <alexforsale@yahoo.com>

if [ "$(command -v emacs)" ] &&
    [ -e "${HOME}"/.emacs.d/bin/doom ]; then
    [ ! "$(command -v doom)" ] &&
        export PATH="${PATH}:${HOME}/.emacs.d/bin"
elif [ -e "${HOME}/.config/doom/bin/doom" ]; then
    [ ! "$(command -v doom)" ] &&
        export PATH="${PATH}/.config/doom/bin"
fi
