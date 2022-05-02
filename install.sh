#!/bin/sh

CONFIG_DIR=$1
if [ -z "$CONFIG_DIR" ]
then
  echo "Please specify configuration directory as first argument."
  exit 1
fi


curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > tmp_install.sh
sh ./tmp_install.sh
rm tmp_install.sh
ln -s $(pwd)/$CONFIG_DIR/.vimrc ~/.vimrc
