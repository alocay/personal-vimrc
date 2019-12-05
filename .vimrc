set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-dispatch'
Plugin 'rust-lang/rust.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jacoborus/tender.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
"

if (has("termguicolors"))
  set termguicolors
endif

let g:airline_theme = 'tender'

silent! colorscheme tender

set tabstop=4 shiftwidth=4 expandtab
