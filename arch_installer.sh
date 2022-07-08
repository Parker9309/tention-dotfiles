#!/bin/bash

sudo pacman -Syu
sudo pacman -S base-devel cmake unzip ninja tree-sitter curl
git clone https://github.com/neovim/neovim
cd neovim && make
sudo make install
cd ..
sudo pacman -S npm
sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo npm install -g typescript typescript-language-server
sudo npm install -g diagnostic-languageserver
sudo npm i -g eslint_d prettier