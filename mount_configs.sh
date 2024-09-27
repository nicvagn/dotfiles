#!/usr/bin/env bash

# SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
cd $SCRIPT_DIR
echo "mounting config's w mount --bind"
mount --bind /home/nrv/.config/ /home/nrv/git/dotfiles/dotconfig/
mount --bind /home/nrv/.config/nvim/ /home/nrv/git/dotfiles/nvim/
mount --bind /home/nrv/.oh-my-zsh/ /home/nrv/git/dotfiles/oh-my-zsh/
mount --bind /home/nrv/.vimrc /home/nrv/git/dotfiles/vimrc
mount --bind /home/nrv/.zshrc /home/nrv/git/dotfiles/zshrc
mount --bind /home/nrv/.zprofile /home/nrv/git/dotfiles/zprofile
mount --bind /home/nrv/.gitconfig /home/nrv/git/dotfiles/gitcontig
