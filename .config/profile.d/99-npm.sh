#!/bin/sh
# ~/.config/profile.d/99-npm.sh
# node packaged module configuration
# see https://wiki.archlinux.org/index.php/Node.js
# <alexforsale@yahoo.com>

if [ "$(command -v npm)" ];then
   export npm_config_prefix="${HOME}/.local"
fi
