" Basic Setup
set nocompatible
syntax on
set termguicolors
set number
set relativenumber
colorscheme carbonized-dark
set background=dark
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set incsearch
set cursorline
filetype plugin indent on

" Fuzzy Finding
set path+=**
set wildmenu

" Tags
command! MakeTags !ctags -R

" Powerline
set laststatus=2
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Ale settings
packloadall
silent! helptags ALL
