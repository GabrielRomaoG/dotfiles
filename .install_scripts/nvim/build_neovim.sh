#! /bin/bash

yes Y | sudo apt-get install cmake ninja-build gettext curl build-essential 
git clone https://github.com/neovim/neovim $HOME/personal/neovim

cd $HOME/personal/neovim
git checkout stable

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

