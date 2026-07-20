# tmux configuration

This is a portable configuration based on
[Oh My Tmux](https://github.com/gpakosz/.tmux).

## Install on macOS

```bash
brew install git tmux
git clone git@github.com:vanillaSky00/vanillaSky00-configs.git ~/.config/vanillaSky00-configs
~/.config/vanillaSky00-configs/tmux/install.sh
tmux
```

## Install on Ubuntu

```bash
sudo apt update
sudo apt install -y git tmux
git clone git@github.com:vanillaSky00/vanillaSky00-configs.git ~/.config/vanillaSky00-configs
~/.config/vanillaSky00-configs/tmux/install.sh
tmux
```

The installer links the tracked configuration into `~/.config/tmux`, clones
Oh My Tmux, and lets Oh My Tmux install all plugins declared in
`.tmux.conf.local`.

To update later:

```bash
git -C ~/.config/vanillaSky00-configs pull --ff-only
~/.config/vanillaSky00-configs/tmux/install.sh
```

Inside tmux, reload the configuration with `<prefix> r`.

The installer resolves its real repository location when called through a
symlink and refuses to create self-referencing config links.
