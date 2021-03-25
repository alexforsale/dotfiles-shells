#!/bin/sh
# ~/.config/profile.d/99-ccache.sh
# ccache configuration
# <alexforsale@yahoo.com>
if [ "$(command -v ccache 2>/dev/null)" ] &&
       [ -d "/usr/lib/ccache/bin" ]; then
    if [ "${SHELL}" != "/bin/sh" ] &&
           [ "$(command -v pathprepend)" ]; then
        pathprepend /usr/lib/ccache/bin
    else
        export PATH=/usr/lib/ccache/bin:"${PATH}"
    fi
fi

case "${DISTRO}" in
    "gentoo")
        [ -r /var/cache/ccache ] &&
            export CCACHE_DIR="/var/cache/ccache"
        ;;
esac
