#!/bin/bash

# Gum is used for the Omakfe commands for tailoring Omakfe after the initial install
GUM_VERSION="0.14.3-1" # Use known good version

echo '[charm]
name=Charm
baseurl=https://repo.charm.sh/yum/
enabled=1
gpgcheck=1
gpgkey=https://repo.charm.sh/yum/gpg.key' | sudo tee /etc/yum.repos.d/charm.repo
sudo rpm --import https://repo.charm.sh/yum/gpg.key

# yum
sudo dnf install gum-${GUM_VERSION} -y
