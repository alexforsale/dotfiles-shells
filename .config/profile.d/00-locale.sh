#!/bin/sh
# ~/.config/profile.d/00-locale.sh
# locale settings
# <alexforsale@yahoo.com>

# language
[ -z "${LANG}" ] && export LANG=en_US.UTF-8
[ -z "${MM_CHARSET}" ] && export MM_CHARSET=en_US.UTF-8
