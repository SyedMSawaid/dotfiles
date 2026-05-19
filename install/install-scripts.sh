install_scripts() {
    echo "Installing scripts..."
    mkdir -p "$HOME/.local/bin"

    count=0
    for script in "$(dirname "$0")"/scripts/*; do
        echo "Copying $(basename "$script")..."
        cp "$script" "$HOME/.local/bin/"
        chmod +x "$HOME/.local/bin/$(basename "$script")"
        count=$((count + 1))
    done

    echo "Copied $count script(s) to $HOME/.local/bin/"
}

