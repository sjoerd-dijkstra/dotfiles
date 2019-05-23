# My dotfiles

This repo contains my collection of configuration / rc / dotfiles.

## Description

In unix world you are your dotfiles, that's why you need them to be awesome and easy to use accross all your machines..

## Getting Started

### Dependencies

- Any shell
- [git](https://git-scm.com/)
- [gnu stow](https://www.gnu.org/software/stow/)
- [git-secret](https://git-secret.io/) (optional)

### Installing

Make sure above dependencies are installed on your system, and you own a copy of this repo.
```
git clone git@github.com:sjoerd-dijkstra/dotfiles.git ~/.dotfiles
```

### Usage

#### Basic

Symlink the dotfiles you like, e.g.:
```
stow host-mac
stow general
stow vim
```
etc..

#### Optional

To decrypt and link the *secret* files:
```
git secret reveal
stow confidential
```

### Screen


