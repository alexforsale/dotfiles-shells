#!/bin/sh
# ~/.config/profile.d/99-guix.sh
# guix configuration
# <alexforsale@yahoo.com>

if [ -n "${GUIX_LOCPATH}" ];then
   # add /bin and /usr/bin to path
   # to add more PATH
   export PATH=${PATH}:/bin
   export PATH=${PATH}:/usr/bin
   # set the GUIX_BUILD_OPTIONS
   export GUIX_BUILD_OPTIONS="${GUIX_BUILD_OPTIONS} -v 3 -c 2 -M 2"
fi
