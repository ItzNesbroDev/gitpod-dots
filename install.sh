#!/bin/bash

sudo rm $(which vim)
sudo add-apt-repository ppa:neovim-ppa/unstable --yes
sudo apt-get update -y
sudo apt-get install neovim -y
sudo ln -s $(which nvim) /usr/bin/vim
brew install tmux

cd ~/
git clone https://github.com/ItzNesbroDev/dotfiles
mv ~/dotfiles/.config/nvim ~/.config/nvim
mv ~/dotfiles/.tm* ~/

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
rm -rf ~/.zshrc

echo '# Define useful aliases
alias cl="clear"
alias ll="exa -l -g"
alias ll="ll -a"
alias g="git"

# Install Zsh plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting" "122dc46"

# Define prompt settings
typeset -A __Prompt
__Prompt[ITALIC_ON]=$'\e[3m'
__Prompt[ITALIC_OFF]=$'\e[23m'
plug "zap-zsh/singularisart-prompt"' >>~/.zshrc
