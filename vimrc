syntax enable

filetype indent plugin on
set number
set autochdir
set smartindent
set autoindent
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

"searching
set incsearch nohlsearch

"nowrap
set nowrap

"folding
set foldmethod=indent
set foldlevel=99

"theme molokai, zenburn
set t_Co=256
"colorscheme molokai
colorscheme zenburn

"theme solarized
"set t_Co=16
"set background=light
"let g:solarized_termcolors=16
"colorscheme solarized

"change split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Add extra space to the active window
"autocmd WinEnter * :wincmd = | 15wincmd >
"autocmd WinLeave * :15wincmd <

imap jj <Esc>

" avoid the swapfiles
set nobackup
set noswapfile

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle plugins
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'ap/vim-css-color'
Bundle 'kien/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'mattn/emmet-vim'

" Old powerline
set laststatus=2
set encoding=utf-8
let g:airline_enable_branch     = 1

" vim-powerline symbols
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'

" ColorColumn
set colorcolumn=80
"hi ColorColumn ctermbg=235 "molokai
"hi ColorColumn ctermbg=187 " solarized light
hi OverLength ctermfg=111
match OverLength /\%81v.\+/

" In order to justify text
" set textwidth=80

" md as markdown instead of modula2
au BufRead,BufNewFile *.md set filetype=markdown

" open a new vertical split window in the right side
set splitright

" horizontal line
set cursorline
"hi CursorLine ctermbg=235 "molokai
"hi CursorLine ctermbg=187 "solarized light

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

"Simple re-format for minified Javascript
command! UnMinify call UnMinify()
function! UnMinify()
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction

" set paste mode
set pastetoggle=<F3>

" work with tmux
set term=screen-256color

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
