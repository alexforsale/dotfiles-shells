#!/bin/sh
# ~/.config/profile.d/10-themes.sh
# themes configuration
# <alexforsale@yahoo.com>

# wal
if [ $(command -v wal) ] && [ -z "${SSH_CLIENT}" ]; then
    wal -R
fi
