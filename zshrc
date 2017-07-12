# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wls/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first -lh'
alias clip='xclip -selection clipboard'

export PS1='%n@ %B%m%b :%2~%(!.#.$) '
