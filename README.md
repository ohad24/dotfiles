# Dotfiles

Base on [Atlassian dotfiles tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

## Prerequisites
* curl
* sudo access

## Install
```bash
curl -sSL https://raw.githubusercontent.com/ohad24/dotfiles/main/dotfiles-install.sh | sh
```

## First init
Start from scratch.
```bash
git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```