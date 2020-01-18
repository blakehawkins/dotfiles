#!/usr/bin/env bash

set -euxo pipefail


[[ -n "$WINDOWS_USER" ]] || (echo '$WINDOWS_USER unset!'; exit 1)

if rg -q Microsoft /proc/version; then
	VSCODE_PATH="/mnt/c/Users/$WINDOWS_USER/AppData/Roaming/Code/User/"
	cp ./configs/_vscode_user_settings.json $VSCODE_PATH"settings.json"
	cp ./configs/_vscode_keybindings.json   $VSCODE_PATH"keybindings.json"
else
	echo "Failed to detect WSL!"; exit 1
fi

cp ./configs/.vimrc     ~/
cp ./configs/.tmux.conf ~/
cp ./configs/.bashrc    ~/
cp ./configs/.gitconfig ~/
