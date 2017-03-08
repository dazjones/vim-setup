#!/bin/bash

# Install pathogen
echo "Installing pathogen..."
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install/update nerdtree
if ! test -d "$HOME/.vim/bundle/nerdtree/.git"; then
  echo "Installing nerdtree"
  git clone https://github.com/scrooloose/nerdtree.git $HOME/.vim/bundle/nerdtree
else
  echo "Updating nerdtree"
  git pull -q $HOME/.vim/bundle/nerdtree
fi

echo "Copying vimrc"
# Copy over vimrc
cp files/vimrc $HOME/.vimrc
