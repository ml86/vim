" Vundle settings

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on

" General settings
syntax on
set number
set history=1000
set hidden
set showmatch
set incsearch
set hlsearch
set noshowmode
set cursorline
hi CursorLine cterm=inverse

set autoindent
set shiftwidth=2
set tabstop=2
set expandtab

" Powerline settings
set laststatus=2

