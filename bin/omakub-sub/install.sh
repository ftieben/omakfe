#!/bin/bash

CHOICES=(
  "Dev Editor        Install alternative programming editors"
  "Dev Language      Install programming language environment"
  "Dev Database      Install development database in Docker"
  "1password         Manage your passwords securely across devices"
  "Audacity          Record and edit audio"
  "Dropbox           Sync files across computers with ease"
  "Gimp              Image manipulation tool ala Photoshop"
  "Geekbench         CPU benchmaking tool"
  "OBS Studio        Record screencasts with inputs from both display + webcam"
  "Spotify           Stream music from the world's most popular service"
  "Web Apps          Install web apps with their own icon and shell"
  "> All             Re-run any of the default installers"
  "<< Back           "
)

CHOICE=$(gum choose "${CHOICES[@]}" --height 26 --header "Install application")

if [[ "$CHOICE" == "<< Back"* ]] || [[ -z "$CHOICE" ]]; then
  # Don't install anything
  echo ""
elif [[ "$CHOICE" == "> All"* ]]; then
  INSTALLER_FILE=$(gum file $OMAKFE_PATH/install)

  [[ -n "$INSTALLER_FILE" ]] &&
    gum confirm "Run installer?" &&
    source $INSTALLER_FILE &&
    gum spin --spinner globe --title "Install completed!" -- sleep 3
else
  INSTALLER=$(echo "$CHOICE" | awk -F ' {2,}' '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

  case "$INSTALLER" in
  "dev-editor") INSTALLER_FILE="$OMAKFE_PATH/bin/omakfe-sub/install-dev-editor.sh" ;;
  "web-apps") INSTALLER_FILE="$OMAKFE_PATH/install/desktop/optional/select-web-apps.sh" ;;
  "dev-language") INSTALLER_FILE="$OMAKFE_PATH/install/terminal/select-dev-language.sh" ;;
  "dev-database") INSTALLER_FILE="$OMAKFE_PATH/install/terminal/select-dev-storage.sh" ;;
  "ollama") INSTALLER_FILE="$OMAKFE_PATH/install/terminal/optional/app-ollama.sh" ;;
  "tailscale") INSTALLER_FILE="$OMAKFE_PATH/install/terminal/optional/app-tailscale.sh" ;;
  "geekbench") INSTALLER_FILE="$OMAKFE_PATH/install/terminal/optional/app-geekbench.sh" ;;
  *) INSTALLER_FILE="$OMAKFE_PATH/install/desktop/optional/app-$INSTALLER.sh" ;;
  esac

  source $INSTALLER_FILE && gum spin --spinner globe --title "Install completed!" -- sleep 3
fi

clear
source $OMAKFE_PATH/bin/omakfe
