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
set smartindent
set shiftwidth=2
set backspace=indent,eol,start
set mouse-=a


nnoremap j gj
nnoremap k gk
let mapleader=','
nnoremap <leader>f :vs<CR><C-w>l:e./<CR>
nnoremap <leader>v ggvG$
nnoremap <leader>e :vs<CR><C-w>l:e~/.config/nvim/init.vim<CR>
nnoremap <leader>s :so~/.config/nvim/init.vim<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-c> <ESC>
nnoremap <C-n> :NERDTreeToggle<CR>


call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline', {'branch': 'master'}
Plug 'vim-airline/vim-airline-themes'
Plug 'gelguy/wilder.nvim', {'branch': 'master'}
Plug 'airblade/vim-gitgutter', {'branch': 'main'}
Plug 'sainnhe/everforest', {'branch': 'master'}
call plug#end()
colorscheme everforest


" [vim-airline]
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_statusline_ontop=1
let g:airline_theme='molokai'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" [wilder.nvim]
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
      \ 'enable_cmdline_enter': 0,
      \ })
" 'border'            : 'single', 'double', 'rounded' or 'solid'
"                     : can also be a list of 8 characters,
"                     : see :h wilder#popupmenu_border_theme() for more details
" 'highlights.border' : highlight to use for the border`
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'highlights': {
      \   'border': 'normal',
      \ },
      \ 'border': 'rounded',
      \ })))


au BufNewFile,BufRead *.cuh set filetype=cuda


" cursorline, refer to https://frhyme.github.io/vim/vim08_cursorline
let &t_SI = "\<ESC>[5 q"
let &t_EI = "\<ESC>[2 q"
