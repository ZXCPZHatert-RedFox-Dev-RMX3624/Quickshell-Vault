#!/usr/bin/env bash
set -e
mkdir -p ~/forks ~/.config/quickshell ~/.local/bin

declare -A REPOS=(
  ["caelestia-dev"]="https://github.com"
  ["end4-pC-dev"]="https://github.com"
  ["dark-shadow-dev"]="https://github.com"
  ["dux-shell-dev"]="https://github.com"
  ["ii-dev"]="https://github.com"
  ["ii-vynx-dev"]="https://github.com"
  ["nebula-dev"]="https://github.com"
  ["scottbass3-dev"]="https://github.com"
  ["serpantinum-dev"]="https://github.com"
  ["hi-shell-dev"]="https://github.com"
)

for dir in "${!REPOS[@]}"; do
  [ ! -d "$HOME/forks/$dir" ] && git clone "${REPOS[$dir]}" "$HOME/forks/$dir"
done

ln -sfn ~/forks/end4-pC-dev ~/.config/quickshell/default
ln -sfn ~/forks/end4-pC-dev ~/.config/quickshell/end4-pC
ln -sfn ~/forks/caelestia-dev ~/.config/quickshell/caelestia
ln -sfn ~/forks/dark-shadow-dev ~/.config/quickshell/dark-shadow
ln -sfn ~/forks/dark-shadow-dev/quickshell/rice-settings ~/.config/quickshell/rice-settings
ln -sfn ~/forks/dux-shell-dev ~/.config/quickshell/dms
ln -sfn ~/forks/hi-shell-dev ~/.config/quickshell/hi-shell
ln -sfn ~/forks/ii-dev/dots/.config/quickshell/ii ~/.config/quickshell/ii
ln -sfn ~/forks/ii-vynx-dev/dots/.config/quickshell/ii ~/.config/quickshell/ii-vynx
ln -sfn ~/forks/nebula-dev ~/.config/quickshell/nebula
ln -sfn ~/forks/scottbass3-dev ~/.config/quickshell/scottbass3
ln -sfn ~/forks/serpantinum-dev/src/quickshell ~/.config/quickshell/serpantium
ln -sfn ~/forks/serpantinum-dev/bin/serpantinum ~/.local/bin/serpantinum
ln -sfn ~/forks/serpantinum-dev/bin/serpantinumd ~/.local/bin/serpantinumd

echo "Готово! Все 10 оболочек и симлинки Quickshell восстановлены."
