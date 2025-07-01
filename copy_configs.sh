#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
cd $SCRIPT_DIR
echo $SCRIPT_DIR
cp -rf /home/nrv/.oh-my-zsh/ /home/nrv/git/dotfiles/oh-my-zsh/

cp -f /home/nrv/.vimrc ./vimrc
cp -f /home/nrv/.zshrc ./zshrc
cp -f /home/nrv/.gitconfig ./gitcontig

cp -f /home/nrv/.config/background  ./background

cp -f /home/nrv/.config/monitors.xml ./monitors.xml
cp -fr /home/nrv/.config/environment.d/ ./

cp -fr /home/nrv/.config/enchant ./dotconfig_enchant

dconf dump / > ./dconf_dump
