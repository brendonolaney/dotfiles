set nocompatible
filetype off

set rtp +=~/.config/nvim/bundle/Vundle.vim
set rtp +=/usr/local/opt/fzf

call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

" Sensible
Plugin 'tpope/vim-sensible'

" Filetypes
Plugin 'dag/vim-fish'
Plugin 'leafgarland/typescript-vim'

" General Stuff
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'janko-m/vim-test'
Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'

" CLIO specific
Plugin 'tpope/vim-rails'

call vundle#end()

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

inoremap jj <Esc>
imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i
map <C-e> <esc>$<right>
map <C-a> <esc>0
imap <C-space> <esc><right>a
imap <S-space> <esc>i

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" FZF bindings
nmap <C-p> :FZF<cr>

" vim-test bindings
let test#strategy = "neovim"
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" CLIO SPECIFIC STUFF
" vim-test use yarn to run apollo test suite
let g:test#javascript#karma#executable = 'yarn test:apollo:once'

" ALE Settings
let g:ale_ruby_rubocop_options = "--config ~/clio/themis/.rubocop.yml"
let g:ale_typescript_tslint_options = "--config ~/clio/themis/tlsint.json"

