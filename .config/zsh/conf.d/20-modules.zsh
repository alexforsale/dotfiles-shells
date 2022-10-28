#!/usr/bin/env zsh
# <alexforsale@yahoo.com>
# modules settings

# Autoload zsh modules when they are referenced
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile
# stat(1) is now commonly an external command, so just load zstat
zmodload -aF zsh/stat b:zstat
