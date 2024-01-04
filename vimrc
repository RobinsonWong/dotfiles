" vimrc for vim in git bash 
" Setting some decent VIM settings for programming
" This source file comes from git-for-windows build-extra repository (git-extra/vimrc)

ru! defaults.vim                " Use Enhanced Vim defaults
set mouse=                      " Reset the mouse setting from defaults
aug vimStartup | au! | aug END  " Revert last positioned jump, as it is defined below
let g:skip_defaults_vim = 1     " Do not source defaults.vim again (after loading this system vimrc)

set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
set wildmode=list:longest,longest:full   " Better command line completion

" Show EOL type and last modified timestamp, right after the filename
" Set the statusline
set statusline=%f               " filename relative to current $PWD
set statusline+=%h              " help file flag
set statusline+=%m              " modified flag
set statusline+=%r              " readonly flag
set statusline+=\ [%{&ff}]      " Fileformat [unix]/[dos] etc...
set statusline+=\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})  " last modified timestamp
set statusline+=%=              " Rest: right align
set statusline+=%l,%c%V         " Position in buffer: linenumber, column, virtual column
set statusline+=\ %P            " Position in buffer: Percentage

if &term =~ 'xterm-256color'    " mintty identifies itself as xterm-compatible
  if &t_Co == 8
    set t_Co = 256              " Use at least 256 colors
  endif
  " set termguicolors           " Uncomment to allow truecolors on mintty
endif
"------------------------------------------------------------------------------
" Only do this part when compiled with support for autocommands.
"if has("autocmd")
"    " Set UTF-8 as the default encoding for commit messages
"    autocmd BufReadPre COMMIT_EDITMSG,MERGE_MSG,git-rebase-todo setlocal fileencodings=utf-8
"
"    " Remember the positions in files with some git-specific exceptions"
"    autocmd BufReadPost *
"      \ if line("'\"") > 0 && line("'\"") <= line("$")
"      \           && &filetype !~# 'commit\|gitrebase'
"      \           && expand("%") !~ "ADD_EDIT.patch"
"      \           && expand("%") !~ "addp-hunk-edit.diff" |
"      \   exe "normal g`\"" |
"      \ endif
"
"      autocmd BufNewFile,BufRead *.patch set filetype=diff
"
"      autocmd Filetype diff
"      \ highlight WhiteSpaceEOL ctermbg=red |
"      \ match WhiteSpaceEOL /\(^+.*\)\@<=\s\+$/
"endif " has("autocmd")

"--------------------------------------------------
" Customer Settings Begin
"--------------------------------------------------
filetype off

filetype plugin indent on
"--------------------------------------------------
" :exec 'cd ' . fnameescape('D:\repos-mine-doc\')
set nobackup
set noundofile
set nowritebackup
set noswapfile
set history=500
set laststatus=2
set autowrite
set wildmode=longest,list
set wildmenu
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


" --------------------------------------------------
:let mapleader = ","
:nnoremap <leader>ev :vsp $MYVIMRC<cr>
:nnoremap <leader>sv :so $MYVIMRC<cr>
:nnoremap <leader>w <c-w>w

:noremap <C-I> <C-A>
" remap increase /decrease by +/-
" :nnoremap <kPlus> <C-a>
" :nnoremap <kMinus> <C-x>
map Q :q<cr>
map W :wq<cr>

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
"let g:startify_custom_header = [
"\ '  _    _   _         _____            _       _           _ ',
"\ ' | |  | | (_)       |  __ \          | |     (_)         | |',
"\ ' | |__| |  _        | |__) |   ___   | |__    _   _ __   | |',
"\ ' |  __  | | |       |  _  /   / _ \  | |_ \  | | | |_ \  | |',
"\ ' | |  | | | |  _    | | \ \  | (_) | | |_) | | | | | | | |_|',
"\ ' |_|  |_| |_| ( )   |_|  \_\  \___/  |_.__/  |_| |_| |_| (_)',
"\ '              |/                                            ',
"\ '',
"\]

"--------------------------------------------------
" Customer Settings End
"--------------------------------------------------

