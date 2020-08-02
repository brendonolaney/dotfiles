set nocompatible

filetype plugin indent on
syntax on

call plug#begin('~/.local/share/nvim/plugged')

" Editor enhancements
Plug 'michaeljsmith/vim-indent-object'  " Add indent motions
Plug 'tpope/vim-commentary'  " Command to comment lines
Plug 'tpope/vim-sleuth'  " Autodetect buffer options
Plug 'tpope/vim-surround'  " Add surround motions

" External interfaces
Plug 'airblade/vim-gitgutter'  " Show Git changes
Plug 'editorconfig/editorconfig'  " Load editor settings from a config file

call plug#end()

" Options
set cursorline  " Underline the current line
set expandtab  " Use spaces instead of tabs
set hlsearch  " Highlight search terms
set number  " Show line numbers
set ruler  " Displays cursor position in the status line
set showmatch  " Hightlights the bracket matching the one inserted
set showmode  " Display current mode at the bottom

" Preferences
set background=light  " Use dark text colors
set colorcolumn=80,120  " Show me where I should stop typing
set shiftwidth=2  " How far to indent when opening lines
set softtabstop=2  " How many spaces to insert when pressing tab 
set tabstop=2  " How many spaces to use when rendering a tab

