source ~/.git-completion.bash

function parse_git_deleted {
  [[ $(git status --ignore-submodules 2> /dev/null | grep deleted:) != "" ]] && echo "-"
}
function parse_git_added {
  [[ $(git status --ignore-submodules 2> /dev/null | grep "Untracked files:") != "" ]] && echo '+'
}
function parse_git_modified {
  [[ $(git status --ignore-submodules 2> /dev/null | grep modified:) != "" ]] && echo "*"
}
function parse_git_dirty {
  echo "$(parse_git_added)$(parse_git_modified)$(parse_git_deleted)"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
function parse_ruby_version {
  echo $RUBY_VERSION | sed -e "s/^ruby\-//"
}

xcode() {
 open -a /Applications/Xcode.app $1
}
alias xcode=xcode

appcode() {
  open -a /Applications/AppCode.app $1
}

deckset() {
  open -a /Applications/Deckset\ private\ beta.app $1
}
alias deckset=deckset

PS1='\[\033[01;34m\]\w\[\033[0;31m\]$(parse_git_branch)\[\e[0m\]$ '

export GOPATH=$HOME/Documents/Projekte/go

export PATH=/usr/local/bin:/usr/local/sbin:/opt/X11/include:$GOPATH/bin:$PATH

alias diff='diff -Nuarbw'

alias be='bundle exec'

alias ll='ls -l'
alias ..='cd ..'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export GEM_HOME="$HOME/.gem"
export PATH=$GEM_HOME/bin:$PATH

