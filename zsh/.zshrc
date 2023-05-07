#!/bin/bash

alias cl="clear"
alias ll="exa -l -g"
alias ll=ll -a
alias g=git

plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting" "122dc46"

typeset -A __Prompt

__Prompt[ITALIC_ON]=$'\e[3m'
__Prompt[ITALIC_OFF]=$'\e[23m'

plug "zap-zsh/singularisart-prompt"
