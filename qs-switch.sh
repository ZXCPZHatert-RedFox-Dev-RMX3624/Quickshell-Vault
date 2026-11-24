#!/usr/bin/env bash
export PATH="$HOME/.local/bin:$PATH"

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
    echo "$SELECTED" > "$HOME/.config/quickshell/.active_shell"
    "$HOME/.local/bin/qs-start.sh"
fi
