################################################################################
########################## VSCODE ##############################################
################################################################################

# Backup Visual Studio Code Extensions
vscodeBackup() {
    code --list-extensions > "$HOME/.dotfiles/vscode/extensions.txt"
    cd "$HOME/.dotfiles/vscode/"
    gd extensions.txt
}
