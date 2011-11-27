" Basics {
    set nocompatible " explicitly get out of vi-compatible mode
    runtime bundle/vim-pathogen/autoload/pathogen.vim
    call pathogen#infect()
    syntax on " syntax highlighting on
" }

" General {
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir " always switch to the current file directory
    set fileformats=unix,mac,dos " support all three, in this order
    set directory=~/.vim/tmp " directory to place swap files in
"}

" Vim UI {
    set cursorline " highlight current line
    highlight cursorline ctermbg=red cterm=bold
    highlight ExtraWhitespace ctermbg=darkred
    highlight LineNr ctermbg=darkgray
    match ExtraWhitespace /\t\+\|\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\t\+\|\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\t\+\|\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\t\+\|\s\+$/
    autocmd BufWinLeave * call clearmatches()
    set incsearch "highlight the search phrase as you type
    set nohlsearch "highlight all matches
    set linespace=0 " don't insert any extra pixel lines betweens rows
    set list " we do what to show tabs, to ensure we get them out of my files
    set listchars=tab:»», "show tabs "		" and trailing spaces   
    set laststatus=2 " always show the status line
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%l,%v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    +-- current column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
"}

" Text Formatting/Layout {
    set completeopt= " don't use a pop up menu for completions
    set expandtab " no real tabs please!
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=2 " auto-indent amount when using cindent, >>, << and stuff like that
    set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
    set tabstop=4 " real tabs should be 8, and they will show with set list on
" }
