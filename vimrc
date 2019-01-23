set nocompatible

set rtp +=/usr/local/opt/fzf

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'janko-m/vim-test'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-rails', { 'for': 'ruby' }

call plug#end()

filetype plugin indent on
syntax on
set mouse=a
set hlsearch
set background=light
set number
set showmode
set showmatch
set ruler
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set cursorline
set colorcolumn=120

inoremap jj <esc>
imap <C-space> <esc><right>i<right>
imap <S-space> <esc>i

" FZF bindings
nmap <C-p> :FZF<cr>

" vim-test bindings
let test#strategy = "neovim"
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
