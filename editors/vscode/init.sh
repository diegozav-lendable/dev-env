#!/bin/bash

set -ex

CURRENT_DIR=$(pwd)

which code || sudo ln -s  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code

code --install-extension alexkrechik.cucumberautocomplete \
    && code --install-extension k--kato.intellij-idea-keybindings \
    && code --install-extension kohlbachjan.the-best-theme \
    && code --install-extension vscode-icons-team.vscode-icons

cp "$CURRENT_DIR/settings.json" "$HOME/Library/Application Support/Code/User/"
cp "$CURRENT_DIR/keybindings.json" "$HOME/Library/Application Support/Code/User/"
