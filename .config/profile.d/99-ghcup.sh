#!/bin/sh
# ~/.config/profile.d/99-go.sh
# haskell's ghcup configuration
# <alexforsale@yahoo.com>

[ -f "/home/alexforsale/.ghcup/env" ] && source "/home/alexforsale/.ghcup/env" # ghcup-env

if [ -d "${HOME}/.ghcup/bin" ]; then
    contains "${PATH}" "${HOME}/.ghcup/bin" ||
        export PATH="${HOME}/.ghcup/bin:${PATH}"
