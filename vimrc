syntax on
set number
set relativenumber
colorscheme molokai
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set incsearch
set cursorline
filetype plugin indent on

" Powerline
set laststatus=2
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Ale settings
packloadall
silent! helptags ALL
