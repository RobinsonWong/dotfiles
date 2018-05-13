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

"--------------------------------------------------
" Customer Settings by Robinson Wong : Begin
"--------------------------------------------------
filetype off

" Plugin Management
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
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

" Color schemes
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on
"--------------------------------------------------
:exec 'cd ' . fnameescape('E:\code-repos-host')
set nobackup
set nowritebackup
set noswapfile
set history=500
set laststatus=2
set autowrite

set go=     " set no tool bar and menu bar
if has('gui_running')
  " set guifont=Courier\ New:h13
  " set guifont=Source\ Code\ Pro:h14
  set guifont=Consolas:h14
endif
" set menu to english
let $LANG='en_US'
set langmenu=en_US
set fileencodings=utf-8,ucs-bom,utf-16,gbk,gb2312,gb18030,big5,latin1

set nu
set ruler
set lines=35 columns=120
set tabstop=2 shiftwidth=2 shiftwidth=2
set expandtab   " replace tab with space
set shiftround
set showcmd
" set for backspace
set backspace=2
set backspace=indent,eol,start
" set hlsearch
set incsearch
set cursorline  " Highlight the current line

" Display extra whitespace
set list listchars=tab:>-,trail:.,extends:>,precedes:<

syntax enable
set background=dark
colorscheme solarized
" color dracula " set color theme to dracula

" --------------------------------------------------
nnoremap <F3> :NERDTree<CR>
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

" Other settings
autocmd BufNewFile,BufFilePre,BufRead *.md,*.mdown,*.mkd,*.mkdn,*.markdown set filetype=markdown


"--------------------------------------------------
" Customer Settings by Robinson Wong : End
"--------------------------------------------------

