set nocompatible
set nu
set nornu
set hlsearch
set incsearch
set ruler
syntax enable
set wildmenu
set clipboard=unnamed
set cursorline
set laststatus=2

set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set backspace=indent,eol,start
set mouse-=a

nnoremap j gj
nnoremap k gk

let mapleader=','
nnoremap <leader>f :vs<CR><C-w>l:e./<CR>
nnoremap <leader>v ggvG$
nnoremap <leader>e :vs<CR><C-w>l:e~/.vim/vimrc<CR>
nnoremap <leader>s :so~/.vim/vimrc<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-c> <ESC>
nnoremap <C-n> :NERDTreeToggle<CR>

colorscheme codedark
au BufNewFile,BufRead *.cuh set filetype=cuda

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- Settings for 'vim-plug' plugin manager and extensions ----- "
" Main Commands:
"  [vim-plug]
"    - PlugInstall: install plugin   
"    - PlugClean: remove plugin (remove plugin files at plugged/<to-path>)
"  [coc.nvim]
"    - CocConfig: open a coc-local-configuration file
"    - CocInstall <name-of-coc-extension>: install a coc-extension file
"  [vimtex]
"    - <localleader>ll: run auto-compile mode

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- extension settings -----
" [coc.nvim]
" Ref: https://superuser.com/questions/1734914/neovim-coc-nvim-enter-key-doesnt-work-to-autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" Ref: https://stackoverflow.com/questions/69720683/how-to-scroll-the-hover-area-in-vim-when-showing-documentation-with-coc-nvim
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" [vimtex]
" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","
