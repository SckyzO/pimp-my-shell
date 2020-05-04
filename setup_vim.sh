#!/bin/bash

DEFAULT="\e[0m"
GREEN="\e[01;92m"
YELLOW="\e[01;93m"

INFO="[$YELLOW*$DEFAULT]"
OK="[$GREEN+$DEFAULT]"


# Install Vundle
echo -e "$INFO ${YELLOW}Installing Vundle Plugin Manager$DEFAULT"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "$OK ${GREEN}Vundle installed${DEFAULT}"

# Install Vundle
echo -e "$INFO ${YELLOW}Installing Vundle Plugin Manager$DEFAULT"
git clone https://github.com/hashivim/vim-terraform.git ~/.vim/bundle/vim-terraform
echo -e "$OK ${GREEN}Vundle installed${DEFAULT}"


# Install rupza colorscheme
echo -e "$INFO ${YELLOW}Installing .vimrc file$DEFAULT"
git clone https://github.com/felipesousa/rupza ~/.vim/colors/rupza
cp ~/.vim/colors/rupza/colors/rupza.vim ~/.vim/colors/rupza.vim
echo -e "$OK ${GREEN}.vimrc installed${DEFAULT}"

# Install Monokai colorscheme
git clone https://github.com/tomasr/molokai ~/.vim/colors/molokai
cp ~/.vim/colors/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim

# Setup YouCompleteMe plugin
echo -e "$INFO ${YELLOW}Installing completion plugin (YouCompleteMe)$DEFAULT"
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
git -C ~/.vim/bundle/YouCompleteMe submodule update --init --recursive
~/.vim/bundle/YouCompleteMe/install.py
echo -e "$OK ${GREEN}YouCompleteMe installed${DEFAULT}"

# Install .vimrc file
echo -e "$INFO ${YELLOW}Installing .vimrc file$DEFAULT"
if [[ -e ~/.vimrc ]]; then
  mv ~/.vimrc ~/.vimrc.bckp
fi
cp vimrc ~/.vimrc
echo -e "$OK ${GREEN}.vimrc installed${DEFAULT}"

# Install Plugins
echo -e "$INFO ${YELLOW}Installing plugins$DEFAULT"
vim +PluginInstall +qall
echo -e "$OK ${GREEN}Plugins installed${DEFAULT}"

