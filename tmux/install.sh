#!/usr/bin/env bash
set -euo pipefail

source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
config_dir="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
oh_my_tmux_dir="$config_dir/.tmux"

for command_name in git tmux; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    printf '%s is required. On Ubuntu: sudo apt install git tmux\n' "$command_name" >&2
    exit 1
  fi
done

mkdir -p "$config_dir"
ln -sfn "$source_dir/tmux.conf" "$config_dir/tmux.conf"
ln -sfn "$source_dir/.tmux.conf.local" "$config_dir/.tmux.conf.local"

if [ ! -d "$oh_my_tmux_dir/.git" ]; then
  git clone https://github.com/gpakosz/.tmux.git "$oh_my_tmux_dir"
else
  git -C "$oh_my_tmux_dir" pull --ff-only
fi

printf 'tmux configuration installed. Start it with: tmux\n'
printf 'Oh My Tmux will install the configured plugins on launch.\n'
