set nocompatible
source $VIMRUNTIME/vimrc_example.vim
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

" =====================================
" Robinson Settings
cd C:\Users\Robinson\Documents\VimTextDocs  " Set Default Work Directory
set number
set noswapfile          " No Swap temp files
syntax on
set history=200
filetype on   			" Eable file type detetion
filetype indent on 		" Eable file type specific indenting
set showcmd 			" This shows what your typing as a command.

" searching
set hlsearch    		" Highlight things that we find with the search.
set ignorecase			" search ignoring case
set showmatch			" show matching bracet

set autoindent smartindent	" auto/smart indent
set expandtab			" Use spaces instead of tabs
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set wildmenu			" bash like auto-completion
set wildmode=list:longest	" 

if has("gui_running")
    set lines=25 columns=100
else 
"    colorscheme darkblue	
endif

if has("gui_running")
    set guifont=Courier\ New:h11
endif   
"set guifont=Consolas:h11
"set hidden

" Insert Current Date Time
" nnoremap <F5> "=strftime("%c")<CR>P
" inoremap <F5> <C-R>=strftime("%c")<CR>
" nnoremap <F5> "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>P
nnoremap <F5> "=strftime("%A, %d %B %Y %H:%M:%S")<CR>P
inoremap <F5> <C-R>=strftime("%A, %d %B %Y %H:%M:%S")<CR>
" =====================================


