#!/bin/sh
# ~/.config/profile.d/10-themes.sh
# themes configuration
# <alexforsale@yahoo.com>

# wal
#if [ "$(command -v wal)" ] && [ -z "${SSH_CLIENT}" ]; then
#    wal -R
#fi

if [ -n "${DESKTOP_SESSION}" ]; then
    case ${XDG_CURRENT_DESKTOP} in
        "KDE")
            if [ -n "${xrdb_args}" ]; then
                $(command -v xrdb) -merge "${xrdb_args}" "${HOME}"/.Xresources >/dev/null 2>&1
            fi
            ;;
    esac
fi
export GTK_THEME=Arc-Dark
