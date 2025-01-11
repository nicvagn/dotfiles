#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
cd $SCRIPT_DIR
echo $SCRIPT_DIR
cp -r /home/nrv/.oh-my-zsh/ /home/nrv/git/dotfiles/oh-my-zsh/

cp -f /home/nrv/.vimrc /home/nrv/git/dotfiles/vimrc
cp -f /home/nrv/.zshrc /home/nrv/git/dotfiles/zshrc
cp -f /home/nrv/.zprofile /home/nrv/git/dotfiles/zprofile
cp -f /home/nrv/.gitconfig /home/nrv/git/dotfiles/gitcontig
