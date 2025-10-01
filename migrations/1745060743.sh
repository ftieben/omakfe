#!/bin/bash

cp ~/.local/share/omakfe/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp ~/.local/share/omakfe/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp ~/.local/share/omakfe/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp ~/.local/share/omakfe/configs/alacritty.toml ~/.config/alacritty/alacritty.toml

source $OMAKFE_PATH/applications/About.sh
source $OMAKFE_PATH/applications/Activity.sh
source $OMAKFE_PATH/applications/Neovim.sh
source $OMAKFE_PATH/applications/Docker.sh
source $OMAKFE_PATH/applications/Omakfe.sh

alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true
