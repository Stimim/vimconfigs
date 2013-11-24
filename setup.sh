#!/bin/bash

set -x # echo on
PWD=`pwd`

ln -sf $PWD/vimrc.vim ~/.vimrc 

mkdir -p ~/.vim/bundle

ln -sf $PWD ~/.vim/stimim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim -u ~/.vim/stimim/bundles.vim +BundleInstall +qall

cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer

mkdir -p ~/.vim/after/syntax/cpp

ln -sf ~/.vim/bundle/STL-Syntax/syntax/stl.vim ~/.vim/after/syntax/cpp/
