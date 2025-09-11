" Based on https://vim.fandom.com/wiki/Example_vimrc
" --- General behavior
set nocompatible

if has('filteype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

" Remove the back up file
set nobackup
set nowb
set noswapfile

" Faster redrawing 
set ttyfast

" Update automatically if file is changed externally
set autoread

" UTF-8
set encoding=utf8

" Unix filetypes
set ffs=unix,dos,mac

" System clipboard
set clipboard^=unnamed,unnamedplus


" --- Command options
" Command completion
set wildmenu

" Partial commands on last line
set showcmd

" Bigger command window
set cmdheight=2

" --- Usability
" Highlight search--turn off with <C-L>
set hlsearch

" Case insensitive search, unless using capital letters
set ignorecase
set smartcase

" Incremental searching
set incsearch

" Backspace over autoindent, line breaks, start of insert
set backspace=indent,eol,start
" Start next line with the same indentation
set autoindent
" Show cursor position in status line
set ruler
" always show status line
set laststatus=2
" Ask to save when closing w/o saving instead of error
set confirm

" Line numbers
set number
set relativenumber

" Tabs
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" Show mode in status line
set showmode

" Fold column with markers
set foldcolumn=2
set foldmethod=marker

" Display linewraps with '> '
set showbreak=>\

" Highlight cursor line
set cursorline

" Highlight brackets
set showmatch

" --- Mappings
" Turn off highlight until next search
nnoremap <C-L> :nohl<CR><C-L>
