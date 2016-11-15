"----------------------------------------
" NeoBundle initialization:
"---------------------------------------
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'altercation/vim-colors-solarized'


" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"----------------------------------------
"Misc section:
"----------------------------------------
let mapleader=" "

noremap <LEADER>n :NERDTreeToggle<CR>
nmap <LEADER>s <Plug>(easymotion-overwin-f)
nmap <LEADER>b :<C-U>execute "<c-r>=v:count==0 ? "b#" :"b" . v:count<CR>"<CR>
nmap <LEADER>t :TagbarToggle<CR>
nmap <LEADER>in4 :setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4<CR>
nmap <LEADER>ie4 :setlocal noexpandtab shiftwidth=4 softtabstop=4 tabstop=4<CR>
nmap <LEADER>in2 :setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2<CR>
nmap <LEADER>ie2 :setlocal noexpandtab shiftwidth=2 softtabstop=2 tabstop=2<CR>
nmap <LEADER>fn :cn<CR>
nmap <LEADER>fp :cp<CR>
nmap <LEADER>fl :clist<CR>
nmap <LEADER>ls :ls<CR>

nmap <F4> :w \| !bjosh connect -d int_trunc int_trunc.bjosh<CR>


set hlsearch
set nu
set history=1000
" Show status bar always
set laststatus=2

syntax enable
set background=dark
colorscheme solarized

" Tab related stuff
" This needs to be a autocmd which is run after the ftplugins(filetype
" plugins) are executed, to overwrite the tab settings of this plugins.
autocmd FileType python setlocal noexpandtab shiftwidth=4 softtabstop=4 tabstop=4

set noexpandtab shiftwidth=4 softtabstop=4 tabstop=4



let g:bufferline_echo = 0
let g:EasyMotion_do_mapping = 0


