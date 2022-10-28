#!/usr/bin/env zsh
# <alexforsale@yahoo.com>
# other uncategorized zsh settings

setopt interactive_comments     # allow # comments in shell; good for copy/paste
unsetopt correct_all            # I don't care for 'suggestions' from ZSH
export BLOCK_SIZE="'1"          # Add commas to file sizes

# automatically remove duplicates from these arrays
typeset -U path cdpath fpath manpath

# warning if file exists ('cat /dev/null > ~/.zshrc')
setopt nocheckjobs

MAILCHECK=300
