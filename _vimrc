set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
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
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


exec 'cd ' . fnameescape('E:\code-repos-host\text-notes')
"--------------------------------------------------
" Customer Settings by Robinson Wong : Begin
"--------------------------------------------------
set nobackup
set nowritebackup
set noswapfile
set history=500
set laststatus=2
set autowrite

set go=     " set no tool bar and menu bar
color dracula
if has('gui_running')
  set guifont=Courier\ New:h13
endif
" set menu to english
let $LANG='en_US'
set langmenu=en_US
set fileencodings=utf-8,ucs-bom,utf-16,gbk,gb2312,gb18030,big5,latin1

set nu
set ruler
set lines=35 columns=120
set tabstop=4 shiftwidth=4 shiftwidth=4
set expandtab   " replace tab with space
set shiftround
set showcmd
" set hlsearch
set incsearch
set cursorline  " Highlight the current line

" Display extra whitespace
set list listchars=tab:>-,trail:.,extends:>,precedes:<

" Auto Complete Char
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

"--------------------------------------------------
" Plugin Management

set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin()

" Install Plugins below
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on
filetype on
"--------------------------------------------------
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>





"--------------------------------------------------
" Customer Settings by Robinson Wong : End
"--------------------------------------------------

