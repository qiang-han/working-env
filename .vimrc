set nocompatible
set bs=2
set tabstop=4
set sw=4
set wrapmargin=8
set nobk
" set noswapfile

" syntax on
syntax enable
set ruler
set noexpandtab
filetype on
set tags=./tags;

set autoindent
set si

set modeline

set showcmd		" Show (partial) command in status line.
set showmatch	" Show matching brackets.
set ignorecase
set autowrite
set incsearch
set hlsearch
set ls=2

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set cc=80

"Make the indent style similar to C/C++
set cindent

"Set details of indent in C/C++ way
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

"Show the line number
set nu

"Set scrolloff
set so=2

"Highlight current line.
" set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"nnoremap <Leader>c :set cursoline!<CR>

"Pick a nice color scheme
"colorscheme codeschool
colorscheme vividchalk

"if has('gui_running')
"	set background=light
"else
"	set background=dark
"endif
if has("gui_running")
"	set background=light
	"set guifont=Droid\ Sans\ Mono\ 10
	" set guifont=Linux\ Libertine\ Mono\ 10
	set guifont=Monospace\ 10
endif

set background=light
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  autocmd FileType python set complete+=k~/.vim/tools/pydiction

  " Highlight Whitespace at End-of-Line
  autocmd Filetype python match Error /\s\+$/
endif

" Enable pathogen
" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

