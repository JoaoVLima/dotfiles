#
# ~/.bashrc
#

export HISTFILESIZE=10000
export HISTSIZE=500

export HISTCONTROL=erasedups:ignoredups:ignorespace

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH="$HOME/dotfiles/bin:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias s='start_dwl'
alias h='cat $HOME/.bash_history | grep --color=auto'
alias hz='cat $HOME/.bash_history | fzf -q ""\'

shopt -s autocd

export STARSHIP_CONFIG="$HOME/dotfiles/starship/starship.toml"
eval "$(starship init bash)"
