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
NeoBundle 'easymotion/vim-easymotion'


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

set hlsearch
set nu
set history=1000
" Show status bar always
set laststatus=2

" Tab related stuff
" This needs to be a autocmd which is run after the ftplugins(filetype
" plugins) are executed, to overwrite the tab settings of this plugins.
autocmd FileType python setlocal noexpandtab shiftwidth=4 softtabstop=4 tabstop=4



let g:bufferline_echo = 0
let g:EasyMotion_do_mapping = 0


