#!/usr/bin/env bash
export PATH="$HOME/.local/bin:$PATH"
export QML2_IMPORT_PATH="$HOME/.local/lib/qt6/qml:${QML2_IMPORT_PATH}"

CONFIG_DIR="$HOME/.config/quickshell"
FORKS_DIR="$HOME/forks"

SHELLS="bms
caelestia
dark-shadow
dms
end4-pC
hi-shell
ii
ii-vynx
lucid
nebula
scottbass3
serpantinum"

if command -v fuzzel >/dev/null 2>&1; then
    SELECTED=$(echo "$SHELLS" | fuzzel --dmenu -p "Quickshell: ")
elif command -v wofi >/dev/null 2>&1; then
    SELECTED=$(echo "$SHELLS" | wofi --dmenu -p "Quickshell:")
elif command -v rofi >/dev/null 2>&1; then
    SELECTED=$(echo "$SHELLS" | rofi -dmenu -p "Quickshell:")
else
    notify-send "Quickshell" "Не найден лаунчер (fuzzel, wofi или rofi)"
    exit 1
fi

if [ -n "$SELECTED" ]; then
    "$FORKS_DIR/serpantinum-dev/bin/serpantinumd" stop 2>/dev/null
    pkill -x dms 2>/dev/null
    pkill -x qs 2>/dev/null
    pkill -x quickshell 2>/dev/null
    sleep 0.3

    echo "$SELECTED" > "$CONFIG_DIR/.active_shell"

    if [ "$SELECTED" = "serpantinum" ]; then
        setsid -f "$FORKS_DIR/serpantinum-dev/bin/serpantinumd" start >/tmp/qs-switch.log 2>&1
    elif [ "$SELECTED" = "dms" ]; then
        setsid -f dms run >/tmp/qs-switch.log 2>&1
    else
        setsid -f qs -c "$SELECTED" >/tmp/qs-switch.log 2>&1
    fi

    sleep 1
    if grep -q "ERROR:" /tmp/qs-switch.log 2>/dev/null; then
        ERR_MSG=$(grep "ERROR:" /tmp/qs-switch.log | tail -n 1)
        notify-send -u critical "Quickshell ($SELECTED)" "$ERR_MSG"
    fi
fi
