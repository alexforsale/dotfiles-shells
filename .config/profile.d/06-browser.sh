#!/bin/sh
# ~/.config/profile.d/06-browser.sh
# ${BROWSER} configuration
# <alexforsale@yahoo.com>

# Browser
if [ "$(command -v google-chrome-stable)" ]; then
    export BROWSER=${BROWSER:-google-chrome-stable}
elif [ "$(command -v midori)" ];then
    export BROWSER=${BROWSER:-midori}
elif [ "$(command -v qutebrowser)" ];then
    export BROWSER=${BROWSER:-qutebrowser}
elif [ "$(command -v chromium)" ];then
    export BROWSER=${BROWSER:-chromium}
elif [ "$(command -v firefox)" ];then
    export BROWSER=${BROWSER:-firefox}
elif [ "$(command -v seamonkey)" ];then
    export BROWSER=${BROWSER:-seamonkey}
elif [ "$(command -v falkon)" ];then
    export BROWSER=${BROWSER:-falkon}
else
    [ ${command -v elinks} ] &&
        export BROWSER=${BROWSER:-elinks}

    [ ${command -v lynx} ] &&
        export BROWSER=${BROWSER:-lynx}

    [ ${command -v w3m} ] &&
        export BROWSER=${BROWSER:-w3m}

    [ ${command -v links} ] &&
        export BROWSER="${BROWSER:-links -g}"
fi
