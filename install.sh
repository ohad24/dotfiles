#!/bin/bash

set -e

# * Update apt and install git and zsh
sudo apt update
sudo apt install -y git zsh

# * Delete $HOME/dotfiles directory if exists.
DOTFILES_DIR=$HOME/dotfiles
if [ -d "$DOTFILES_DIR" ]; then
    printf '%s\n' "Removing Lock ($DOTFILES_DIR)"
    rm -rf "$DOTFILES_DIR"
fi

# * Download ohad24/dotfiles repo via HTTPS
git clone --bare https://github.com/ohad24/dotfiles.git $DOTFILES_DIR
# * For SSH use the following command
# git clone --bare git@github.com:ohad24/dotfiles.git $HOME/dotfiles

# * Checkout the dotfiles repo
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME reset --hard
# ! /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME checkout

# * Download and install OH-MY-ZSH with --unattended and --keep-zshrc flags.
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh --unattended --keep-zshrc

# * Download powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# * Download plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

# * Change the defalt shell
sudo chsh -s $(which zsh) $(whoami)

# * Run ZSH
zsh
