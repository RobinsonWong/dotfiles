source $VIMRUNTIME/mswin.vim
behave mswin

"--------------------------------------------------
" Customer Settings Begin
"--------------------------------------------------
filetype off

" Plugin Management
" for vim: download `plug.vim` into `$VIM_HOME/vim90/autoload/`
" for neovim: download `plug.vim` into `~/AppData/Local/nvim-data/site/autoload/`,  copy `cp .vimrc ~/AppData/Local/nvim/init.vim`
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'mileszs/ack.vim'
"Plug 'tpope/vim-rails'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'

Plug 'dhruvasagar/vim-table-mode'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'

" Color schemes
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'

call plug#end()
filetype plugin indent on
"--------------------------------------------------
:exec 'cd ' . fnameescape('D:/repos-mine-doc/')
set nobackup
set noundofile
set nowritebackup
set noswapfile
set history=500
set laststatus=2
set autowrite
set wildmode=longest,list
set wildmenu
set wildmode=full
set path+=D:/repos-mine-doc/**

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

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

:noremap <c-right> <c-w><
:noremap <c-left> <c-w>>
:noremap <c-up> <c-w>-
:noremap <c-down> <c-w>+

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
:nnoremap <F5> "=strftime("%Y-%m-%d %H:%M:%S %A")<CR>P
:inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M:%S %A")<CR>

map te :tabnew<cr>
map tp :-tabnext<cr>
map tn :+tabnext<cr>
map bp :bp<cr>
map bn :bn<cr>

map <leader>f :call fzf#run({'options': '--preview "bat --color=always -n {}" --preview-window "right:120"'})<cr>



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

