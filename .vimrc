syntax on
filetype indent plugin on
filetype plugin on
let g:pydiction_location='~/.vim/pydiction/complete-dict'
let python_version_3 = 1
let python_highlight_all = 1
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set bg=dark
set nu

map <F2> :w<Enter>: !python %<Enter>

set statusline=%<%f\ %h%m%r&ruler%=%-14.(%l,%c%V%)\ %P
set laststatus=2
