#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH="$HOME/dotfiles/bin:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'




eval "$(starship init bash)"
