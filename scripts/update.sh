#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update git repository (fetch and merge)
cd ~/.dotfiles && git pull && cd -

# Install homebrew, cask and app store apps
brew bundle --file=~/.dotfiles/homebrew/Brewfile

# Install Global npm packages
for i in $(cat ~/.dotfiles/node/packages*); do
    npm install -g $i
done

# Install Visual Studio Code Extensions
for i in $(cat ~/.dotfiles/vscode/extensions*); do
    code --install-extension $i
done

# Recreate symbolic links
ln -sf ~/.dotfiles/bin/ ~/
ln -sf ~/.dotfiles/git/.gitconfig ~/
if [ ! -d "$HOME/.gnupg" ]; then
    mkdir -p "$HOME/.gnupg"
fi
ln -sf ~/.dotfiles/gnupg/* ~/.gnupg
ln -sf ~/.dotfiles/mac/.hushlogin ~/
ln -sf ~/.dotfiles/node/.npmrc ~/
ln -sf ~/.dotfiles/vim/ ~/.vim
if [ ! -d "$HOME/Library/Application Support/Code/User/" ]; then
    mkdir -p "$HOME/Library/Application Support/Code/User/"
fi
ln -sf ~/.dotfiles/vscode/*.json ~/Library/Application\ Support/Code/User/
ln -sf ~/.dotfiles/zsh/.zshrc ~/
ln -sf ~/.dotfiles/zsh/oh-my-zsh/materialshell-electro.zsh-theme ~/.oh-my-zsh/custom/themes/
