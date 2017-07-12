#!/bin/sh

cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
cp clang-format ~/.clang-format
cp zprofile ~/.zprofile
cp xinitrc ~/.xinitrc
cp xserverrc ~/.xserverrc
cp xprofile ~/.xprofile
cp Xmodmap ~/.Xmodmap
cp gitconfig ~/.gitconfig
cp profile ~/.profile

mkdir -p ~/.config/i3
cp config/i3/config ~/.config/i3/config

mkdir -p ~/bin
cp bin/* ~/bin/
cp usr/share/* /usr/share/
