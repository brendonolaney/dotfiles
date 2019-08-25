set nocompatible
let mapleader = ' '

" Let vim know where FZF is
set rtp +=/usr/local/opt/fzf

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
set background=light
set colorcolumn=80,120
set shiftwidth=2
set softtabstop=2
set tabstop=2
set spelllang=en_ca
set showtabline=2
set mouse=a
set foldmethod=syntax
set foldlevelstart=99

" Shortcuts
nmap <leader>f :FZF<cr>
nmap <leader>s :Ack!<Space>

" Load plugins
if filereadable(glob("~/.config/nvim/plugins.vim"))
  so ~/.config/nvim/plugins.vim
endif
"
" Statusline
if filereadable(glob("~/.config/nvim/statusline.vim"))
  so ~/.config/nvim/statusline.vim
endif

" Load machine local settings
if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
