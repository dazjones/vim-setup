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

# Install/update vim-airline
echo "Installing vim-airline"
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# Install/update ctrlp
echo "Installing ctrlp"
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp/ctrlp.vim

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
