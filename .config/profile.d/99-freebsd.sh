#!/bin/sh
# ~/.config/profile.d/99-freebsd.sh
# configuration for FreeBSD
# <alexforsale@yahoo.com>

if [ "${DISTRO}" = "freebsd" ];then
   ENV=${HOME}/.shrc; export ENV
   export PAGER=less
   [ -x /usr/bin/resizewin ] && /usr/bin/resizewin -z
   [ -x /usr/bin/fortune ] && /usr/bin/fortune freebsd-tips
   # Let sh(1) know it's at home, despite /home being a symlink.
   if [ "$PWD" != "$HOME" ] && [ "$PWD" -ef "$HOME" ] ; then cd ; fi
   cd ${HOME}
fi
