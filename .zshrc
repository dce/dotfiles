export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export NODE_PATH=/usr/local/lib/node
export PATH=/usr/local/bin:$PATH:~/Projects/scripts:/usr/local/share/npm/bin:~/.bin:/usr/local/sbin

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


# expand functions in the prompt
setopt prompt_subst

function git-branch() {
  branch=$(git branch 2> /dev/null | grep '^\*' | sed 's/^\*\ //')
  [[ -n $branch ]] && echo "[$branch]"
}

# prompt
export PS1='%~`git-branch` > '

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
