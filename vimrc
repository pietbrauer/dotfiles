set nocompatible

execute pathogen#infect()

filetype plugin indent on

set noswapfile
map <c-n> :NERDTreeToggle<CR>

set mouse=a

" Navigation between split windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set nu "show line number
set tabstop=2
set shiftwidth=2
set expandtab

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set guioptions=egmrt
endif

