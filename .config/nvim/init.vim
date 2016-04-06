call plug#begin('~/.config/nvim/plugged')
    Plug 'easymotion/vim-easymotion'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'sickill/vim-monokai'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-gitgutter'
call plug#end()

" Basic configuration
set encoding=utf-8
colorscheme monokai
set history=1000
let g:molokai_original = 1
syntax enable
set cursorline
set wildmenu
set showmatch
set ruler
set hlsearch
set showcmd
set number
"set relativenumber
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=4
set expandtab
inoremap jk <ESC>


map j gj
map k gk

" Easy Motion Config
let mapleader = "," " change standard leader '\' to ','

" NERDTree Configuration
map <C-e> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowHidden = 1

" NERDTree Git Plugin configuration
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Vim-Airline configuration
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
