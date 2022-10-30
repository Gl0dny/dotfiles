" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    "Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'wadackel/vim-dogrun'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line
    Plug 'itchyny/lightline.vim'
    " Rainbow parantheses
    Plug 'junegunn/rainbow_parentheses.vim'
    " Fzf
     Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
     Plug 'junegunn/fzf.vim'
     Plug 'airblade/vim-rooter'
    " Ranger
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Colorizer - lua
    "Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

" Automatically install missing plugins on startup
  autocmd VimEnter *
    \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif
  
