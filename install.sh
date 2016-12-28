#!/bin/sh

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > tmp_install.sh
sh ./tmp_install.sh
rm tmp_install.sh
ln -s $(pwd)/$(dirname $0)/.vimrc ~/.vimrc
