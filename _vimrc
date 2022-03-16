set nocompatible
" source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

"--------------------------------------------------
" Customer Settings Begin
"--------------------------------------------------
filetype off

" Plugin Management
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
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
Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'

" Color schemes
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on
"--------------------------------------------------
:exec 'cd ' . fnameescape('D:\repos-mine-doc\')
set nobackup
set nowritebackup
set noswapfile
set history=500
set laststatus=2
set autowrite

set go=     " set no tool bar and menu bar
if has('gui_running')
  " set guifont=Courier\ New:h16
  " set guifont=Source\ Code\ Pro:h16
  set guifont=Consolas:h13
endif
" set menu to english
let $LANG='en_US'
set langmenu=en_US
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,utf-16,gbk,gb2312,gb18030,big5,latin1

set nu
set ruler
set lines=35 columns=120
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab   " replace tab with space
set shiftround
set showcmd
set wrap
" set for backspace
set backspace=2
set backspace=indent,eol,start
set hlsearch
set incsearch
set cursorline  " Highlight the current line

" Display extra whitespace
" set list listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
"set list listchars=trail:.,extends:>,precedes:<
set list listchars=tab:>-,trail:.,extends:>,precedes:<

syntax enable
" set background=light
set t_Co=16
let g:solarized_termcolors=16
set background=dark
colorscheme solarized
" color dracula " set color theme to dracula

" --------------------------------------------------
:let mapleader = ","
:nnoremap <leader>ev :vsp $MYVIMRC<cr>
:nnoremap <leader>sv :so $MYVIMRC<cr>
:nnoremap <leader>w <c-w>w

:noremap <C-I> <C-A>
" remap increase /decrease by +/-
" :nnoremap <kPlus> <C-a>
" :nnoremap <kMinus> <C-x>

:inoremap jk <esc>
" :inoremap <esc> <nop>

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

" set indentation=2
autocmd FileType html setlocal ts=2 sw=2 sts=2 expandtab
autocmd FileType ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd FileType scala setlocal ts=2 sw=2 sts=2 expandtab

" set indentation=4
autocmd FileType python setlocal ts=4 sw=4 sts=4 expandtab
autocmd FileType java setlocal ts=4 sw=4 sts=4 expandtab
autocmd FileType go setlocal ts=4 sw=4 sts=4 expandtab
autocmd FileType rust setlocal ts=4 sw=4 sts=4 expandtab
autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType javascript setlocal ts=4 sw=4 sts=4 expandtab


" For startify
" [Genereate ASCII Art](http://patorjk.com/software/taag/#p=display&h=0&f=Big&t=Hi%2C%20Robin!)
let g:startify_custom_header = [
\ '  _    _   _         _____            _       _           _ ',
\ ' | |  | | (_)       |  __ \          | |     (_)         | |',
\ ' | |__| |  _        | |__) |   ___   | |__    _   _ __   | |',
\ ' |  __  | | |       |  _  /   / _ \  | |_ \  | | | |_ \  | |',
\ ' | |  | | | |  _    | | \ \  | (_) | | |_) | | | | | | | |_|',
\ ' |_|  |_| |_| ( )   |_|  \_\  \___/  |_.__/  |_| |_| |_| (_)',
\ '              |/                                            ',
\ '',
\]

"--------------------------------------------------
" Customer Settings End
"--------------------------------------------------

