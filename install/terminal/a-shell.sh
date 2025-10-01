#!/bin/bash

# Configure the bash shell using Omakfe defaults
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/omakfe/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/omakfe/defaults/bash/shell

[ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakfe defaults
cp ~/.local/share/omakfe/configs/inputrc ~/.inputrc
