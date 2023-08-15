#!/bin/bash

# Install neovim
sudo apt-get remove --purge vim -y
sudo add-apt-repository ppa:neovim-ppa/unstable --yes
sudo apt-get update -y
sudo apt-get install neovim -y
sudo ln -s $(which nvim) /usr/bin/vim

# Install tmux
sudo apt-get install tmux -y

# Install exa
sudo apt install exa -y

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone and setup dotfiles
cd ~/
git clone https://github.com/ItzNesbroDev/dotfiles ~/dotfiles
mv ~/dotfiles/.config/nvim ~/.config/nvim
rm -rf ~/.config/tmux
mv ~/dotfiles/.config/tmux ~/.config/tmux

# Update zshrc with aliases and plugins
echo '
# Define useful aliases
alias cl="clear"
alias ll="exa -l -g --icons"
alias la="ll -a"
alias g="git"
alias gc="git add . && czg"

# Load zsh plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
' >> ~/.zshrc

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Source the updated zshrc
source ~/.zshrc

# install czg
npm i -g czg
