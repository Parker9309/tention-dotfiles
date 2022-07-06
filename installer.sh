#!/bin/bash

sudo apt update && sudo apt update
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
git clone https://github.com/neovim/neovim
cd neovim && make
sudo make install
cd ..
sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo npm install -g typescript typescript-language-server
sudo npm install -g diagnostic-languageserver
sudo npm i -g eslint_d prettier
