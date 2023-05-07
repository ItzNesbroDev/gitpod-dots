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
mv ./zsh/.zshrc ~/.zshrc
