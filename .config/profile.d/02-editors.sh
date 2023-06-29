#!/bin/sh
# ~/.config/profile.d/02-editors.sh
# ${EDITOR}, ${VISUAL} and ${ALTERNATE_EDITOR}
# <alexforsale@yahoo.com>

# chemacs-profile
if [ -e "${HOME}/.config/chemacs/profile" ]; then
    export CHEMACS_PROFILE="$(cat ${HOME}/.config/chemacs/profile)"
elif [ -e "${HOME}/.emacs-profile" ]; then
    export CHEMACS_PROFILE="$(cat ${HOME}/.emacs-profile)"
fi

[ -n "${CHEMACS_PROFILE}" ] && emacs_args="-s ${CHEMACS_PROFILE}"

# see https://unix.stackexchange.com/questions/4859/visual-vs-editor-what-s-the-difference
if [ "$(command -v emacs)" ]; then
    export VISUAL="${VISUAL:-emacsclient -c} ${emacs_args}"
    export EDITOR="${EDITOR:-emacsclient -t} ${emacs_args}"
    if [ -z "${ORG_DIR}" ]; then
        [ ! -d ~/Documents/org ] &&
            mkdir -p ~/Documents/org
    fi
    export ALTERNATE_EDITOR=${VISUAL}
#    if [ -z "${EMACSLOADPATH}" ]; then
#        [ -d /usr/share/emacs/site-lisp ] &&
#            export EMACSLOADPATH=/usr/share/emacs/site-lisp
#        [ -d /usr/local/share/emacs/site-lisp ] &&
#            export EMACSLOADPATH="${EMACSLOADPATH}:/usr/local/share/emacs/site-lisp"
#    fi
elif [ "$(command -v gvim)" ]; then # in case it's available, I don't use much of this
    export EDITOR="${EDITOR:-vim}"  # this should also installed
    export VISUAL="${VISUAL:-gvim}"
    export VIMINIT="let \$MYVIMRC=\"${XDG_CONFIG_HOME}/vim/vimrc\" | source \${MYVIMRC}"
elif [ "$(command -v vim)" ]; then # most distro provide this (linux that is)
    export EDITOR="${EDITOR:-vim}"
    export VISUAL="${VISUAL:-vim}"
    export VIMINIT="let \$MYVIMRC=\"${XDG_CONFIG_HOME}/vim/vimrc\" | source \${MYVIMRC}"
    mkdir -p "${XDG_CONFIG_HOME}/vim"
    touch "${XDG_CONFIG_HOME}/vim/vimrc"
else
    [ $(command -v nvim) ] &&
        export EDITOR="${EDITOR:-nvim}"

    [ $(command -v leafpad) ] &&
        export EDITOR="${EDITOR:-leafpad}"

    [ $(command -v l3afpad) ] &&
        export EDITOR="${EDITOR:-l3afpad}"

    [ $(command -v kate) ] &&
        export EDITOR="${EDITOR:-kate}"

    [ $(command -v pluma) ] &&
        export EDITOR="${EDITOR:-pluma}"

    [ $(command -v kwrite) ] &&
        export EDITOR="${EDITOR:-kwrite}"

    [ $(command -v scribe) ] &&
        export EDITOR="${EDITOR:-scribe}"

    [ $(command -v geany) ] &&
        export EDITOR="${EDITOR:-geany}"

    [ $(command -v gedit) ] &&
        export EDITOR="${EDITOR:-gedit}"

    [ $(command -v code) ] &&
        export EDITOR="${EDITOR:-code}"

    # most unix os provide this,
    [ $(command -v vi) ] &&
        export EDITOR="${EDITOR:-vi}"

    export VISUAL=${EDITOR}
    export ALTERNATE_EDITOR=${EDITOR}
fi
