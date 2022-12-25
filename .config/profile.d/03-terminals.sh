#!/bin/sh
# ~/.config/profile.d/03-terminal.sh
# ${TERMINAL} apps
# <alexforsale@yahoo.com>

# Terminal apps
if [ "$(command -v gnome-terminal)" ]; then
    export TERMINAL=${TERMINAL:-gnome-terminal}
elif [ "$(command -v terminator)" ]; then
    export TERMINAL=${TERMINAL:-terminator}
elif [ "$(command -v tilda)" ]; then
    export TERMINAL=${TERMINAL:-tilda}
elif [ "$(command -v guake)" ]; then
    export TERMINAL=${TERMINAL:-guake}
elif [ "$(command -v konsole)" ]; then
    export TERMINAL=${TERMINAL:-konsole}
elif [ "$(command -v lxterminal)" ]; then
    export TERMINAL=${TERMINAL:-lxterminal}
elif [ "$(command -v yakuake)" ]; then
    export TERMINAL=${TERMINAL:-yakuake}
elif [ "$(command -v st)" ]; then
    export TERMINAL=${TERMINAL:-st}
elif [ "$(command -v terminology)" ]; then
    export TERMINAL=${TERMINAL:-terminology}
elif [ "$(command -v xfce4-terminal)" ]; then
    export TERMINAL=${TERMINAL:-xfce4-terminal}
elif [ "$(command -v lilyterm)" ]; then
    export TERMINAL=${TERMINAL:-lilyterm}
elif [ "$(command -v alacritty)" ]; then
    export TERMINAL=${TERMINAL:-alacritty}
elif [ "$(command -v xterm)" ]; then
    export TERMINAL=${TERMINAL:-xterm}
elif [ "$(command -v urxvt)" ]; then
    export TERMINAL=${TERMINAL:-urxvt}
fi
