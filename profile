export GOPATH=$HOME/Documents/Projekte/go

export PATH=/usr/local/bin:/usr/local/sbin:/opt/X11/include:$GOPATH/bin:$PATH

alias diff='diff -Nuarbw'

alias be='bundle exec'

alias ls='exa'
alias ll='exa -l'
alias ..='cd ..'

alias gforget='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

export GEM_HOME="$HOME/.gem"
export PATH=$GEM_HOME/bin:$(pyenv root)/shims:/usr/local/anaconda3/bin:$PATH
export M2=$(brew --prefix maven)/libexec/bin
export M2_HOME=$(brew --prefix maven)/libexec
export MONGODB_HOME=$HOME
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

autoload -Uz compinit && compinit
