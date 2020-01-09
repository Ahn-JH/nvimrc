call pathogen#infect()
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
execute pathogen#infect()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'



map <F2> :w<Enter>: !python %<Enter>

set statusline=%<%f\ %h%m%r&ruler%=%-14.(%l,%c%V%)\ %P
set laststatus=2
