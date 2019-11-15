set nocompatible

filetype plugin indent on
syntax on

" Load plugins
if filereadable(glob("~/.config/nvim/plugins.vim"))
  so ~/.config/nvim/plugins.vim
endif

" Statusline
if filereadable(glob("~/.config/nvim/statusline.vim"))
  so ~/.config/nvim/statusline.vim
endif

" Mappings
if filereadable(glob("~/.config/nvim/maps.vim"))
  so ~/.config/nvim/maps.vim
endif

" Preferences
if filereadable(glob("~/.config/nvim/prefs.vim"))
  so ~/.config/nvim/prefs.vim
endif

" Load machine local settings
if filereadable(glob("~/.config/nvim/init.local.vim"))
  so ~/.config/nvim/init.local.vim
endif
