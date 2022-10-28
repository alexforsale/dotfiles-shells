#!/bin/sh
# ~/.config/profile.d/99-cargo.sh
# cargo configuration
# https://wiki.archlinux.org/index.php/Rust#Cargo
# <alexforsale@yahoo.com>

if [ -d "$HOME/.cargo/bin" ];then
   export PATH=$HOME/.cargo/bin:$PATH
fi
