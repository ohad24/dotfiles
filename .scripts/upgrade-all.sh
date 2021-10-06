#!/bin/bash

sudo apt update        # Fetches the list of available updates
sudo apt -y upgrade       # Installs some updates; does not remove packages
sudo apt -y full-upgrade  # Installs updates; may also remove some packages, if needed
sudo apt autoremove    # Removes any old packages that are no longer needed
