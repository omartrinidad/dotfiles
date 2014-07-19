syntax enable

filetype indent plugin on
set number
set autochdir
set smartindent
set autoindent
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

"searching
set incsearch hlsearch

"nowrap
set nowrap

"folding
set foldmethod=indent
set foldlevel=99

"theme molokai
"set t_Co=256
"colorscheme molokai

"theme solarized
set t_Co=16
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

"change split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Add extra space to the active window
autocmd WinEnter * :wincmd = | 15wincmd >
autocmd WinLeave * :15wincmd <

imap jj <Esc>

" avoid the swapfiles
set nobackup
set noswapfile

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle plugins
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'ap/vim-css-color'

" Old powerline
set laststatus=2
set encoding=utf-8
" instead of let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'

" ColorColumn
set colorcolumn=80
"hi ColorColumn ctermbg=235 "molokai
"187 with light solarized
hi OverLength ctermfg=111
match  OverLength /\%81v.\+/

" In order to justify text
" set textwidth=80

" md as markdown instead of modula2
au BufRead,BufNewFile *.md set filetype=markdown

" open a new vertical split window in the right side
set splitright

" horizontal line
set cursorline
" 235 molokai
"hi CursorLine ctermbg=235 "molokai

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

" Size of text
"set fo+=a

" Word. Word instead of Word.  Word
set nojoinspaces

"set pastetoggle
set pastetoggle=<F3>
