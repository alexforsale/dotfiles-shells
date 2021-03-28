#!/bin/sh
# ~/.config/profile.d/99-doom_emacs.sh
# doom emacs path
# <alexforsale@yahoo.com>

if [ "$(command -v emacs)" ] &&
       [ -e ~/.emacs.d/bin/doom ];then
    [ ! $(command -v doom) ] &&
        export PATH=${PATH}:~/.emacs.d/bin
fi
