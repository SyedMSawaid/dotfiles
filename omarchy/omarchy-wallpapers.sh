#!/usr/bin/env bash

set -e

THEMES_DIR="$HOME/.local/share/omarchy/themes"
BACKGROUNDS_DIR="$(dirname "$0")/../backgrounds"

echo "Available themes:"
echo ""
select theme in $(ls "$THEMES_DIR"); do
    [[ -n "$theme" ]] && break
    echo "Invalid selection, try again."
done

dest="$HOME/.config/omarchy/backgrounds/$theme"
mkdir -p "$dest"

echo ""
echo "Copying wallpapers to $theme..."

count=0
for bg in "$BACKGROUNDS_DIR"/*; do
    echo "  $(basename "$bg")"
    cp "$bg" "$dest/"
    count=$((count + 1))
done

echo ""
echo "Done. $count wallpaper(s) installed for $theme."
echo "Open the omarchy wallpaper picker to apply."
