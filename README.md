# ERDAL'S DOTFILES

## About dotfiles (.files)

Dotfiles are how you personalize your system. These are mine for macOS and
Ubuntu Server

![Screenshot](/media/screenshot.png)

## Features

- MacOS and Ubuntu Server support
- Material theme for all possible environments (zsh, terminal, vscode, etc.)
- .dotsecret folder for all custom and private settings
- .gitconfig, .gitignore, and git commit template
- .hushlogin, Brewfile, and Turkish <> English dictionaries for Dictionary.app
- .nanorc, .vimrc, gitcommit.vim
- Visual Studio Code settings, keybindings, and extensions
- .zshrc, `$PATH` ready, topic's zsh files which contain aliases, functions and
  etc.
- and more coming soon

## Installation

### Prerequisites

Disclaimer: This project works best on macOS.

- Unix-like operating system (macOS or Linux)
- curl
- git

NOTE: You already have all prerequisites if you use macOS or Ubuntu Server.

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

## History

See [CHANGELOG](docs/CHANGELOG.md) to learn how this project evolved during the
time.

## Contributing

If you want to contribute to this project and make it better, your help is very
welcome. See [CONTRIBUTING](docs/CONTRIBUTING.md) for more information.

## Code of Conduct

This project adheres to [Code of Conduct] from the **Contributor Covenant**,
version 1.4,. By participating, you are expected to uphold this code.

For answers to common questions about this code of conduct, see [FAQ].

[Code of Conduct]: https://www.contributor-covenant.org/version/1/4/code-of-conduct.txt
[FAQ]: https://www.contributor-covenant.org/faq

## Disclaimer

In no event shall we be liable to you or any third parties for any special,
punitive, incidental, indirect or consequential damages of any kind, or any
damages whatsoever, including, without limitation, those resulting from loss of
use, data or profits, and on any theory of liability, arising out of or in
connection with the use of this software.

## Feedback

Suggestions / Improvements [WELCOME]!

[WELCOME]: https://github.com/erdaltsksn/dotfiles/issues
