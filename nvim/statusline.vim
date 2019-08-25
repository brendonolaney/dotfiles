" File Name
set statusline=%<%f\ 
" Git status
set statusline+=%{FugitiveStatusline()}
" File status
set statusline+=%h%m%r\ 
" White space
set statusline+=%=
" Tag generation status
" set statusline+=%{gutentags#statusline()}\ 
" Line and file position
set statusline+=%-14.(%l,%c%V%)\ %P\ 
