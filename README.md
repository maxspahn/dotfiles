# Installation

Start initializing the the repo by:
```bash
git clone git@github.com:maxspahn/dotfiles.git
git submodule update --init --recursive
```

## neovim

Install appimage for your architecture.

```bash
pip install -r dotdrop/requirements.txt
```

```bash
./dotdrop.sh install -p archlinux
```


## Interesting facts

zsh config files
.profile - executed for login shells
.zshenv - executed for all shells
.zprofile - executed for login shells
.zshrc - executed for interactive shells
.zlogin - executed for login shells
.zlogout - executed when login shell exits
