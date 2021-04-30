#!/bin/sh
# ~/.config/profile.d/04-security.sh
# various security apps
# <alexforsale@yahoo.com>

# from https://www.gnupg.org/documentation/manuals/gnupg/Invoking-GPG_002dAGENT.html
[ -z "${GPG_TTY}" ] && export GPG_TTY="$(tty)"

# https://wiki.gentoo.org/wiki/GnuPG#Automatically_starting_the_GPG_agent
if [ -n "$SSH_CONNECTION" ] ;then
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi

# gpg-agent freebsd
case "${DISTRO}" in
    freebsd)
        for i in curses gnome3 gtk2 qt5 ; do
            if [ $(command -v pinentry-${i}) ]; then
                _PINENTRY="$(command -v pinentry-${i})"
            else
                _PINENTRY="$(command -v pinentry)"
            fi
        done

        if [ ! "$(pgrep -u ${USER} -x gpg-agent)" ];then
            /usr/local/bin/gpg-agent --enable-ssh-support \
                --pinentry-program ${_PINENTRY} \
                --daemon "$@"
            if [ -f "${HOME}/.gpg-agent-info" ];then
                . "${HOME}/.gpg-agent-info"
                export GPG_AGENT_INFO SSH_AUTH_SOCK
            fi
        fi
        ;;
    *)
        # append pinentry-program since its location varied for each distro
        [ -z "$(pgrep -u ${USER} -x gpg-agent)" ] &&
            gpg-agent --pinentry-program "$(command -v pinentry)" > /dev/null 2>&1
        ;;
esac

# keychain
# https://wiki.gentoo.org/wiki/Keychain
if [ "$(command -v keychain)" ];then
    [ -z "${HOSTNAME}" ] && HOSTNAME="$(uname -n)"
    keychain --quiet --agents "gpg,ssh"
    [ -f "${HOME}/.keychain/${HOSTNAME}-sh" ] && \
        . "${HOME}/.keychain/${HOSTNAME}-sh"
    [ -f "${HOME}/.keychain/${HOSTNAME}-sh-gpg" ] && \
        . "${HOME}/.keychain/${HOSTNAME}-sh-gpg"
fi
