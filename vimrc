if &term == 'xterm-color'
set term=linux
end

set noswapfile
set hidden

set cursorline

let mapleader = ","

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent

set number
set hlsearch
syntax on

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>w :execute 'BD' <CR>
map <leader>t :execute 'FuzzyFinderTextMate' <CR>

