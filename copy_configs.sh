#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
cd $SCRIPT_DIR
cp -r /home/nrv/.config/ ./dotconfig/
cp -r /home/nrv/.oh-my-zsh/ ./oh-my-zsh/

cp -f /home/nrv/.vimrc ./vimrc
cp -f /home/nrv/.zshrc ./zshrc
cp -f /home/nrv/.zprofile ./zprofile
cp -f /home/nrv/.gitconfig ./gitcontig
