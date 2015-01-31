if &term == 'xterm-color'
set term=linux
end

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'corntrace/bufexplorer'
Plugin 'fatih/vim-go'
Plugin 'kchmck/vim-coffee-script'
Plugin 'majutsushi/tagbar'
Plugin 'rking/ag.vim'
Plugin 'scala/scala-dist', { 'rtp': 'tool-support/src/vim' }
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'wincent/command-t'

call vundle#end()
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

autocmd BufWritePre * :%s/\s\+$//e

cnoreabbrev W w

set wildignore=compiled,*.pyc

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>b :execute 'BufExplorer' <CR>
map <leader>w :execute 'BD' <CR>
map <leader>g :execute 'TagbarToggle' <CR>

let g:CommandTTraverseSCM = 'pwd'

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
