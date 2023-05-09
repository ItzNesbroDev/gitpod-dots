#!/bin/bash

sudo rm $(which vim)
sudo add-apt-repository ppa:neovim-ppa/unstable --yes
sudo apt-get update -y
sudo apt-get install neovim -y
sudo ln -s $(which nvim) /usr/bin/vim
brew install tmux

cd ~/
git clone https://github.com/ItzNesbroDev/dotfiles ~/dotfiles
mv ~/dotfiles/.config/nvim ~/.config/nvim
mv ~/dotfiles/.tm* ~/

echo "zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1" >> ~/.zapscript
rm -rf ~/.zshrc
curl -sS https://starship.rs/install.sh | sh

echo '# Define useful aliases
alias cl="clear"
alias ll="exa -l -g"
alias ll="ll -a"
alias g="git"

# Install Zsh plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting" "122dc46"

eval "$(starship init zsh)" ' >>~/.zshrc
