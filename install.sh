#!/bin/sh

cp -u vimrc ~/.vimrc
cp -u zshrc ~/.zshrc
cp -u clang-format ~/.clang-format
cp -u zprofile ~/.zprofile
cp -u xinitrc ~/.xinitrc
cp -u xserverrc ~/.xserverrc
cp -u xprofile ~/.xprofile
cp -u Xmodmap ~/.Xmodmap
cp -u gitconfig ~/.gitconfig
cp -u profile ~/.profile

mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
cp -u config/i3/config ~/.config/i3/config
cp -u config/i3status/config ~/.config/i3status/config

mkdir -p ~/bin
cp -u bin/* ~/bin/
sudo cp -u usr/share/* /usr/share/
