#!/bin/bash

set -e

ascii_art='________                  __      _____       
\_____  \   _____ _____  |  | ___/ ____\____  
 /   |   \ /     \\__  \ |  |/ /\   __\/ __ \ 
/    |    \  Y Y  \/ __ \|    <  |  | \  ___/ 
\_______  /__|_|  (____  /__|_ \ |__|  \___  >
        \/      \/     \/     \/           \/ 
'

echo -e "$ascii_art"
echo "=> Omakfe is for fresh Fedora 42 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo dnf update -y>/dev/null
sudo dnf install -y git >/dev/null

echo "Cloning Omakfe..."
rm -rf ~/.local/share/omakfe
git clone https://github.com/ftieben/omakfe.git ~/.local/share/omakfe >/dev/null
if [[ $OMAKFE_REF != "master" ]]; then
	cd ~/.local/share/omakfe
	git fetch origin "${OMAKFE_REF:-stable}" && git checkout "${OMAKFE_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakfe/install.sh
