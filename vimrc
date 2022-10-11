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
Plug 'vim-airline/vim-airline', {'branch': 'master'}
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/taglist.vim', {'branch': 'master'}
Plug 'gelguy/wilder.nvim', {'branch': 'master'}
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

" [vim-airline]
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_statusline_ontop=1
let g:airline_theme='angr'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" [wilder.nvim]
" Key bindings can be changed, see below
call wilder#setup({'modes': [':', '/', '?']})

" Default keys
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
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
