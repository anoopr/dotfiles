if &term == 'xterm-color'
set term=linux
end

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'corntrace/bufexplorer'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'topfunky/PeepOpen-EditorSupport', { 'rtp': 'vim-peepopen' }
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'

filetype plugin indent on

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

cnoreabbrev W w

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>b :execute 'BufExplorer' <CR>
map <leader>w :execute 'BD' <CR>

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
