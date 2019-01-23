set nocompatible

" Vim doesn't play well with fish
if &shell =~# 'fish$'
    set shell=bash
endif

" Let vim know where FZF is
set rtp +=/usr/local/opt/fzf

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'easymotion/vim-easymotion'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
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

" Preferences
set background=light
set colorcolumn=120
set mouse=a
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Mappings
inoremap jj <esc>
imap <C-space> <esc><right>i<right>
imap <S-space> <esc>i

" FZF Mappings
nmap <C-p> :FZF<cr>

" vim-test Settings/Mappings
let test#strategy = "neovim"
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Load machine local settings
if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
