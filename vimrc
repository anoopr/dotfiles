if &term == 'xterm-color'
set term=linux
end

let mapleader = ","

set nobackup
set nowritebackup

set cursorline
set ruler
set number
set nowrap
syntax on

set incsearch
set hlsearch
set ignorecase
set smartcase

set scrolloff=3

set confirm
set shortmess=atI
set visualbell

set noswapfile
set hidden

set tabstop=2
set shiftwidth=2
set smarttab
set autoindent
set expandtab
set backspace=indent,eol,start

set wildmenu
set wildmode=longest:full

let g:fuzzy_ceiling = 100000
let g:fuzzy_ignore  = "*.class"

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>b :execute 'HSBufExplorer' <CR>
map <leader>w :execute 'BD' <CR>
map <leader>t :execute 'FuzzyFinderTextMate' <CR>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map H ^
map L $
