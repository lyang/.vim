" Basics {
    set nocompatible " explicitly get out of vi-compatible mode
    syntax on " syntax highlighting on
" }

" Vundle {
    filetype off              " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'chr4/nginx.vim'
    Plugin 'dense-analysis/ale'
    Plugin 'elixir-lang/vim-elixir'
    Plugin 'gmarik/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tmux-plugins/vim-tmux'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rails'
    Plugin 'tpope/vim-surround'
    Plugin 'vim-ruby/vim-ruby'
    Plugin 'vim-test/vim-test'
    Plugin 'wincent/command-t'
    call vundle#end()         " required
" }

" General {
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir " always switch to the current file directory
    set fileformats=unix,mac,dos " support all three, in this order
    set directory=~/.vim/tmp " directory to place swap files in
"}

" Vim UI {
    set background=dark
    highlight ExtraWhitespace ctermbg=darkred ctermfg=white guibg=darkred guifg=white
    highlight LineNr ctermbg=darkgray
    autocmd BufWinEnter * if &filetype != 'help' | match ExtraWhitespace /\t\+\|\s\+$/ | endif
    autocmd InsertEnter * if &filetype != 'help' | match ExtraWhitespace /\t\+\|\s\+\%#\@<!$/ | endif
    autocmd InsertLeave * if &filetype != 'help' | match ExtraWhitespace /\t\+\|\s\+$/ | endif
    autocmd BufWinLeave * call clearmatches()
    set incsearch "highlight the search phrase as you type
    set nohlsearch "highlight all matches
    set linespace=0 " don't insert any extra pixel lines betweens rows
    set list " we do what to show tabs, to ensure we get them out of my files
    set listchars=tab:◆◆, "show tabs '		' and trailing spaces  
    set laststatus=2 " always show the status line
    set number " turn on line numbers
    set numberwidth=4 " We are good up to 99999 lines
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set statusline=%F%m%r%h%w%=[%L][%{&ff}]%y[%p%%][%l,%v]
    "              | | | | | |  |   |      |  |     |    |
    "              | | | | | |  |   |      |  |     |    +-- current column
    "              | | | | | |  |   |      |  |     +-- current line
    "              | | | | | |  |   |      |  +-- current % into file
    "              | | | | | |  |   |      +-- current syntax in square brackets
    "              | | | | | |  |   +-- current fileformat
    "              | | | | | |  +-- number of lines
    "              | | | | | +-- right align
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
"}

" Text Formatting/Layout {
    set completeopt= " don't use a pop up menu for completions
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set smartcase " if there are caps, go case-sensitive
    set expandtab " no real tabs please!
    set shiftwidth=2 " auto-indent amount when using cindent, >>, << and stuff like that
    set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
" }

" Vimrc {
    autocmd BufWritePost vimrc source %
" }

" NERDTree {
  map <silent> <LocalLeader>nf :NERDTreeFind<CR>
  map <silent> <LocalLeader>nr :NERDTree<CR>
  map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
" }
