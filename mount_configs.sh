#!/usr/bin/env bash

# SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
cd $SCRIPT_DIR
echo "monting config's w mout --bind"
mount --bind /home/nrv/.config/ /home/nrv/git/dotfiles/dotconfig/
mount --bind /home/nrv/.config/nvim/ /home/nrv/git/dotfiles/nvim/
mount --bind /home/nrv/.oh-my-bash/ /home/nrv/git/dotfiles/oh-my-bash/
