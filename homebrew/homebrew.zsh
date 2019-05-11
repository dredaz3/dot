################################################################################
########################## HOMEBREW ############################################
################################################################################

# Remove all brew packages using Brewfile as a whitelist
alias brewClean="cd ~/.dotfiles/homebrew && brew bundle cleanup --force && cd -"

# Fetch the newest of all formulae, Upgrade outdated, and remove old versions
alias brewUpdate="brew update && brew upgrade && brew cleanup"
