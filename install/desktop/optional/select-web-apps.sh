#!/bin/bash

source $OMAKFE_PATH/defaults/bash/functions

AVAILABLE_WEB_APPS=("Teams" "Outlook")
apps=$(gum choose "${AVAILABLE_WEB_APPS[@]}" --no-limit --height 6 --header "Select web apps")

if [[ -n "$apps" ]]; then
  IFS=$'\n'
  for app in $apps; do
    case $app in
    "Chat GPT")
      web2app 'Teams' https://teams.microsoft.com/v2/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/1337x.png
      app2folder 'Teams.desktop' WebApps
      ;;
    "Outlook")
      web2app 'Outlook' https://outlook.live.com/mail/0/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/1337x.png
      app2folder 'Outlook.desktop' WebApps
      ;;
    esac
  done
fi
