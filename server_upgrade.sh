#!/bin/bash

# Update and upgrade the current system
echo "Updating and upgrading current system..."
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

# Check if the 'update-manager-core' package is installed
echo "Checking if 'update-manager-core' is installed..."
sudo apt-get install -y update-manager-core

# Start the upgrade process
echo "Starting the distribution upgrade..."
sudo do-release-upgrade -d

# Clean up any unnecessary files
echo "Cleaning up..."
sudo apt-get autoremove -y
sudo apt-get autoclean -y

echo "Upgrade completed. Rebooting now..."
sudo reboot
