set lines=48
set columns=160

set guioptions-=T

colorscheme macvimanoop
set background=dark

set visualbell

set guifont=Inconsolata-dz:h18

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
  macmenu &File.Close key=<nop>
  map <D-w> :execute 'BD' <CR>
end

source $HOME/.gvimrc.local
