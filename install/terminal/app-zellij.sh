#!/bin/bash

sudo dnf copr enable varlad/zellij -y
sudo dnf install zellij -y

mkdir -p ~/.config/zellij/themes
[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/omakfe/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/omakfe/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
