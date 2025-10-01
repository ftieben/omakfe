#!/bin/bash

cat <<EOF >~/.local/share/applications/Omakfe.desktop
[Desktop Entry]
Version=1.0
Name=Omakfe
Comment=Omakfe Controls
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=Omakfe --title=Omakfe -e omakfe
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakfe/applications/icons/Omakfe.png
Categories=GTK;
StartupNotify=false
EOF
