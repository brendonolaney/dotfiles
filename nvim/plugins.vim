call plug#begin('~/.local/share/nvim/plugged')

" Editor enhancements
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby'] }
Plug 'michaeljsmith/vim-indent-object'  " Add indent motions
Plug 'tpope/vim-commentary'  " Command to comment lines
Plug 'tpope/vim-endwise'  " Automatically add end in ruby
Plug 'tpope/vim-sleuth'  " Autodetect buffer options
Plug 'tpope/vim-surround'  " Add surround motions
Plug 'tpope/vim-unimpaired'  " Add pair motions

" External interfaces
Plug 'airblade/vim-gitgutter'  " Show Git changes
Plug 'editorconfig/editorconfig'  " Load editor settings from a config file
Plug 'janko-m/vim-test'  " Unit test runner
Plug 'junegunn/fzf.vim'  " Fuzzy file finder
Plug 'mileszs/ack.vim'  " Project level search
Plug 'tpope/vim-fugitive'  " Git integration
Plug 'tpope/vim-rhubarb'  " GitHub integration
Plug 'w0rp/ale'  " Linting
Plug 'tpope/vim-dadbod'  " DB integration

" Language support
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }  " Rails support
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

call plug#end()

let test#strategy = "neovim"  " Tests run in a neovim terminal
let g:ackprg = 'ag --vimgrep'  " Use ag instead of ack
set rtp +=/usr/local/opt/fzf  " Let vim know where FZF is
