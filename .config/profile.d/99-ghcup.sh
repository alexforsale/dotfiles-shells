#!/bin/sh
# ~/.config/profile.d/99-go.sh
# haskell's ghcup configuration
# <alexforsale@yahoo.com>

if [ "$(command -v ghcup)" ];then
   # set GOPATH to ~/.local so we don't need
   # to add more PATH
   [ -f "/home/alexforsale/.ghcup/env" ] && source "/home/alexforsale/.ghcup/env" # ghcup-env
fi
