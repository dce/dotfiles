export CLICOLOR=1
export NODE_PATH=/usr/local/lib/node
export PATH=$PATH:~/Projects/scripts:/usr/local/share/npm/bin:~/.bin

# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# automatically use pushd
setopt auto_pushd pushd_ignore_dups pushdminus

# use vim as an editor
export EDITOR="mvim -f"

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

bindkey ^A beginning-of-line
bindkey ^E end-of-line

# expand functions in the prompt
setopt prompt_subst

function git-branch() {
  git branch 2> /dev/null | grep '^\*' | sed 's/^\*\ //'
}

# prompt
export PS1='%~[`git-branch`] > '

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
