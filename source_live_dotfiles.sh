#!/usr/bin/env bash

set -euxo pipefail

[[ -n "$WINDOWS_USER" ]] || (echo '$WINDOWS_USER unset!'; exit 1)

if rg -q Microsoft /proc/version; then
        VSCODE_PATH="/mnt/c/Users/$WINDOWS_USER/AppData/Roaming/Code/User/"
	cp $VSCODE_PATH"settings.json"    ./configs/_vscode_user_settings.json
	cp $VSCODE_PATH"keybindings.json" ./configs/_vscode_keybindings.json
else
	echo "Failed to detect WSL!"; exit 1
fi

cp ~/.vimrc     ./configs/
cp ~/.tmux.conf ./configs/
cp ~/.bashrc    ./configs/
cp ~/.gitconfig ./configs/

