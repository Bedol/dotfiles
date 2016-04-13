" Config require neovim 0.1.3
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
    Plug 'raimondi/delimitmate'
    Plug 'flazz/vim-colorschemes'
    Plug 'edkolev/tmuxline.vim'
    Plug 'simnalamburt/vim-mundo', { 'on': 'MundoToggle' }
    Plug 'tpope/vim-bundler'
    Plug 'ervandew/supertab'
    Plug 'unblevable/quick-scope'
call plug#end()

let mapleader = "," " change standard leader '\' to ','

syntax enable
colorscheme badwolf

" Basic configuration
set encoding=utf-8
set history=1000
let g:molokai_original = 1
set cursorline
set wildmenu
set showmatch
set ruler
set hlsearch
set showcmd
set number
set relativenumber
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set expandtab

" quick esc
inoremap jk <ESC>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Map ,/ to hide highlight
nnoremap <silent><Leader>/ :nohls<CR>

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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Ag configuration
let g:ag_highlight=1

" Vim-ruby config
let g:ruby_indent_access_modifier_style = 'outdent'

" Vim-Mundo config (fork Gundo for neovim) - WARNING: don't work with neovim 0.1.2
nnoremap <leader>u :MundoToggle<CR>
set undofile
set undodir=~/.config/nvim/undo

" Syntastic config
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = "✗" 
let g:syntastic_warning_symbol = "⚠"
highlight SyntasticError guibg=#2f0000

" CtrlP
let g:ctrlp_working_path_mode = 'rw'
