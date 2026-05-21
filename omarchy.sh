#!/usr/bin/env bash

set -e

OMARCHY_DIR="$(dirname "$0")/omarchy"

echo "Omarchy setup"
echo ""
echo "Available scripts:"
echo ""

scripts=("$OMARCHY_DIR"/*)
for i in "${!scripts[@]}"; do
    echo "  $((i + 1))) $(basename "${scripts[$i]}")"
done

echo ""
read -rp "Pick a script to run (1-${#scripts[@]}): " choice

script="${scripts[$((choice - 1))]}"

if [[ -z "$script" || ! -f "$script" ]]; then
    echo "Invalid selection."
    exit 1
fi

echo ""
bash "$script"
