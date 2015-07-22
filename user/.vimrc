set path=.,,**
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set autoread
set nowrap
set synmaxcol=120
set number
au BufWinEnter * checktime
au CursorHold * checktime
syntax on
au BufWinEnter * highlight ColumnMarker ctermbg=red guibg=#592929
au BufWinEnter * call matchadd('ColumnMarker', '\%101v', 100)
set directory=$HOME/.vim/swapfiles//

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'pangloss/vim-javascript'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nmap <F8> :TagbarToggle<CR>
let g:airline_powerline_fonts = 1
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:ctrlp_working_path_mode = ''
