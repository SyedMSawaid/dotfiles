# dotfiles

Personal scripts and shell functions.

## Installation

Run `install.sh` to set everything up:

```bash
./install.sh
```

This will:
- Copy scripts to `~/.local/bin/`
- Copy functions to `~/.local/bin/functions/`
- Add a source line to `~/.bashrc` to load functions on shell start

## Scripts

| Script | Description |
|--------|-------------|
| `convert-mp4-to-mov-1080.sh` | Batch converts all `.mp4` files in the current directory to 1080p `.mov` using NVIDIA GPU acceleration. Output is saved to a `converted/` subfolder. |

## Functions

| Function | Description |
|----------|-------------|
| `gc` | Stage all changes and commit: `gc "message"` |
| `gp` | Stage all changes, commit, and push: `gp "message"` |
