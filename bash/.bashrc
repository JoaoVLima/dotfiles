#
# ~/.bashrc
#

export HISTFILESIZE=10000
export HISTSIZE=1000

export HISTCONTROL=erasedups:ignoredups:ignorespace

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH="$HOME/dotfiles/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dnf='dnf --color=auto'
alias npm='pnpm'
alias npx='pnpm dlx'
alias h='cat $HOME/.bash_history | grep --color=auto'
alias hz='cat $HOME/.bash_history | fzf -q ""\'
