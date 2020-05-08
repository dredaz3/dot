#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Check out the code into ~/.dotfiles directory
git clone https://github.com/erdaltsksn/dotfiles.git $HOME/.dotfiles

# Install Prerequisites
$HOME/.dotfiles/scripts/preinstall

# Install Homebrew apps
brew bundle --file=$HOME/.dotfiles/homebrew/Brewfile

# Install Visual Studio Code Extensions
for i in $(cat ~/.dotfiles/vscode/extensions*); do code --install-extension $i; done

# Generate symbolic links
$HOME/.dotfiles/scripts/symlink

# Apply the application settings
$HOME/.dotfiles/scripts/setting

# Apply the fixes
$HOME/.dotfiles/scripts/fix

# Apply the input-required configurations
$HOME/.dotfiles/scripts/configure
