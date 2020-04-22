autoload -U compinit
compinit
autoload colors
colors

HISTFILE=~/.zhistory
SAVEHIST=5000
HISTSIZE=5000
DIRSTACKSIZE=20
setopt  APPEND_HISTORY
setopt  HIST_IGNORE_ALL_DUPS
setopt  HIST_IGNORE_SPACE
setopt  HIST_REDUCE_BLANKS
setopt  No_Beep
setopt  prompt_subst

RPROMPT=$'%{\e[1;35m%}%T%{\e[0m%}'
PROMPT=$'%{\e[1;33m%}[%n@%M] %{\e[1;32m%}%~%{\e[0m%} -> '

setopt appendhistory

setopt INC_APPEND_HISTORY

bindkey '^[OA' history-beginning-search-backward
bindkey '^[OB' history-beginning-search-forward
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[3~' delete-char


#zmodload zsh/complist
setopt menucomplete
zstyle ':completion:*' menu yes select


setopt autocd

autoload -Uz compinit
compinit

setopt extendedglob nomatch notify

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/zsh/.zshrc'

#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#setopt correctall

alias ls='ls -l'