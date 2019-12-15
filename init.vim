" step 1: clone pulgin manager
"   `git clone https://github.com/junegunn/vim-plug.git %userprofile%/.config/nvim/bundle`
" step 2: put `init.vim` file in this location
"   %userprofile%\AppData\Local\nvim\init.vim      " on windows
"   ~/.config/nvim/init.vim      " on linux
" step 3: in vim call `:PlugInstall`


" call plug#begin('~/.config/nvim/bundle') " user home varaible on Linux: `~`
call plug#begin('%userprofile%/.config/nvim/bundle') " user home varaible on Windows: `%userprofile%`
Plug 'iCyMind/NeoSolarized'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'mileszs/ack.vim'
" Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" call PlugInstall to install new plugins
call plug#end()

"--------------------------------------------------
filetype plugin indent on
set nu
set ruler
" set lines=30 columns=120 " only for GVIM on windows
set tabstop=2 shiftwidth=2
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

set nobackup
set nowritebackup
set noswapfile
set history=500
set laststatus=2
set autowrite

" set menu to english
let $LANG='en_US'
set langmenu=en_US
set fileencodings=utf-8,ucs-bom,utf-16,gbk,gb2312,gb18030,big5,latin1

" Display extra whitespace
" set list listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
set list listchars=tab:>-,trail:.,extends:>,precedes:<

syntax enable
set termguicolors
set background=dark
colorscheme NeoSolarized

let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "normal"
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0

" --------------------------------------------------
let mapleader = ","
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>w <c-w>w

inoremap jk <esc>
" inoremap <esc> <nop>

" Delete one line
nnoremap - dd
inoremap <c-d> <esc>ddi

" Uppercase the word
inoremap <c-u> <esc>viw~
nnoremap <c-u> viw~

nnoremap <F3> :NERDTree<CR>
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>

" Other settings
autocmd BufNewFile,BufFilePre,BufRead *.md,*.mdown,*.mkd,*.mkdn,*.markdown set filetype=markdown

autocmd FileType html setlocal ts=2 sw=2 expandtab
autocmd FileType ruby setlocal ts=2 sw=2 expandtab

autocmd FileType javascript setlocal ts=4 sw=4 sts=4 expandtab
autocmd FileType java setlocal ts=4 sw=4 sts=4 expandtab


"--------------------------------------------------
" Customer Settings End
"--------------------------------------------------

