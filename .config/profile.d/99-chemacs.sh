#!/bin/sh
# ~/.config/profile.d/99-chemacs.sh
# configuration for chemacs
# <alexforsale@yahoo.com>

for chemacs_profile in ~/.emacs-profile ~/.config/chemacs/profile; do
    if [ -e ${chemacs_profile} ]; then
        [ -z "${CHEMACS_PROFILE}" ] &&
            export CHEMACS_PROFILE=`cat ${chemacs_profile}`
    fi
done
