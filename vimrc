if &term == 'xterm-color'
set term=linux
end

set nobackup
set nowritebackup
set ruler
set incsearch

set noswapfile
set hidden

set cursorline

let mapleader = ","

set tabstop=2
set shiftwidth=2
set smarttab
set autoindent
set expandtab
set backspace=indent,eol,start

set number
set hlsearch
syntax on

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>w :execute 'BD' <CR>
map <leader>t :execute 'FuzzyFinderTextMate' <CR>

