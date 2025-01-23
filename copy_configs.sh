#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
cd $SCRIPT_DIR
echo $SCRIPT_DIR
cp -rf /home/nrv/.oh-my-zsh/ /home/nrv/git/dotfiles/oh-my-zsh/

cp -f /home/nrv/.vimrc /home/nrv/git/dotfiles/vimrc
cp -f /home/nrv/.zshrc /home/nrv/git/dotfiles/zshrc
cp -f /home/nrv/.gitconfig /home/nrv/git/dotfiles/gitcontig

cp -f /home/nrv/.config/background   /home/nrv/git/dotfiles/background

cp -f /home/nrv/.config/monitors.xml /home/nrv/git/dotfiles/monitors.xml
cp -f /home/nrv/.config/appimagelauncher.cfg /home/nrv/git/dotfiles/appimagelauncher.cfg
cp -fr /home/nrv/.config/environment.d/ /home/nrv/git/dotfiles/environment.d


