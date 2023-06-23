syntax enable

filetype indent plugin on
set number
set autochdir
set smartindent
set autoindent
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

"searching
set incsearch nohlsearch

"nowrap
set nowrap

"folding
set foldmethod=indent
set foldlevel=99

" column and cursorline
set colorcolumn=80
set cursorline

"theme: zenburn, solarized, molokai, PaperColor
set t_Co=256
colorscheme zenburn

if g:colors_name == "solarized"
    set t_Co=16
    set background=dark
    let g:solarized_termcolors=16
endif

hi OverLength ctermfg=111
match OverLength /\%81v.\+/

"change split
"let g:BASH_Ctrl_j = 'off'
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Add extra space to the active window
"autocmd WinEnter * :wincmd = | 15wincmd >
"autocmd WinLeave * :15wincmd <

inoremap jj <Esc>

" avoid the swapfiles
set nobackup
set noswapfile

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" Vundle plugins
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-obsession'
Bundle 'ap/vim-css-color'
Bundle 'kien/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'
"Bundle 'scrooloose/nerdtree'
Bundle 'mattn/emmet-vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'tpope/vim-surround'

" Old powerline
set laststatus=2
set encoding=utf-8

" vim airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇  '
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" In order to justify text
" set textwidth=80

" md as markdown instead of modula2
au BufRead,BufNewFile *.md set filetype=markdown

" open a new vertical split window in the right side
set splitright

" Bye key directions in normal, insert and visual mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" Avoid files not editables
set wildignore+=*.pdf
set wildignore+=*.ppt
set wildignore+=*.jar
set wildignore+=*.pyc
" LaTeX files
set wildignore+=*.aux
set wildignore+=*.bbl
set wildignore+=*.blg
set wildignore+=*.brf
set wildignore+=*.cls
set wildignore+=*.bbl
set wildignore+=*.toc
set wildignore+=*.lof
set wildignore+=*.lot
set wildignore+=*.log
set wildignore+=.git

" reset wild
set wildmenu
set wildmode=longest:full,full

" Avoid typo errors
cmap W w
cmap Q q

" Yank as C and D
nnoremap Y y$

" Word. Word instead of Word.  Word
set nojoinspaces

" set paste mode
nmap <silent> <F3> :set paste<CR>"*p:set nopaste<CR>
" inoremap <C-S-V> <ESC>"+p`]a
inoremap <F3> <ESC>"+p`]a

" better yank to clipboard
if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

" work with tmux
set term=screen-256color

" replace
noremap <F4> <Esc>:%s/\s\+$//g<CR>:w<CR>nohlsearch<CR>

" ctags
" set tags=~/schiffsdiebe/.ctags
" autocmd Filetype tex source ~/.vim/auctex.vim

" write all buffers before navigating from vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
