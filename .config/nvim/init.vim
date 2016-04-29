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
    Plug 'valloric/youcompleteme'
    Plug 'unblevable/quick-scope'
    Plug 'christophermca/meta5'
    Plug 'tpope/vim-rails'
    Plug 'wikitopian/hardmode'
    Plug 'thoughtbot/vim-rspec'
    Plug 'mattn/emmet-vim'
    Plug 'bronson/vim-trailing-whitespace'
call plug#end()

let mapleader = "," " change standard leader '\' to ','

syntax enable
set background=dark
colorscheme badwolf
let g:molokai_original = 1

" Basic configuration
set encoding=utf-8
set history=1000
set cursorline
set wildmenu
set showmatch
set ruler
set hlsearch
set showcmd
set number
set relativenumber
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2

" quick esc
inoremap jk <ESC>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

nnoremap <silent><Leader>/ :nohls<CR>
nnoremap <silent><C-s> :w<CR>
nnoremap <silent><Leader>pi :PlugInstall<CR>
nnoremap <silent><Leader>pc :PlugClean<CR>
nnoremap <silent><Leader>gs :Gstatus<CR>
nnoremap <silent><Leader>qq :q<CR>
nnoremap <silent><Leader>wq :wq<CR>

" open neovim config
nnoremap <silent><C-i>n :e ~/.config/nvim/init.vim<CR>

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
let g:ctrlp_use_caching = 0

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
let g:ctrlp_root_markers = ['Gemfile']

" Hardmode config
nnoremap <leader>hm <Esc>:call ToggleHardMode()<CR>

set wildignore+=*.swp,*~,._*,*/tmp/*,.DS_Store

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm2"

map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Draw limit line
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")
