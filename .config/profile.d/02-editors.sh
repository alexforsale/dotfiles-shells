#!/bin/sh
# ~/.config/profile.d/02-editors.sh
# ${EDITOR}, ${VISUAL} and ${ALTERNATE_EDITOR}
# <alexforsale@yahoo.com>

# see https://unix.stackexchange.com/questions/4859/visual-vs-editor-what-s-the-difference
if [ "$(command -v emacs)" ];then # use emacsclient since emacs should already started as daemon
    export VISUAL="emacsclient -c"
    export EDITOR="emacsclient -t"
    if [ -z "${ORG_DIR}" ];then
        [ ! -d ~/Documents/org ] &&
            mkdir -p ~/Documents/org
    fi
    export ALTERNATE_EDITOR=${VISUAL}
elif [ "$(command -v gvim)" ];then # in case it's available, I don't use much of this
    export EDITOR="vim" # this should also installed
    export VISUAL="gvim"
    export VIMINIT="let \$MYVIMRC=\"${XDG_CONFIG_HOME}/vim/vimrc\" | source \${MYVIMRC}"
elif [ "$(command -v vim)" ];then # most distro provide this (linux that is)
    export EDITOR="vim"
    export VISUAL="vim"
    export VIMINIT="let \$MYVIMRC=\"${XDG_CONFIG_HOME}/vim/vimrc\" | source \${MYVIMRC}"
    mkdir -p "${XDG_CONFIG_HOME}/vim"
    touch "${XDG_CONFIG_HOME}/vim/vimrc"
else
    # most unix os provide this,
    # fallback when none of the other exists
    [ $(command -v vi) ] &&
        export EDITOR="vi"

    [ $(command -v nvim) ] &&
        export EDITOR="nvim"

    [ $(command -v leafpad) ] &&
        export EDITOR="leafpad"

    [ $(command -v l3afpad) ] &&
        export EDITOR="l3afpad"

    [ $(command -v kate) ] &&
        export EDITOR="kate"

    [ $(command -v pluma) ] &&
        export EDITOR="pluma"

    [ $(command -v kwrite) ] &&
        export EDITOR="kwrite"

    [ $(command -v scribe) ] &&
        export EDITOR="scribe"

    [ $(command -v geany) ] &&
        export EDITOR="geany"

    [ $(command -v gedit) ] &&
        export EDITOR="gedit"

    export VISUAL=${EDITOR}
    export ALTERNATE_EDITOR=${EDITOR}
fi
