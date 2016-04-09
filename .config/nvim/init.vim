" Install plugins by command :PlugInstall
call plug#begin('~/.config/nvim/plugged')
    Plug 'easymotion/vim-easymotion'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-gitgutter'
    Plug 'rking/ag.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/syntastic'
    Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-endwise'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'raimondi/delimitmate'
    Plug 'flazz/vim-colorschemes'
    Plug 'edkolev/tmuxline.vim'
call plug#end()

let mapleader = "," " change standard leader '\' to ','

" Basic configuration
set encoding=utf-8
colorscheme molokai
set history=1000
let g:molokai_original = 1
syntax enable
set cursorline
set wildmenu
set showmatch
set ruler
set hlsearch
set showcmd
set relativenumber
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set expandtab
inoremap jk <ESC>

nnoremap j gj
nnoremap k gk

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

" Ag configuration
let g:ag_highlight=1

" Vim-ruby config
let g:ruby_indent_access_modifier_style = 'outdent'
