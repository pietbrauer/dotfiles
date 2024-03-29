set nocompatible

filetype plugin indent on

" Enables markdown highlighting with .md extension
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.podspec set filetype=ruby

au BufNewFile,BufRead Appfile set ft=ruby
au BufNewFile,BufRead Deliverfile set ft=ruby
au BufNewFile,BufRead Fastfile set ft=ruby
au BufNewFile,BufRead Gymfile set ft=ruby
au BufNewFile,BufRead Matchfile set ft=ruby
au BufNewFile,BufRead Snapfile set ft=ruby
au BufNewFile,BufRead Scanfile set ft=ruby
au BufNewFile,BufRead Podfile set ft=ruby

execute pathogen#infect()

set noswapfile
set backspace=indent,eol,start
map <c-n> :NERDTreeToggle<CR>

set mouse=a

colorscheme molokai

set history=1000
set gcr=a:blinkon0 " Disable cursor blink
set autoread " Automatically re-read files if unmodified inside Vim
set laststatus=2

" Navigation between split windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set nu "show line number
set tabstop=2
set shiftwidth=2
set expandtab
set wildmenu

set noerrorbells
set visualbell

set autoindent
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

set guifont=Fira\ Codei\ Regular:h12

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set guioptions=egmrt
endif

