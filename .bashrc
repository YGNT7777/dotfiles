#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


alias neofetch='fastfetch'
alias cmatrix="cmatrix -u 10 -B -f -C red"
alias cdwm="vim ~/dwm/config.h"
alias mdwm="cd ~/dwm; sudo make clean install; cd -"
alias cslstatus="vim ~/slstatus/config.h"
alias mslstatus="cd ~/slstatus; sudo make clean install; cd -"
alias vim="nvim"
alias tty-clock="tty-clock -b -D -C 1"

# uv
export PATH="/home/Natsos/.local/bin:$PATH"
