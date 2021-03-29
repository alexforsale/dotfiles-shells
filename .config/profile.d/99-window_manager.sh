#!/bin/sh
# ~/.config/profile.d/99-window_manager.sh
# set fallback _WM
# <alexforsale@yahoo.com>

if [ -z "${_WM}" ]; then
    case "${DESKTOP_SESSION}" in
        "i3"|"i3-with-shmlog")
            export _WM=i3
            ;;
        "openbox")
            export _WM=openbox
            ;;
        *)
            if [ "$(command -v openbox-session)" ];then
                export _WM=openbox
            elif [ "$(command -v i3)" ];then
                export _WM=i3
            elif [ "$(command -v mate-session)" ];then
                export _WM=mate
            elif [ "$(command -v xfce4-session)" ];then
                export _WM=mate
            elif [ "$(command -v awesome)" ];then
                export _WM=awesome
            fi
    ;;
    esac
fi
