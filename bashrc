#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ANDROID_SDK=/opt/android-sdk
ANDROID_NDK=${HOME}/bin/android-ndk-r9c
ANDROID_SWT=/usr/share/java
ANDROID_HOME=${ANDROID_SDK}

VISUAL=vim
EDITOR=$VISUAL

PATH=$PATH:~/bin:~/bin/games:~/bin/bash:~/.cabal/bin:$ANDROID_SDK/tools:$ANDROID_NDK

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first -lh'
alias valgrind='valgrind --suppressions=$HOME/.vg.supp'
alias nightly='firefox-nightly'

alias steam-wine='wine $HOME/.wine/drive_c/Program\ Files/Steam/Steam.exe'
alias reset-mouse='$HOME/bin/bash/reset-mouse.sh'
alias qsplits='$HOME/splits/keys.sh global && nohup urn-gtk $HOME/splits/q.json > /dev/null 2> /dev/null &'
alias qsplits-e1='$HOME/splits/keys.sh global && nohup urn-gtk $HOME/splits/q-e1.json > /dev/null 2> /dev/null &'
alias qsplits-e2='$HOME/splits/keys.sh global && nohup urn-gtk $HOME/splits/q-e2.json > /dev/null 2> /dev/null &'
alias qsplits-e3='$HOME/splits/keys.sh global && nohup urn-gtk $HOME/splits/q-e3.json > /dev/null 2> /dev/null &'
alias qsplits-e4='$HOME/splits/keys.sh global && nohup urn-gtk $HOME/splits/q-e4.json > /dev/null 2> /dev/null &'
alias discord='discord > /dev/null 2> /dev/null &'

PS1='[\u@\h \W]\$ '
export PATH="$HOME/.cargo/bin:$PATH"
