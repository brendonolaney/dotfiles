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

" Plugin Settings
let test#strategy = "neovim"
let g:ackprg = 'ag --vimgrep'


" Mappings
"
" My personal spacemacs-esque bindings
" q - quit
" w - write
" e - edit
" b - buffers, tabs, terminal
" t - terminal and testing
" f - file location
" c - comments
" g - git
"
map fd <esc>
imap fd <esc>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>w :w<cr>
nmap <leader>W :wq<cr>
nmap <leader>e :e<Space>
nmap <leader>E :e!<Space>
nmap <leader>bl :ls<cr>
nmap <leader>bN :bn<cr>
nmap <leader>bP :bp<cr>
nmap <leader>bT <C-w>s<C-w>j:terminal<cr>a
nmap <leader>bD :bd
nmap <leader>bt :tabnew<cr>
nmap <leader>bn gt
nmap <leader>bp gT
nmap <leader>bd :tabclose<cr>
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
nmap <leader>fn :NERDTreeToggle<cr>
nmap <leader>ff :FZF<cr>
nmap <leader>fs :Ack!<Space>
nmap <leader>cc gcc
nmap <leader>c gc
vmap <leader>c gc
nmap <leader>gd :Gdiff<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gp :Gpush<cr> 
nmap <leader>gg :Git<Space>
nmap <leader>gn ]c
nmap <leader>gN [c

" Load machine local settings
if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
