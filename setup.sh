#!/bin/bash

set -o errexit
set -o nounset

ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
ln -fs $ROOT_DIR/vimrc $HOME/.vimrc
vim -es -u $HOME/.vimrc -i NONE -c "PlugInstall" -c "qa"
