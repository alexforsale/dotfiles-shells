#!/bin/sh
# ~/.config/profile.d/99-ruby.sh
# ruby configuration
# <alexforsale@yahoo.com>

if [ "$(command -v ruby)" ] &&
       [ -d "$(ruby -e 'print Gem.user_dir')/bin" ];then
   PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
   export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
fi

export PATH
