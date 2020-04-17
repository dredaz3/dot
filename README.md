# ERDAL'S DOTFILES (.files)

Dotfiles are how you personalize your system. These are mine for macOS.

![Screenshot](/media/screenshot.png)

## Features

- Lots of `aliases`, `functions`, and etc. sorted by category for easy reference
- Lots of useful apps for developers and power users
- `.dotsecret` folder for custom or private settings
- `~/bin` folder for executable files
- Configurations for `zsh`, `git`, `vim` and etc.
- Visual Studio Code settings, keybindings, and extensions
- Material theme for all possible environments (`zsh`, `terminal`, `vscode`, etc.)
- and many more

## Installation

### Requirements

- macOS

### Basic Installation

dotfiles is installed by running the following command in your terminal.

```sh
curl https://raw.githubusercontent.com/erdaltsksn/dotfiles/master/scripts/install.sh | bash
```

## Updating

You can also update dotfiles manually by running one of the following commands
in your terminal.

via `curl`:

```sh
curl https://raw.githubusercontent.com/erdaltsksn/dotfiles/master/scripts/update.sh | bash
```

via alias:

```sh
dotfilesUpdate
```

## Usage

You can see all alias by running `alias` and all functions by running `functions`.
You should definitely check every subdirectory to learn more about this project.

## Contributing

If you want to contribute to this project and make it better, your help is very
welcome. See [CONTRIBUTING](docs/CONTRIBUTING.md) for more information.

## Disclaimer

In no event shall we be liable to you or any third parties for any special,
punitive, incidental, indirect or consequential damages of any kind, or any
damages whatsoever, including, without limitation, those resulting from loss of
use, data or profits, and on any theory of liability, arising out of or in
connection with the use of this software.
