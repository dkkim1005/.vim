set nocompatible
set nu
set rnu
set hlsearch
set incsearch
set ruler
syntax enable
set wildmenu
set clipboard=unnamed
set cursorline
set laststatus=2

set tabstop=2
set softtabstop=2
set expandtab
set autoindent

nnoremap j gj
nnoremap k gk

let mapleader=','
nnoremap <leader>f :115vs<CR><C-w>l:e./<CR>
nnoremap <leader>v ggvG$
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
map <C-c> <ESC>

colorscheme codedark
au BufNewFile,BufRead *.cuh set filetype=cuda