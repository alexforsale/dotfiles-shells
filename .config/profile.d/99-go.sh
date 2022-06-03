#!/bin/sh
# ~/.config/profile.d/99-go.sh
# $GOPATH configuration
# <alexforsale@yahoo.com>

if [ "$(command -v go)" ];then
    # set GOPATH to ~/.local so we don't need
    # to add more PATH
    export GOPATH=${GOPATH:-~/.local}
fi
