#!/bin/sh
# ~/.config/profile.d/99-ruby.sh
# ruby configuration
# <alexforsale@yahoo.com>

if [ "$(command -v ruby)" ];then
    if [ -d "$(ruby -e 'print Gem.user_dir')/bin" ];then
        PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
    fi
fi
export PATH
