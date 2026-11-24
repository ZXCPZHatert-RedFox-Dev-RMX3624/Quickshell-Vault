#!/usr/bin/env bash
export PATH="$HOME/.local/bin:$PATH"
export QML2_IMPORT_PATH="$HOME/.local/lib/qt6/qml:${QML2_IMPORT_PATH}"

S=$(cat "$HOME/.config/quickshell/.active_shell" 2>/dev/null || echo "caelestia")

# Если оболочка уже запущена и передан флаг --once (из hyprland.lua), не плодим дубликаты
if [ "$1" = "--once" ]; then
    if [ "$S" = "dms" ] && pgrep -x dms >/dev/null; then exit 0; fi
    if [ "$S" = "serpantinum" ] && pgrep -f serpantinum >/dev/null; then exit 0; fi
    if pgrep -f "qs -c $S" >/dev/null; then exit 0; fi
fi

# Жёстко закрываем все старые оболочки и их фоновые скрипты
"$HOME/forks/serpantinum-dev/bin/serpantinumd" stop 2>/dev/null
dms kill 2>/dev/null
pkill -9 -x dms 2>/dev/null
pkill -9 -x qs 2>/dev/null
pkill -9 -x quickshell 2>/dev/null
pkill -9 -f "$HOME/forks/" 2>/dev/null
sleep 0.3

if [ "$S" = "serpantinum" ]; then
    setsid -f "$HOME/forks/serpantinum-dev/bin/serpantinumd" start >/tmp/qs-switch.log 2>&1
elif [ "$S" = "dms" ]; then
    setsid -f dms run >/tmp/qs-switch.log 2>&1
else
    setsid -f qs -c "$S" >/tmp/qs-switch.log 2>&1
fi
