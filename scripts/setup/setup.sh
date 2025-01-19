#!/bin/bash

figlet "isCordial"

echo
echo "This script will begin installing isCordial's dotfiles. Please ensure you've already ran the ml4w-hyprland-setup script prior to using this one."
echo

while true; do
    read -p "DO YOU WANT TO START THE INSTALLATION NOW? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo "Installation started."
            echo
        break;;
        [Nn]* ) 
            echo "Installation canceled."
            exit;
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Core Packages
figlet "Core"
echo "Installing core packages..."
echo
cat deps_arch | tr '\n' ' ' | xargs bash install.sh

# Timeshift and backup
figlet "Timeshift"
while true; do
  read -p "Would you like to install Timeshift to enable btrfs snapshots?" yn
    case $yn in
        [Yy]* )
            echo "Installing Timeshift..."
            echo
            cat deps_arch_timeshift | tr '\n' ' ' | xargs bash install.sh
        break;;
        [Nn]* ) 
            echo "Skipping Timeshift installation."
            echo
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Optional Packages
figlet "Optional"
while true; do
  read -p "Would you like to install 'optional' packages? (libreoffice and zed)" yn
    case $yn in
        [Yy]* )
            echo "Installing optional packages..."
            echo
            cat deps_arch_optional | tr '\n' ' ' | xargs bash install.sh
        break;;
        [Nn]* ) 
            echo "Skipping optional package installation."
            echo
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Local AI Models
figlet "LLMs"
while true; do
    read -p "Would you like to install ollama and cuda to support local AI model integration?" yn
    case $yn in
        [Yy]* )
            echo "Installing ollama and cuda..."
            echo
            cat deps_arch_ai | tr '\n' ' ' | xargs bash install.sh
        break;;
        [Nn]* ) 
            echo "Skipping ollama and cuda installation."
            echo
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# AUR Packages
figlet "AUR"
while true; do
  read -p "Would you like to install configured AUR packages? (oh-my-posh, brave-bin, and timeshift-autosnap)" yn
    case $yn in
        [Yy]* )
            echo "Installing AUR packages..."
            echo
            cat deps_arch_aur | tr '\n' ' ' | xargs bash install.sh
        break;;
        [Nn]* ) 
            echo "Skipping installation of AUR packages."
            echo
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done

figlet "Fin."
