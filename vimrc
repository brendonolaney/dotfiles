set nocompatible
let mapleader = ' '

" Vim doesn't play well with fish
if &shell =~# 'fish$'
    set shell=bash
endif

" Let vim know where FZF is
set rtp +=/usr/local/opt/fzf

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'editorconfig/editorconfig'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
" Plug 'ludovicchabant/vim-gutentags'
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby'] }
Plug 'michaeljsmith/vim-indent-object'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'w0rp/ale'

call plug#end()

filetype plugin indent on
syntax on

" Options
set cursorline
set expandtab
set hlsearch
set number
set ruler
set showmatch
set showmode
set notimeout
set ttimeout

" Preferences
set background=dark
set colorcolumn=120
set shiftwidth=2
set softtabstop=2
set tabstop=2
set spelllang=en_ca
set showtabline=2
set mouse=a
set foldmethod=syntax
set foldlevelstart=99

" Status Line
"""""""""""""

" File Name
set statusline=%<%f\ 
" Git status
set statusline+=%{FugitiveStatusline()}
" File status
set statusline+=%h%m%r\ 
" White space
set statusline+=%=
" Tag generation status
" set statusline+=%{gutentags#statusline()}\ 
" Line and file position
set statusline+=%-14.(%l,%c%V%)\ %P\ 

" Plugin Settings
let test#strategy = "neovim"
let g:ackprg = 'ag --vimgrep'

" Shortcuts
nmap <leader>f :FZF<cr>
nmap <leader>s :Ack!<Space>
nmap <leader>d obinding.pry<esc>

" Load machine local settings
if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
