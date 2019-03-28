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
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby'] }
Plug 'michaeljsmith/vim-indent-object'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
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
set background=light
set colorcolumn=120
set shiftwidth=2
set softtabstop=2
set tabstop=2
set spelllang=en_ca
set showtabline=2
set mouse=a
set foldmethod=syntax
set foldlevelstart=99
set statusline+=%<%f\ %h%m%r\ 
set statusline+=%{FugitiveStatusline()}
set statusline+=%=%-14.(%l,%c%V%)\ %P\ 

" Plugin Settings
let test#strategy = "neovim"
let g:ackprg = 'ag --vimgrep'
" Mappings
map fd <esc>
imap fd <esc>
" quit
nmap <leader>q :q<cr>
" write
nmap <leader>w :w<cr>
" tab management
nmap <leader>tt :tabnew<cr>
nmap <leader>td :tabclose<cr>
nmap <leader>ts :split<cr>
nmap <leader>tv :vsplit<cr>
nmap <leader>tb <C-w>=
" run external commands
nmap <silent> <leader>rn :TestNearest<cr>
nmap <silent> <leader>rf :TestFile<cr>
nmap <silent> <leader>rs :TestSuite<cr>
nmap <silent> <leader>rl :TestLast<cr>
nmap <silent> <leader>rv :TestVisit<cr>
nmap <leader>rt <C-w>s<C-w>j:terminal<cr>a
nmap <leader>rm :make<cr>
" file manipulation
nmap <leader>ff :FZF<cr>
nmap <leader>fs :Ack!<Space>
nmap <leader>fl :ls<cr>
nmap <leader>fn :bn<cr>
nmap <leader>fp :bp<cr>
nmap <leader>fd :bd<Space>
nmap <leader>fe :e<Space>
nmap <leader>fr :e<cr>
nmap <leader>fb :Lexplore
" git
nmap <leader>gd :Gdiff<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gp :Gpush<cr>
nmap <leader>gg :Git<Space>
" linter
nmap <silent> <leader>lp <Plug>(ale_previous_wrap)
nmap <silent> <leader>ln <Plug>(ale_next_wrap)
nmap <leader>li :ALEHover<cr>
nmap <leader>lg :ALEGoToDefinition<cr>
nmap <leader>ld :ALEDetail<cr>
" debugger
nmap <leader>dp obinding.pry<esc>
nmap <leader>dd odebugger;<esc>
nmap <leader>dP Obinding.pry<esc>
nmap <leader>dD Odebugger;<esc>

" Load machine local settings
if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
