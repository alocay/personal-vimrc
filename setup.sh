#!/bin/bash

echo

command -v git >/dev/null 2>&1 || { echo >&2 "git is not installed. Install git and run again"; exit; }

VUNDLE_DIR=~/.vim/bundle/Vundle.vim

if [ -d "${VUNDLE_DIR}" ]
then
   echo "Not pulling Vundle.vim since it already exists @ $HOME"
else
   echo "Pulling down Vundle..."
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo
echo "Copying over .vimrc to $HOME"

cp .vimrc ~

command -v vim >/dev/null 2>&1 || { echo >&2 "vim is not installedd. Install vim and run again"; exit; }

echo
echo "Installing plugins..."

vim -E -s -u ~/.vimrc +PluginInstall +qall

echo
echo "Complete."
echo
