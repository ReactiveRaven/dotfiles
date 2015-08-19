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
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'aaronjensen/vim-sass-status'

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
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v(karma-coverage)$'
  \}
let g:ctrlp_max_files=0
set foldmethod=syntax
set foldlevelstart=3
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

let g:syntastic_javascript_checkers = ['jshint']
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>
