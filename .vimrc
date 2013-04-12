" Vundle settings

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'Shougo/neocomplcache'

filetype plugin indent on
filetype plugin on

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
hi CursorLine cterm=NONE ctermbg=grey
set tw=90
set colorcolumn=+1
hi ColorColumn ctermbg=magenta
set clipboard=unnamed

set autoindent
set shiftwidth=2
set tabstop=2
set expandtab

" automatically re-source saved vimrc
autocmd BufWritePost ~/.vimrc   so ~/.vimrc

" Powerline settings
set laststatus=2

" Neocomplcache settings
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_max_list = 15
"let g:neocomplcache_disable_auto_complete = 1

" Key mappings
let mapleader = ','
nnoremap <leader>tt :TagbarToggle<CR>
