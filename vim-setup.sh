#!/bin/bash
SCRIPT_PATH="`dirname \"$0\"`"

rm -rf $HOME/.vim

# Install pathogen
echo "Installing pathogen..."
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install/update nerdtree
echo "Installing nerdtree"
git clone --quiet https://github.com/scrooloose/nerdtree.git $HOME/.vim/bundle/nerdtree

# Backup vimrc
echo "Backing up .vimrc"
if [ -e $HOME/.vimrc ]; then
   cp $HOME/.vimrc $HOME/.vimrc.bak
fi

# Copy new vimrc
echo "Copying new vimrc"
cp $SCRIPT_PATH/files/vimrc $HOME/.vimrc

echo ""
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@         Great success!         @ "
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
