#!/bin/sh

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > tmp_install.sh
sh ./tmp_install.sh
m tmp_install.sh
ln -s ~/.vim/.vimrc ~/.vimrc
