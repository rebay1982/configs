#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[32m\]\u\[\033[0m\]@\[\033[31m\]\h\[\033[0m\]: \[\033[1;34m\]\w\[\033[0m\]$(__git_ps1 "(%s)")\n$ '

source /usr/share/git/completion/git-prompt.sh
source /usr/share/git/completion/git-completion.bash

export GOPATH="$HOME/dev/git/go"
export PATH=$PATH:$GOPATH/bin

# For tmux 256 color support.
export TERM=screen-256color-bce

neofetch
