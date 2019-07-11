# My dotfiles

This repo contains my collection of configuration / rc / dotfiles.

## Description

> You are your dotfiles


## Getting Started

### Dependencies

- Any shell
- [git](https://git-scm.com/)
- [gnu stow](https://www.gnu.org/software/stow/)
- [git-secret](https://git-secret.io/) (optional)

### Installing

Make sure above binaries are available on your system, and:
```
git clone git@github.com:sjoerd-dijkstra/dotfiles.git ~/.dotfiles
```

## Usage

#### Basic

Symlink the dotfiles you like, e.g.:
```
cd  ~/.dotfiles

# install generic
stow general

# host specific
stow host-mac

# specific program
stow vim
```
etc..

#### Optional

To decrypt and link the *secret* files:
```
git secret reveal
stow confidential
```
