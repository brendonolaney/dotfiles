set number
set showmode
set showmatch
set ruler
set shiftwidth=2
set tabstop=2
set verbose
set leftright
set wraplen=72

map gt :%s/	/  /g
map gs :%s/ *$//g
map gf :?^$?,//!fmt -pw 72

