#!/usr/bin/env zsh
# <alexforsale@yahoo.com>
# ux, themes, and style settings

# ctrl-s will no longer freeze the terminal.
stty erase "^?"

# alert me if something failed
#setopt printexitvalue

# don't warn me about bg processes when exiting
setopt nocheckjobs

# try to avoid the 'zsh: no matches found...'
setopt nonomatch

if [ $(ls --version &>/dev/null) ]; then
    lsflags="--color --group-directories-first -F"
else
    lsflags="-GF"
    export CLICOLOR=1
fi

# simple prompt
case "${DISTRO}" in
    "artix"|"arch")
        # blue
        prompt="%F{green}%n%f%F{white}@%f%F{blue}%M%f: %F{white}%~%f %# "
        ;;
    "debian"|"devuan"|"ubuntu")
        prompt="%F{green}%n%f%F{white}@%f%F{purple}%M%f: %F{white}%~%f %# "
        ;;
    "freebsd")
        prompt="%F{green}%n%f%F{white}@%f%F{red}%M%f: %F{white}%~%f %# "
        ;;
    "gentoo")
        prompt="%F{green}%n%f%F{white}@%f%B%F{magenta}%M%f%b: %F{white}%~%f %# "
        ;;
    "guix")
        prompt="%F{green}%n%f%F{white}@%f%B%F{yellow}%M%f%b: %F{white}%~%f %# "
        ;;
esac
