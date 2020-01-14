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
nnoremap <leader>src :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>init :tabe ~/.config/nvim/init.vim<CR>

"=========================== Plugins =============================

call plug#begin("~/.local/share/nvim/plugged")

Plug 'preservim/nerdtree' 
"Plug 'https://github.com/rkulla/pydiction.git'
Plug 'https://github.com/vim-python/python-syntax.git'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify' 
Plug 'scrooloose/nerdcommenter'
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

"========================== Kite ============================

let g:kite_auto_complete=1
let g:kite_snippets=1
let g:kite_tab_complete=1
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text
set completeopt-=preview


"========================== python syntax =========================

let g:python_highlight_all = 1

"========================== NERD Commenter ==========================

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment


