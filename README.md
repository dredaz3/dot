# ERDAL'S DOTFILES (.files)

![Dotfiles](https://github.com/erdaltsksn/dotfiles/workflows/Dotfiles/badge.svg)

Dotfiles are how you personalize your system. These are mine for macOS.

![Screenshot](/assets/screenshot.png)

## Features

- Lots of `aliases`, `functions`, and etc. sorted by category for easy reference
- Lots of useful apps for developers and power users
- `.dotsecret` folder for custom or private settings
- `~/bin` folder for executable files
- Configurations for `zsh`, `git`, `vim` and etc.
- Visual Studio Code settings, keybindings, and extensions
- Material theme for all possible environments (`zsh`, `terminal`, `vscode`, etc.)
- and many more

## Requirements

- macOS
- Git

## Getting Started

`dotfiles` can be installed by running the following command **(NOT RECOMMENDED)**.
Please use the [Installation](#installation) guide.

```sh
curl https://raw.githubusercontent.com/erdaltsksn/dotfiles/master/scripts/bootstrap.sh | bash
```

Check out [macOS Setting Guide](/docs/macos.md) for more configurations.

## Installation

Before started to install the dotfiles (.files), it is recommended to `fork`
this repository and customize it according to you.

```sh
# Check out the code into ~/.dotfiles directory
# Do not forget to change it to your fork
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
```

## Updating

```sh
# Checkout out the repository and merge it
cd $HOME/.dotfiles && git pull && cd -

# The followings are OPTIONAL
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
```

## Usage

You should definitely check every (topic) subdirectory to learn more about this
project. The following is some of the most important command:

```sh
# Listing all aliases
alias

# Listing all functions
functions

# Listing that paths
echo $PATH
```

## Contributing

If you want to contribute to this project and make it better, your help is very
welcome. See [CONTRIBUTING](docs/CONTRIBUTING.md) for more information.

## Disclaimer

In no event shall we be liable to you or any third parties for any special,
punitive, incidental, indirect or consequential damages of any kind, or any
damages whatsoever, including, without limitation, those resulting from loss of
use, data or profits, and on any theory of liability, arising out of or in
connection with the use of this software.
