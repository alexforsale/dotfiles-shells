#!/bin/sh
# ~/.config/profile.d/99-composer.sh
# composer path configuration
# <alexforsale@yahoo.com>

if [ "$(command -v composer)" ] &&
   [ -d "${HOME}/.config/composer/vendor/bin" ]; then
   export PATH="${HOME}/.config/composer/vendor/bin:${PATH}"
fi
