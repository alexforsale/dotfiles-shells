#!/bin/sh
# ~/.config/profile.d/10-polybar.sh
# polybar setup
# <alexforsale@yahoo.com>

if [ -n "${DISPLAY}" ];then
    if [ "$(command -v polybar)" ];then
        if [ "${DISTRO}" = "freebsd" ]; then
            # not all modules are available in freebsd
            export POLYBAR_CONFIG="${POLYBAR_CONFIG:-desktop}"
        else
            # https://superuser.com/questions/877677/programatically-determine-if-an-script-is-being-executed-on-laptop-or-desktop/877796
            case $(cat /sys/class/dmi/id/chassis_type 2>/dev/null) in
                8|9|10|11)
                    # portable
                    export POLYBAR_CONFIG="${POLYBAR_CONFIG:-laptop}"
                    ;;
                *)
                    export POLYBAR_CONFIG="${POLYBAR_CONFIG:-desktop}"
                    ;;
            esac
            if [ -n "$(ls -A /sys/class/power_supply/ 2>/dev/null)" ];then
                POLYBAR_BATTERY="$(ls -A /sys/class/power_supply/ | grep 'BAT')"
                POLYBAR_ADAPTER="$(ls -A /sys/class/power_supply/ | grep 'ADP')"
            fi
        fi

        export POLYBAR_MONITOR=$(xrandr -q | grep " connected" | cut -d ' ' -f1)
    fi
fi
