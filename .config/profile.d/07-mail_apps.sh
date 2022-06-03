#!/bin/sh
# ~/.config/profile.d/07-mail_apps.sh
# ${MAIL_APP} configuration
# <alexforsale@yahoo.com>

if [ "$(command -v alpine)" ]; then
    export MAIL_APP=${MAIL_APP:-alpine}
elif [ "$(command -v balsa)" ]; then
    export MAIL_APP=${MAIL_APP:-balsa}
elif [ "$(command -v evolution)" ]; then
    export MAIL_APP=${MAIL_APP:-evolution}
elif [ "$(command -v geary)" ]; then
    export MAIL_APP=${MAIL_APP:-geary}
elif [ "$(command -v kmail)" ]; then
    export MAIL_APP=${MAIL_APP:-kmail}
elif [ "$(command -v kube)" ]; then
    export MAIL_APP=${MAIL_APP:-kube}
elif [ "$(command -v mailspring)" ]; then
    export MAIL_APP=${MAIL_APP:-mailspring}
elif [ "$(command -v thunderbird)" ]; then
    export MAIL_APP=${MAIL_APP:-thunderbird}
fi
