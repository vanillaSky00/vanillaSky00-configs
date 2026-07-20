# tmux configuration

This is a portable configuration based on
[Oh My Tmux](https://github.com/gpakosz/.tmux).

## Install

```bash
sudo apt update
sudo apt install -y git tmux
git clone git@github.com:vanillaSky00/vanillaSky00-configs.git ~/vanillaSky00-configs
~/vanillaSky00-configs/tmux/install.sh
tmux
```

The installer links the tracked configuration into `~/.config/tmux`, clones
Oh My Tmux, and lets Oh My Tmux install all plugins declared in
`.tmux.conf.local`.

To update later:

```bash
git -C ~/vanillaSky00-configs pull --ff-only
~/vanillaSky00-configs/tmux/install.sh
```

Inside tmux, reload the configuration with `<prefix> r`.
