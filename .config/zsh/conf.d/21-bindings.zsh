#!/usr/bin/env zsh
# <alexforsale@yahoo.com>
# keybindings

bindkey -e # emacs key bindings
# but use the vi navigation keys (hjkl) besides cursor keys in menu completion
zstyle ':completion:*' menu select ''
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char        # left
bindkey -M menuselect 'k' vi-up-line-or-history   # up
bindkey -M menuselect 'l' vi-forward-char         # right
bindkey -M menuselect 'j' vi-down-line-or-history # bottom
