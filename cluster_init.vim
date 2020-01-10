"Neo VIM setting
"Author: Ahn-JH, 0421ajh@naver.com


"======================= General Setting =======================
syntax on
filetype plugin indent on
filetype plugin on
let mapleader=","
set history=1000
set ruler
set showmatch
set bg=dark
set nu
set hlsearch
set clipboard=unnamed
set mouse=a

"Statusline Setting
set laststatus=2
set statusline=%F\ %y%m%r\ %=Line:\ %l/%L\ [%p%%]\ Col:%c\ Buf:%n

"========================= Indentation =========================
set tabstop=4                       
set softtabstop=4                  
set shiftwidth=4                  
set autoindent                  
set expandtab                  
set smartindent

"========================= Key Mapping =========================
map <leader>w :w
map <leader>q :q
map <F2> :w<Enter>: !python %<Enter>
inoremap kl <ESC>
nnoremap <leader>src :source ~/.vimrc<CR>
nnoremap <leader>vimrc :tabe ~/.vimrc<CR>

"=========================== Plugins =============================

call plug#begin("~/.local/share/nvim/plugged")

Plug 'preservim/nerdtree' 
Plug 'https://github.com/rkulla/pydiction.git'
Plug 'https://github.com/vim-python/python-syntax.git'
call plug#end()
"========================== NERDTree =============================
"open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif  

"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

"Remove Press ? for help
let NERDTreeMinimalUI = 1

"Arrow Setting
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Key mapping NERDTree Toggle
map <C-n> :NERDTreeToggle<CR> 

"=========================== pydiction ===========================
"Source location
let g:pydiction_location='~/.local/share/nvim/plugged/pydiction/complete-dict'

"height of completion menu
let g:pydiction_menu_height=3

"========================== python syntax =========================

let g:python_highlight_all = 1





