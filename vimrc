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
Plug 'janko-m/vim-test'
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
" """"""""""
map fd <esc>
imap fd <esc>
map <leader>q :q<cr>
map <leader>Q :q!<cr>
map <leader>w :w<cr>
map <leader>W :wq<cr>
map <leader>e :e<Space>
map <leader>E :e!<Space>
map <leader>tt <C-w>s<C-w>j:terminal<cr>

" NERDTree
nmap <leader>n :NERDTreeToggle<cr>

" Commentary
nmap <leader>cc gcc
nmap <leader>c gc
vmap <leader>c gc

" Fugitive
nmap <leader>gd :Gdiff<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gp :Gpush<cr> 
nmap <leader>gg :Git<Space>

" Gitgutter
nmap <leader>gn ]c
nmap <leader>gN [c

" FZF Mappings
nmap <leader>ff :FZF<cr>

" vim-test Settings/Mappings
let test#strategy = "neovim"
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" Use ag
nmap <leader>fs :Ack!<Space>
let g:ackprg = 'ag --vimgrep'

" Load machine local settings
if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
