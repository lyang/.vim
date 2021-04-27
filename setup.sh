#!/bin/bash

set -o errexit
set -o nounset

ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd $ROOT_DIR && git submodule update --init --recursive
ln -fs $ROOT_DIR/vimrc $HOME/.vimrc
vim +PluginInstall +qall
cd $ROOT_DIR/bundle/command-t && rake make
