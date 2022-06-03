#!/bin/sh
# ~/.config/profile.d/99-npm.sh
# node packaged module configuration
# see https://wiki.archlinux.org/index.php/Node.js
# <alexforsale@yahoo.com>

if [ "$(command -v npm)" ];then
    if [ -d "$HOME/.node_modules/bin" ];then
        export PATH="$HOME/.node_modules/bin:$PATH"
    fi
    export npm_config_prefix=~/.node_modules
fi
