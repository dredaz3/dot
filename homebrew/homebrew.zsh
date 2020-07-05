################################################################################
########################## HOMEBREW ############################################
################################################################################

# Fetch the newest of all formulae, Upgrade outdated, and remove old versions
alias brewUpdate="brew update && brew upgrade && brew cleanup"

# Remove all brew packages using Brewfile as a whitelist
brewClean() {
    cd $HOME/.dotfiles/homebrew
    if [[ -z $@ ]]; then
        brew bundle cleanup
    else
        brew bundle cleanup $@
    fi
    cd -
}
