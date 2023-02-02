#!/bin/sh
# ~/.config/profile.d/99-fsharp.sh
# configuration for F#
# <alexforsale@yahoo.com>

if [[ -d "${HOME}/.dotnet/tools" ]]; then
    export PATH="${PATH}:${HOME}/.dotnet/tools"
fi
