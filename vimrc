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

filetype plugin indent on
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set shiftwidth=2
set backspace=indent,eol,start
set mouse+=a "copy the text without line numbers"

nnoremap j gj
nnoremap k gk

let mapleader=','
nnoremap <leader>f :vs<CR><C-w>l:e./<CR>
nnoremap <leader>v ggvG$
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-c> <ESC>

colorscheme codedark
au BufNewFile,BufRead *.cuh set filetype=cuda

" runtime path (rtp) of packed plugin
set rtp+=~/.vim/pack/tpope/start/vim-fugitive
set rtp+=~/.vim/pack/airblade/start/vim-gitgutter
set rtp+=~/.vim/pack/YouCompleteMe

" setting for 'YouCompleteMe' plugin
let g:ycm_global_ycm_extra_conf='~/.vim/pack/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>
" ----------------------------------
