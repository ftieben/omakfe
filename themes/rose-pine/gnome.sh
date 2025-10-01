#!/bin/bash

OMAKFE_THEME_COLOR="red"
OMAKFE_THEME_BACKGROUND="rose-pine/background.jpg"
source $OMAKFE_PATH/themes/set-gnome-theme.sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
