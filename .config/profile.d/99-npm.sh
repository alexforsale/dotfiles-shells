#!/bin/sh
# ~/.config/profile.d/99-npm.sh
# node packaged module configuration
# see https://wiki.archlinux.org/index.php/Node.js
# <alexforsale@yahoo.com>

if [ "$(command -v npm)" ];then
   export npm_config_prefix="${HOME}/.local"
fi

if [ -d "${HOME}/.config/nvm" ]; then
    export NVM_DIR="${HOME}/.config/nvm"
    [ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
    [ -n "${BASH}" ] &&
        [ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion
    if [ -n "${npm_config_prefix}" ]; then
        unset npm_config_prefix
    fi
fi
