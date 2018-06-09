"--------------------------------------------------
" Customer Settings Begin
"--------------------------------------------------
set nocompatible
filetype off

" Plugin Management
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-rails'
Plugin 'vim-airline/vim-airline'

" Color schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'dracula/vim'

call vundle#end()
filetype plugin indent on
"--------------------------------------------------
set nobackup
set nowritebackup
set noswapfile
set history=500
set laststatus=2
set autowrite

set go=     " set no tool bar and menu bar
if has('gui_running')
  set guifont=Courier\ New:h15
  " set guifont=Source\ Code\ Pro:h15
  " set guifont=Consolas:h15
endif
" set menu to english
let $LANG='en_US'
set langmenu=en_US
set fileencodings=utf-8,ucs-bom,utf-16,gbk,gb2312,gb18030,big5,latin1

set nu
set ruler
set lines=40 columns=140
set tabstop=2 shiftwidth=2 shiftwidth=2
set expandtab   " replace tab with space
set shiftround
set showcmd
set nowrap
" set for backspace
set backspace=2
set backspace=indent,eol,start
set hlsearch
set incsearch
set cursorline  " Highlight the current line

" Display extra whitespace
set list listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<

 syntax enable
" set background=light
set background=dark
colorscheme solarized
" syntax on
" color dracula

" --------------------------------------------------
:let mapleader = ","
:nnoremap <leader>ev :vsp $MYVIMRC<cr>
:nnoremap <leader>sv :so $MYVIMRC<cr>
:nnoremap <leader>w <c-w>w

:inoremap jk <esc>
:inoremap <esc> <nop>

" Delete one line
:nnoremap - dd
:inoremap <c-d> <esc>ddi

" Uppercase the word
:inoremap <c-u> <esc>viw~
:nnoremap <c-u> viw~

:nnoremap <F3> :NERDTree<CR>
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

" Other settings
autocmd BufNewFile,BufFilePre,BufRead *.md,*.mdown,*.mkd,*.mkdn,*.markdown set filetype=markdown


"--------------------------------------------------
" Customer Settings End
"--------------------------------------------------

