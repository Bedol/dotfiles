" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'easymotion/vim-easymotion'
    Plug 'jiangmiao/auto-pairs'
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'flazz/vim-colorschemes'
    Plug 'mhinz/vim-startify'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-bundler'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-endwise'
    Plug 'mattn/emmet-vim'
call plug#end()
