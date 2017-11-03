alias cd..='cd ..'
alias s='cd ..; pwd'
alias ss='s; s'
alias sss='s; s; s'
alias ssss='s; s; s; s'
alias sssss='s; s; s; s; s'
alias ssssss='s; s; s; s; s; s'
alias p='cd -'

alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'

#alias rm='/bin/rm -i'
#alias mv='mv -i'
#alias cp='cp -i'
alias less='less -iSmn'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mkdir='mkdir -m 755'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias netc='sudo ~/bin/netc'
alias netclisten='nc -u -l 6666'

alias lsmodh='lsmod | head'
alias cdlin='cd /home/jay/kernels/linux'
alias cdb='cd /home/jay/autotest/linux'

alias dm='dmesg'
alias dmc='sudo dmesg -C'

alias tmux="TERM=screen-256color-bce tmux"
alias ctags="/usr/bin/ctags"
