" Set up Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All plugins go here
Plugin 'VundleVim/Vundle.vim'
Plugin 'Konfekt/FastFold'
Plugin 'tmhedberg/SimpylFold'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

" Basic Setup
syntax on
set termguicolors
set number
set relativenumber
colorscheme molokai
set background=dark
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set incsearch
set cursorline

" Code folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

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

" ALE settings
packloadall
silent! helptags ALL

