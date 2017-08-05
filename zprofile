#!/bin/zsh

export PATH=$PATH:~/bin:$(ruby -rubygems -e "puts Gem.user_dir")/bin

export EDITOR=vim
export PAGER=less
export TERMINAL="st -t st"

if [[ -z $DISPLAY ]] && [[ $(echo $TTY | sed 's/\/dev\/tty//') -le 2 ]]; then
    exec xinit -- :1
fi
