#!/bin/bash

set -ex

ssh-keygen -t ed25519 -C "diegozav92@gmail.com"

eval "$(ssh-agent -s)"

cat ~/.ssh/config || touch ~/.ssh/config

cat ./ssh-config >> ~/.ssh/config

ssh-add --apple-use-keychain ~/.ssh/id_ed25519

echo "Copy your public ssh key to your Github Account\n"

cat ~/.ssh/id_ed25519.pub
