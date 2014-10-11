#!/bin/bash
set -x

# backup 
cp ~/.vimrc ~/.vimrc.bak

# remove
rm -rf ~/.vimrc

# link settings
ln -s $(PWD)/.vimrc ~/.vimrc

