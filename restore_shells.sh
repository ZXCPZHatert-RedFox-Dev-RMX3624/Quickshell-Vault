#!/usr/bin/env bash
set -e
mkdir -p ~/forks ~/.config/quickshell ~/.local/bin

[ ! -d "$HOME/forks/caelestia-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/shell.git" "$HOME/forks/caelestia-dev"
[ ! -d "$HOME/forks/end4-pC-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/end4-pC.git" "$HOME/forks/end4-pC-dev"
[ ! -d "$HOME/forks/dark-shadow-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/DarkShadowShell.git" "$HOME/forks/dark-shadow-dev"
[ ! -d "$HOME/forks/dux-shell-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/dux-shell.git" "$HOME/forks/dux-shell-dev"
[ ! -d "$HOME/forks/ii-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/dots-hyprland.git" "$HOME/forks/ii-dev"
[ ! -d "$HOME/forks/ii-vynx-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/ii-vynx.git" "$HOME/forks/ii-vynx-dev"
[ ! -d "$HOME/forks/nebula-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/Nebula.git" "$HOME/forks/nebula-dev"
[ ! -d "$HOME/forks/scottbass3-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/shell-1.git" "$HOME/forks/scottbass3-dev"
[ ! -d "$HOME/forks/serpantinum-dev" ] && git clone "https://github.com/ZXCPZHatert-RedFox-Dev-RMX3624/serpantinum.git" "$HOME/forks/serpantinum-dev"
[ ! -d "$HOME/forks/hi-shell-dev" ] && git clone "https://github.com/imu-useful/hi-shell.git" "$HOME/forks/hi-shell-dev"
[ ! -d "$HOME/forks/lucid-dev" ] && git clone "https://github.com/Sn3akyy1/lucid.git" "$HOME/forks/lucid-dev"
[ ! -d "$HOME/forks/bms-shell-dev" ] && git clone "https://github.com/Heroblaze2310/bms-shell.git" "$HOME/forks/bms-shell-dev"

ln -sfn ~/forks/end4-pC-dev ~/.config/quickshell/default
ln -sfn ~/forks/end4-pC-dev ~/.config/quickshell/end4-pC
ln -sfn ~/forks/caelestia-dev ~/.config/quickshell/caelestia
ln -sfn ~/forks/dark-shadow-dev ~/.config/quickshell/dark-shadow
ln -sfn ~/forks/dark-shadow-dev/quickshell/rice-settings ~/.config/quickshell/rice-settings
ln -sfn ~/forks/dux-shell-dev ~/.config/quickshell/dms
ln -sfn ~/forks/hi-shell-dev ~/.config/quickshell/hi-shell
ln -sfn ~/forks/lucid-dev ~/.config/quickshell/lucid
ln -sfn ~/forks/bms-shell-dev ~/.config/quickshell/bms
ln -sfn ~/forks/ii-dev/dots/.config/quickshell/ii ~/.config/quickshell/ii
ln -sfn ~/forks/ii-vynx-dev/dots/.config/quickshell/ii ~/.config/quickshell/ii-vynx
ln -sfn ~/forks/nebula-dev ~/.config/quickshell/nebula
ln -sfn ~/forks/scottbass3-dev ~/.config/quickshell/scottbass3
ln -sfn ~/forks/serpantinum-dev/src/quickshell ~/.config/quickshell/serpantium
ln -sfn ~/forks/serpantinum-dev/bin/serpantinum ~/.local/bin/serpantinum
ln -sfn ~/forks/serpantinum-dev/bin/serpantinumd ~/.local/bin/serpantinumd
echo "Готово! Все 12 оболочек и симлинки Quickshell восстановлены."
