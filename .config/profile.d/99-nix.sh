#!/bin/sh
# ~/.config/profile.d/99-ruby.sh
# nix configuration
# <alexforsale@yahoo.com>

[ -d "${HOME}/.nix-profile/bin" ] && export PATH=${PATH}:${HOME}/.nix-profile/bin

if [ -n "${GUIX_LOCPATH}" ]; then
    # source profile.d
    [ -e /run/current-system/profile/etc/profile.d/nix.sh ] && . /run/current-system/profile/etc/profile.d/nix.sh
    [ -e /run/current-system/profile/etc/profile.d/nix-daemon.sh ] && . /run/current-system/profile/etc/profile.d/nix-daemon.sh
    if [ -d "${HOME}/.nix-profile/share/icons" ]; then
        contains "${XCURSOR_PATH}" "${HOME}/.nix-profile/share/icons" ||
            export XCURSOR_PATH="${XCURSOR_PATH}:${HOME}/.nix-profile/share/icons"
    fi
    if [ -d "${HOME}/.nix-profile/share" ]; then
        contains "${XDG_DATA_DIRS}" "${HOME}/.nix-profile/share" ||
            export XDG_DATA_DIRS="${HOME}/.nix-profile/share:${XDG_DATA_DIRS}"
    fi
fi
