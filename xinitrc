#!/bin/zsh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
userdir=$HOME/.xinitrc.d

sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
sysdir=/etc/X11/xinit/xinitrc.d

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -d $sysdir ]; then
    for f in $sysdir/?*.sh; do
        [ -x $f ] && . $f
    done
    unset f
fi

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

if [ -d $userdir ]; then
    for f in $userdir/?*.sh; do
        [ -x $f ] && . $f
    done
    unset f
fi

[ -x $HOME/.xprofile ] && . $HOME/.xprofile

i3 -V >> ~/.local/share/i3/log-$(date +'%F-%k-%M-%S') 2>&1
