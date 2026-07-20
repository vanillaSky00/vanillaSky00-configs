#!/usr/bin/env bash
set -euo pipefail

# Resolve the real script location when invoked through a symlink.
script_path="${BASH_SOURCE[0]}"
while [ -L "$script_path" ]; do
  script_dir="$(cd -P "$(dirname "$script_path")" >/dev/null 2>&1 && pwd)"
  script_path="$(readlink "$script_path")"
  case "$script_path" in
    /*) ;;
    *) script_path="$script_dir/$script_path" ;;
  esac
done
source_dir="$(cd -P "$(dirname "$script_path")" >/dev/null 2>&1 && pwd)"
config_dir="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
oh_my_tmux_dir="$config_dir/.tmux"

for command_name in git tmux; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    printf '%s is required. On Ubuntu: sudo apt install git tmux\n' "$command_name" >&2
    exit 1
  fi
done

mkdir -p "$config_dir"

link_config() {
  source_path="$1"
  target_path="$2"

  if [ "$source_path" = "$target_path" ]; then
    printf 'Refusing to create a self-referencing link: %s\n' "$target_path" >&2
    exit 1
  fi

  ln -sfn "$source_path" "$target_path"

  if [ "$(readlink "$target_path")" != "$source_path" ]; then
    printf 'Failed to create config link: %s\n' "$target_path" >&2
    exit 1
  fi
}

link_config "$source_dir/tmux.conf" "$config_dir/tmux.conf"
link_config "$source_dir/.tmux.conf.local" "$config_dir/.tmux.conf.local"

if [ ! -d "$oh_my_tmux_dir/.git" ]; then
  git clone https://github.com/gpakosz/.tmux.git "$oh_my_tmux_dir"
else
  git -C "$oh_my_tmux_dir" pull --ff-only
fi

printf 'tmux configuration installed. Start it with: tmux\n'
printf 'Oh My Tmux will install the configured plugins on launch.\n'
printf 'Config source: %s\n' "$source_dir"
