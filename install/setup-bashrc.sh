setup_bashrc() {
    echo "Setting up .bashrc..."
    local line='for f in "$HOME/.local/bin/functions/"*.sh; do source "$f"; done'

    if ! grep -qF "$line" "$HOME/.bashrc"; then
        echo "" >> "$HOME/.bashrc"
        echo "# Load custom shell functions" >> "$HOME/.bashrc"
        echo "$line" >> "$HOME/.bashrc"
        echo "Done. Added source line to .bashrc"
    else
        echo "Done. .bashrc already configured, skipping"
    fi
}
