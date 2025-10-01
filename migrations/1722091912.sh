#!/bin/bash

sudo echo "Running upgrade migration..."

# Add rustc and pgsql client libs
source $OMAKFE_PATH/install/terminal/libraries.sh

# Set name and class for desktop files
source $OMAKFE_PATH/applications/About.sh
source $OMAKFE_PATH/applications/Activity.sh
source $OMAKFE_PATH/applications/Basecamp.sh
source $OMAKFE_PATH/applications/HEY.sh
source $OMAKFE_PATH/applications/Docker.sh
source $OMAKFE_PATH/applications/Neovim.sh
source $OMAKFE_PATH/applications/Omakfe.sh
source $OMAKFE_PATH/applications/WhatsApp.sh
