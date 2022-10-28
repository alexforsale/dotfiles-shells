#!/bin/sh
# ~/.config/profile.d/99-password-store.sh
# configuration for GNU Screen
# <alexforsale@yahoo.com>

if [ -f /run/current-system/profile/lib/password-store/extensions/otp.bash ]; then
    [ ! -L "${HOME}/.password-store/.extensions/otp.bash" ] &&
        ln -s /run/current-system/profile/lib/password-store/extensions/otp.bash \
           "${HOME}/.password-store/.extensions/"
    export PASSWORD_STORE_ENABLE_EXTENSIONS=true
fi
