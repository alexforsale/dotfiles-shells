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
    # network interface
    if [ $(command -v nmcli) ]; then
        export POLYBAR_ETH=$(nmcli device | awk '$2=="ethernet" {print $1}')
        export POLYBAR_WLAN=$(nmcli device | awk '$2=="wifi" {print $1}')
    elif [ $(command -v ip) ]; then
        export POLYBAR_ETH=$(ip link show | grep "state UP"| awk 'NR==1 {print $2}' |sed 's/\://')
        #TODO: wireless
    fi
fi
