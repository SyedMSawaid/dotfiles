install_functions() {
    echo "Installing functions..."
    mkdir -p "$HOME/.local/bin/functions"

    count=0
    for fn in "$(dirname "$0")"/functions/*; do
        echo "  Copying $(basename "$fn")..."
        cp "$fn" "$HOME/.local/bin/functions/"
        count=$((count + 1))
    done

    echo "Done. Copied $count function(s) to $HOME/.local/bin/"
}
