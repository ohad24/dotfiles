# Dotfiles

Base on [Atlassian dotfiles tutorial](https://www.atlassian.com/git/tutorials/dotfiles).

## Deployment
There are two options.

1. **Host (physical) machine or VM**.
    ### Prerequisites
    * curl
    * sudo access

    ### Install
    ```bash
    curl -sSL https://raw.githubusercontent.com/ohad24/dotfiles/main/dotfiles-install.sh | sh
    ```

2. **Docker container** for testing and development.  
    Checkout [dt_docker/README.md](https://github.com/ohad24/dotfiles/blob/main/dt_docker/README.md)



## First init
Start from scratch. New dotfiles configuration.
```bash
git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```