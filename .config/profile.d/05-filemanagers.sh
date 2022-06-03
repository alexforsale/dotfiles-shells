#!/bin/sh
# ~/.config/profile.d/05-filemanagers.sh
# filemanager configuration
# <alexforsale@yahoo.com>

# file manager
if [ "$(command -v ranger)" ];then
    export FILE=${FILE:-ranger}
elif [ "$(command -v pcmanfm)" ]; then
    export FILE=${FILE:-pcmanfm}
elif [ "$(command -v thunar)" ];then
    export FILE=${FILE:-thunar}
elif [ "$(command -v caja)" ];then
    export FILE=${FILE:-caja}
elif [ "$(command -v nautilus)" ];then
    export FILE=${FILE:-nautilus}
elif [ "$(command -v nemo)" ];then
    export FILE=${FILE:-nemo}
elif [ "$(command -v dolphin)" ];then
    export FILE${FILE:-dolpin}
elif [ "$(command -v rox)" ];then
    export FILE=${FILE:-rox}
fi
