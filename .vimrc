" vundle
set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'molokai'
Plugin 'sheerun/vim-polyglot'
call vundle#end()
filetype plugin indent on

" general config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set showcmd
set ignorecase
set smartcase
