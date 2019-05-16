################################################################################
########################## GIT #################################################
################################################################################

# Show the working tree status with the branch and tracking info in short-format
alias gs="git status --short --branch"

# Add file contents to the index with optional [<pathspec>…​]
ga() {
    if [[ -z $@ ]]; then
        git add .
    else
        git add $@
    fi
    gs # Show status after adding
}

#  Show changes between commits and working tree, with --cached or [<pathspec>…​]
gd() {
    if [[ -z $@ ]]; then
        git diff --cached
    else
        git diff $@
    fi
}

# Record changes to the repository with unified diff at the bottom
alias gc="git commit -v"

# Reset current HEAD to the specified state
alias gr="git reset && gs"

# Show commit logs with author name and date
alias gl="git log --decorate --all --graph --format=format:'%C(bold yellow)%h%C(reset) %C(bold cyan)%s%C(reset)%C(auto)%d%C(reset)%n        %C(dim white)%aD%C(reset) %C(magenta)(%an)%C(reset)'"

# Update remote by push with all branches and tags
alias gp="git push --all && git push --tags"

# Show uncommited, untracked and unpushed changes in your Git repositories
check-repos() {
    curl https://raw.githubusercontent.com/fboender/multi-git-status/master/mgitstatus |
    if [[ -z $@ ]]; then
        sh -s "${HOME}/Projects"
    else
        sh -s $@
    fi
}
