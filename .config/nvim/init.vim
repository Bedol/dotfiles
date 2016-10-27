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
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'ervandew/supertab'
    " Plug 'neomake/neomake'
    Plug 'godlygeek/tabular'
call plug#end()

let mapleader = "," " change standard leader '\' to ','

" Spell
" nnoremap <sllent> <leader>s :set spell!<CR>
set spell
set spelllang=en_us

" Color Scheme
syntax enable
set background=dark
set encoding=utf-8
colorscheme molokai
let g:molokai_original = 1

" Soft tabs - 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

" Basic configuration
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

" Fast save file
nnoremap <silent><C-s> :w<CR>

" Git commands
nnoremap <silent><Leader>gs :Gstatus<CR>
nnoremap <silent><Leader>gd :Gdiff<CR>
nnoremap <silent><Leader>gc :Gcommit<CR>
nnoremap <silent><Leader>gp :Gpush<CR>

" turn off highlight
nnoremap <silent><Leader>/ :nohls<CR>

" Vim Plug mapping
nnoremap <silent><Leader>pi :PlugInstall<CR>
nnoremap <silent><Leader>pc :PlugClean<CR>

" fast quit
nnoremap <silent><Leader>qq :q!<CR>

" save file and quit
nnoremap <silent><Leader>wq :wq<CR>

"Better movement on split panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" open neovim config
nnoremap <silent><C-i>n :e ~/.config/nvim/init.vim<CR>

" close current buffer
nnoremap <silent><Leader>dd :bd<CR>

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
let g:ag_highlight=0 " turn off Ag Hightlight
let g:ctrlp_use_caching = 0

" Vim-ruby config
let g:ruby_indent_access_modifier_style = 'outdent'
let ruby_foldable_groups = 'if case %'

" Vim-Mundo config (fork Gundo for neovim) - WARNING: don't work with neovim 0.1.2
nnoremap <leader>u :MundoToggle<CR>
set undofile
set undodir=~/.config/nvim/undo

" Syntastic config
" let g:syntastic_check_on_open = 1 " Check syntax when open file
let g:syntastic_check_on_wq = 1 " Check syntax when save and quit file
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_ruby_checkers=['rubocop', 'reek']
let g:syntastic_enable_signs=1 " Mark syntax error with signs
let g:syntastic_auto_jump=0 " turn off auto jump to error
let g:syntastic_auto_loc_list=1 " show error list automatically
highlight SyntasticError guibg=#2f0000

" CtrlP
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_root_markers = ['Gemfile'] " use Gemfile as root maker
let g:ctrlp_show_hidden = 1 " Show hidden files (dotfiles)

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

" Draw limit line - 80 chars per line
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")

" Exstra space on comments (NERDCommenter)
let NERDSpaceDelims=1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Directory for snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Change cursor shape in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

map gn :bn<CR>
map gp :bp<CR>
map gd :bd<CR>

" let g:neomake_ruby_enabled_makers = ['rubocop']
" nnoremap <silent><Leader>mk :Neomake<CR>
