#
# ~/.bashrc
#

# History config
export HISTFILESIZE=10000
export HISTSIZE=1000
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[38;5;46m\][\[\e[38;5;208m\]\u\[\e[38;5;46m\]@\[\e[38;5;45;2m\]\h\[\e[0;38;5;46m\]/\[\e[95m\]\W\[\e[38;5;46m\]]\$>\[\e[0m\] '

export PATH="$HOME/dotfiles/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dnf='dnf --color=auto'
alias npm='pnpm'
alias npx='pnpm dlx'
alias h='cat $HOME/.bash_history | grep --color=auto'
alias hz='cat $HOME/.bash_history | fzf -q ""\'