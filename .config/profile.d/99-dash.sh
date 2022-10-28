#!/bin/sh
# ~/.config/profile.d/99-dash.sh
# configuration for dash shells and other sh equivalent
# <alexforsale@yahoo.com>

if ([ "${SHELL}" = "/bin/sh" ] || [ "${SHELL}" = "/bin/dash" ]);then
   ENV=${HOME}/.shrc; export ENV
   [ -x /usr/bin/resizewin ] && /usr/bin/resizewin -z
fi
