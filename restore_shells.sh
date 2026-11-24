#!/usr/bin/env bash
set -e
mkdir -p ~/forks ~/.config/quickshell ~/.local/bin

[ ! -d "$HOME/forks/caelestia-dev" ] && git clone --recursive "https://github.comcaelestia-dots/shell.git" "$HOME/forks/caelestia-dev"
[ ! -d "$HOME/forks/end4-pC-dev" ] && git clone --recursive "https://github.compctrade/end4-pC.git" "$HOME/forks/end4-pC-dev"
[ ! -d "$HOME/forks/dark-shadow-dev" ] && git clone --recursive "https://github.comshadowww-dev/DarkShadowShell.git" "$HOME/forks/dark-shadow-dev"
[ ! -d "$HOME/forks/dux-shell-dev" ] && git clone --recursive "https://github.comduxlabs-dev/dux-shell.git" "$HOME/forks/dux-shell-dev"
[ ! -d "$HOME/forks/ii-dev" ] && git clone --recursive "https://github.comend-4/dots-hyprland.git" "$HOME/forks/ii-dev"
[ ! -d "$HOME/forks/ii-vynx-dev" ] && git clone --recursive "https://github.comvaguesyntax/ii-vynx.git" "$HOME/forks/ii-vynx-dev"
[ ! -d "$HOME/forks/nebula-dev" ] && git clone --recursive "https://github.comiamSt3el/Nebula.git" "$HOME/forks/nebula-dev"
[ ! -d "$HOME/forks/scottbass3-dev" ] && git clone --recursive "https://github.comscottbass3/shell.git" "$HOME/forks/scottbass3-dev"
[ ! -d "$HOME/forks/serpantinum-dev" ] && git clone --recursive "https://github.comilyamiro/serpantinum.git" "$HOME/forks/serpantinum-dev"
[ ! -d "$HOME/forks/hi-shell-dev" ] && git clone --recursive "https://github.comimu-useful/hi-shell.git" "$HOME/forks/hi-shell-dev"
[ ! -d "$HOME/forks/lucid-dev" ] && git clone --recursive "https://github.comSn3akyy1/lucid.git" "$HOME/forks/lucid-dev"
[ ! -d "$HOME/forks/bms-shell-dev" ] && git clone --recursive "https://github.comHeroblaze2310/bms-shell.git" "$HOME/forks/bms-shell-dev"

[ -f ~/forks/bms-shell-dev/BakraDEMaterialShell-1.0.3.tar.gz ] && tar -xzf ~/forks/bms-shell-dev/BakraDEMaterialShell-1.0.3.tar.gz -C ~/forks/bms-shell-dev 2>/dev/null || true
cp -r ~/forks/end4-pC-dev/modules/common/widgets/shapes ~/forks/ii-dev/dots/.config/quickshell/ii/modules/common/widgets/ 2>/dev/null || true
cp -r ~/forks/end4-pC-dev/modules/common/widgets/shapes ~/forks/ii-vynx-dev/dots/.config/quickshell/ii/modules/common/widgets/ 2>/dev/null || true
bash ~/forks/nebula-dev/plugins/Nebula/build.sh 2>/dev/null || true
make -C ~/forks/dux-shell-dev build && cp ~/forks/dux-shell-dev/core/bin/dms ~/.local/bin/dms
cmake -GNinja -B ~/forks/dux-shell-dev/dux-qt-base/build -S ~/forks/dux-shell-dev/dux-qt-base -DCMAKE_BUILD_TYPE=Release && cmake --build ~/forks/dux-shell-dev/dux-qt-base/build && cp -P ~/forks/dux-shell-dev/dux-qt-base/build/src/libdux-qt-base.so* ~/.local/bin/

ln -sfn ~/forks/end4-pC-dev ~/.config/quickshell/default
ln -sfn ~/forks/end4-pC-dev ~/.config/quickshell/end4-pC
ln -sfn ~/forks/caelestia-dev ~/.config/quickshell/caelestia
ln -sfn ~/forks/dark-shadow-dev/quickshell/rice-desktop ~/.config/quickshell/dark-shadow
ln -sfn ~/forks/dark-shadow-dev/quickshell/rice-settings ~/.config/quickshell/rice-settings
ln -sfn ~/forks/dux-shell-dev/quickshell ~/.config/quickshell/dms
ln -sfn ~/forks/hi-shell-dev ~/.config/quickshell/hi-shell
ln -sfn ~/forks/lucid-dev ~/.config/quickshell/lucid
ln -sfn ~/forks/bms-shell-dev ~/.config/quickshell/bms
ln -sfn ~/forks/ii-dev/dots/.config/quickshell/ii ~/.config/quickshell/ii
ln -sfn ~/forks/ii-vynx-dev/dots/.config/quickshell/ii ~/.config/quickshell/ii-vynx
ln -sfn ~/forks/nebula-dev ~/.config/quickshell/nebula
ln -sfn ~/forks/scottbass3-dev ~/.config/quickshell/scottbass3
ln -sfn ~/forks/serpantinum-dev/src/quickshell ~/.config/quickshell/serpantium
ln -sfn ~/forks/serpantinum-dev/src/quickshell ~/.config/quickshell/serpantinum
ln -sfn ~/forks/serpantinum-dev/bin/serpantinum ~/.local/bin/serpantinum
ln -sfn ~/forks/serpantinum-dev/bin/serpantinumd ~/.local/bin/serpantinumd
echo "Готово! Все 12 оболочек, плагины и переключатель Quickshell развёрнуты."
