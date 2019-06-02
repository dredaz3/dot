#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update git repository (fetch and merge)
cd ~/.dotfiles && git pull && cd -

# Recreate symbolic links
ln -sf ~/.dotfiles/bin/ ~/
ln -sf ~/.dotfiles/git/.gitconfig ~/
ln -sf ~/.dotfiles/gnupg/* ~/.gnupg
ln -sf ~/.dotfiles/node/.npmrc ~/
ln -sf ~/.dotfiles/vim/* ~/.vim
ln -sf ~/.dotfiles/zsh/.zshrc ~/
ln -sf ~/.dotfiles/zsh/oh-my-zsh/materialshell-electro.zsh-theme ~/.oh-my-zsh/custom/themes/

# Update macOS spesific
if [[ "$(uname -s)" == "Darwin" ]]; then
    # Install homebrew, cask and app store apps
    brew bundle --file=~/.dotfiles/homebrew/Brewfile

    # Install Visual Studio Code Extensions
    for i in $(cat ~/.dotfiles/vscode/extensions*); do
        code --install-extension $i
    done

    # Recreate mac spesific symbolic links
    ln -sf ~/.dotfiles/mac/.hushlogin ~/
    ln -sf ~/.dotfiles/vscode/*.json ~/Library/Application\ Support/Code/User/
fi
