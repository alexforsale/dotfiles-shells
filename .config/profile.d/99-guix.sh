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
   contains "${GUIX_BUILD_OPTIONS}" "-v 3 -c 2 -M 2" ||
       export GUIX_BUILD_OPTIONS="${GUIX_BUILD_OPTIONS} -v 3 -c 2 -M 2"
fi

if [ -d "${HOME}/.guix-profile/share/emacs/site-lisp" ]; then
    contains "${EMACSLOADPATH}" "${HOME}/.guix-profile/share/emacs/site-lisp" ||
      export EMACSLOADPATH="${HOME}/.guix-profile/share/emacs/site-lisp:${EMACSLOADPATH}"
    contains "${XDG_DATA_DIRS}" "${HOME}/.guix-profile/share" ||
      export XDG_DATA_DIRS="${HOME}/.guix-profile/share:${XDG_DATA_DIRS}"
fi

