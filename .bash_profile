export PS1="\w\$(git-radar --bash --fetch)\n~ "

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git Aliases
alias gac="git add . && git commit -m"
alias gs="git status"
alias gpc="git push origin HEAD"
alias gb="branch-search"
alias gbcp='git branch | grep "*" | cut -b 3- | pbcopy'
alias ghpr='gh pr view $(git rev-parse --abbrev-ref HEAD) -w'
alias ghdiff='open "https://github.$(git config remote.origin.url | cut -f2 -d.)/compare/$(git rev-parse --abbrev-ref HEAD)?expand=1"'
alias ghrepo='open "https://github.$(git config remote.origin.url | cut -f2 -d.)"'
alias ghact='open "https://github.$(git config remote.origin.url | cut -f2 -d.)/actions"'
alias gco='git checkout'
alias please='sudo'
alias deploy-staging-api="git tag -f deploy-staging-api && git push --tags -f"
alias deploy-staging-sockets="git tag -f deploy-staging-sockets && git push --tags -f"

# GO Aliases
alias air="~/.air"

export GOPATH="$HOME/Go"

export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/dev/bash-scripts"

killProcess() {
  lsof -ti tcp:"$1" | xargs kill
}
. "$HOME/.cargo/env"
