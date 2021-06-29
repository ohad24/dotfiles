# Dotfiles

Base on [Atlassian dotfiles tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

## First init
```bash
git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```