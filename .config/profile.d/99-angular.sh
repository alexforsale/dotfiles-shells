#!/bin/sh
# ~/.config/profile.d/99-angular.sh
# angular configuration
# <alexforsale@yahoo.com>
if [ $(command -v ng) ]; then
    source <(ng completion script)
fi
