# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob nomatch
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
alias bc='bc -l'

export PS1='%n@ %B%m%b :%2~%# '

bindkey -v
# Colemak.
  bindkey -M vicmd "n" backward-char
  bindkey -M vicmd "e" down-line-or-history
  bindkey -M vicmd "i" up-line-or-history
  bindkey -M vicmd "o" forward-char
  bindkey -M vicmd "k" vi-insert
  bindkey -M vicmd "K" vi-insert-bol
  bindkey -M vicmd "h" vi-repeat-search
  bindkey -M vicmd "H" vi-rev-repeat-search
  bindkey -M vicmd "l" beginning-of-line
  bindkey -M vicmd "L" end-of-line
  bindkey -M vicmd "j" vi-forward-word-end
  bindkey -M vicmd "J" vi-forward-blank-word-end
