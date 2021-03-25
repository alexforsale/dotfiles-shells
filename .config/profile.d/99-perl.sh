#!/bin/sh
# ~/.config/profile.d/99-perl.sh
# configuration for perl
# <alexforsale@yahoo.com>
[ ! -d "${HOME}/.local/perl5/bin" ] &&
    mkdir -p "${HOME}/.local/perl5/bin"
[ ! -d "${HOME}/.local/perl5/lib/perl5" ] &&
    mkdir -p "${HOME}/.local/perl5/lib/perl5"

PATH="${HOME}/.local/perl5/bin${PATH:+:${PATH}}"
PERL5LIB="${HOME}/.local/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
PERL_LOCAL_LIB_ROOT="${HOME}/.local/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
PERL_MB_OPT="--install_base \"${HOME}/.local/perl5\""
PERL_MM_OPT="INSTALL_BASE=${HOME}/.local/perl5"

export PATH PERL5LIB PERL_LOCAL_LIB_ROOT PERL_MB_OPT PERL_MM_OPT
