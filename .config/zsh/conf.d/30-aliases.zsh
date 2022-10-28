#!/usr/bin/env zsh
# <alexforsale@yahoo.com>
# zsh aliases

# Aliases
alias ls="ls ${lsflags}"
alias ll="ls ${lsflags} -l"
alias la="ls ${lsflags} -la"
alias h="history"
alias hg="history -1000 | grep -i"
alias m="less"
alias dotconfig="$(command -v git) --git-dir=${HOME}/Projects/personal/dotfiles --work-tree=${HOME}"
