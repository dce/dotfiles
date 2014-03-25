export PATH=/usr/local/bin:$PATH:~/Projects/scripts:/usr/local/share/npm/bin:~/.bin:/usr/local/sbin:~/.rvm/bin:/Applications/LibreOffice.app/Contents/MacOS:/usr/local/Cellar/go/1.2/libexec/bin

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kolo"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew rvm)

source $ZSH/oh-my-zsh.sh

# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# expand functions in the prompt
setopt prompt_subst

# use vim as an editor
export EDITOR="mvim -f"

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# github
if [ -e "$HOME/.github" ]; then
  source "$HOME/.github"
fi

# max open files (default 256)
ulimit -n 4096

# vi mode
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

bindkey ^A beginning-of-line
bindkey ^E end-of-line

bindkey "^[[3~"  delete-char
bindkey "^[3;5~" delete-char

# shared history (http://derekreeve.com/2010/01/shared-command-history-with-zsh/)
setopt share_history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=200

# cdpath
cdpath=(~ ~/Projects)

# run_test functional/users_controller
run_test() {
  cd test
  ruby $1_test.rb
  cd ..
}

# run_fun_test users
run_fun_test(){
  run_test functional/$1_controller
}

# run_unit_test user
run_unit_test(){
  run_test unit/$1
}

# run_int_test redirector
run_int_test(){
  run_test integration/$1
}

# boosh commits
boosh() {
  boom echo $1 | sh
}

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Display hard tabs as two spaces
tabs -2

export GOPATH=/Users/dce/gocode

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby 2.1
