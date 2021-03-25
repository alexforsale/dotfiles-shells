#!/bin/sh
# ~/.config/profile.d/99-freebsd.sh
# configuration for FreeBSD
# <alexforsale@yahoo.com>

if [ "${DISTRO}" = "freebsd" ];then
    ENV=${HOME}/.shrc; export ENV
    [ -x /usr/bin/resizewin ] && /usr/bin/resizewin -z
    [ -x /usr/bin/fortune ] && /usr/bin/fortune freebsd-tips
fi
