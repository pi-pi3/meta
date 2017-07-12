#!/bin/sh

export PATH=$PATH:~/bin:$(ruby -rubygems -e "puts Gem.user_dir")/bin

export VISUAL=gvim
export EDITOR=vim
export BROWSER=firefox-nightly
export PAGER=less
export TERMINAL="st -t st"

export SUDO_ASKPASS=$HOME/bin/askpass

if [ -z "$DISPLAY" -a $(echo "$TTY" | sed 's/\/dev\/tty//') -le 2 ]; then
    exec xinit -- :1
fi
