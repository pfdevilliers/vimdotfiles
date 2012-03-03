"filetype and call lines are for loading Pathogen
filetype off
filetype plugin indent on
"REQUIRED. This makes vim invoke Latex-Suite when a tex file is opened
filetype plugin on
"Automatic indentation as you type for Latex-Suite in vim
filetype indent on
"Make sure that any file with a .tex extension is opened with vim-latex loaded
let g:tex_flavor='latex'

let mapleader = ","
syntax on
"Removes compatibility with vi
set nocompatible
set t_Co=256
colorscheme molokai
"Prevents some security exploits that has to do
"with modelines in files
set modelines=0

"Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set pastetoggle=<F2>
"set relativenumber
set nu
set mouse=a

"Changing the searching and moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"Change how vim handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"For TextMate refugees, showing hidden characters
"NOT IMPLEMENTED

"Settings to teach to do things right
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

"Save when losing focus
au FocusLost * :wa
"re-hardwrap paragraphs of text
nnoremap <leader>q gqip
"reselect text that was just pasted
nnoremap <leader>v V`]
inoremap jj <ESC>
"open a new vertical split file and switch to it
nnoremap <leader>w <C-w>v<C-w>l

au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.less set filetype=less

"make vim recognize that erb files should also be highlighted with html.vim
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html


"configurations for gvim.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=b
set guioptions-=B

"specific tab navigation for macvim

call pathogen#infect()
