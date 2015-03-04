set path=.,,**
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set autoread
au BufWinEnter * checktime
au CursorHold * checktime
syntax on
au BufWinEnter * highlight ColumnMarker ctermbg=red guibg=#592929
au BufWinEnter * call matchadd('ColumnMarker', '\%101v', 100)
