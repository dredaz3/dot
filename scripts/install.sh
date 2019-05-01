#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install Prerequisites
if [[ "$(uname -s)" == "Darwin" ]]; then
    # Install Homebrew if it hasn't already installed
    if [[ ! "$(command -v brew)" ]]; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
    # Install zsh
    brew install zsh &>/dev/null
elif [[ "$(uname -s)" == "Linux" ]]; then
    # Install prerequisites
    sudo apt install -y zsh wget unzip &>/dev/null
fi

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"
fi

# Install zsh-autosuggestions
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

# Change default shell
echo "$(which zsh)" | sudo tee -a /etc/shells
chsh -s $(which zsh)

# Create necessary folders and files
mkdir -p ~/.dotsecret
mkdir -p ~/.cache/zsh
mkdir -p ~/.vim

# Clone dotfiles
git clone https://github.com/erdaltsksn/dotfiles.git ~/.dotfiles

# Install Linux spesific
if [[ "$(uname -s)" == "Linux" ]]; then
    # Install exa
    wget https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
    unzip exa-linux-x86_64-0.8.0.zip
    sudo mv exa-linux-x86_64 /usr/local/bin/exa
    rm exa-linux-x86_64-0.8.0.zip
fi

# Install macOS spesific
if [[ "$(uname -s)" == "Darwin" ]]; then
    # Set computer name, hostname
    read -p "Would you like to configure hostname now? (y/n) " -n 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p 'computer/hostname: ' computer_name
        sudo scutil --set ComputerName $computer_name
        sudo scutil --set HostName $computer_name
        sudo scutil --set LocalHostName $computer_name
        echo "Computer name is set successfully."
    fi

    # Install Material Theme for Terminal.app
    open ~/.dotfiles/mac/terminal/materialshell-electro.terminal
    defaults write com.apple.Terminal "Default Window Settings" materialshell-electro
    defaults write com.apple.Terminal "Startup Window Settings" materialshell-electro

    # Install Turkish <-> English dictionaries
    cp -r ~/.dotfiles/mac/dictionary/* ~/Library/Dictionaries/

    # Avoid creating .DS_Store files on network or USB volumes
    defaults write com.apple.desktopservices DSDontWriteNetworkStores 1
    defaults write com.apple.desktopservices DSDontWriteUSBStores 1
fi

# Bootstrap
curl https://raw.githubusercontent.com/erdaltsksn/dotfiles/master/scripts/update.sh | bash

# Configure SSH
if [ ! -d "$HOME/.ssh" ]; then
    read -p "Would you like to configure SSH now? (y/n) " -n 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p "SSH Email: " email
        ssh-keygen -t rsa -b 4096 -C $email
        echo "SSH is configured successfully."
    fi
fi

# Generate gpg key
if [ ! -d "$HOME/.gnupg" ]; then
    read -p "Would you like to generate GPG Key now? (y/n) " -n 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        gpg --full-generate-key
        echo "Your GPG key is generated successfully."
    fi;
fi

# Configure GIT
if [ ! -f "$HOME/.dotsecret/.gitconfig" ]; then
    read -p "Would you like to configure GIT now? (y/n) " -n 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p "user.name: " username
        read -p "user.email: " useremail

        keylong=$(gpg --list-secret-keys --keyid-format LONG | grep "sec")
        signingKey=${keylong:14:16}
        echo "[user]\n    name = $username\n    email = $useremail\n    signingKey = $signingKey" > ~/.dotsecret/.gitconfig
        echo "Git is configured successfully."
    fi
fi

# Cleanup
rm -rf ~/.bash*
rm -rf ~/.zcompdump*
