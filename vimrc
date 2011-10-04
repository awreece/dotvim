call pathogen#infect()

filetype indent on
filetype plugin on
syntax on

colorscheme evening 
set background=dark

set nocompatible      " Use Vim defaults.

" set expandtab         " Replace all tabs with with spaces.

set incsearch         " Incremental search.
set hlsearch 		  " Highlight matching search terms.
set noignorecase	  " Don't ignore case for searching.
set magic			  " Slightly better regex.

set autoindent        " always set autoindenting on

set ttyfast			  " Assume fast terminal connection.

set backspace=2       " Allow backspacing over everything in insert mode.

set number			  " By default number all lines.
set numberwidth=3     " Use 3 spaces for line numbers.

set foldcolumn=2      " Set a column for folds.
set foldlevel=0       " Show contents of all folds.
set foldmethod=syntax " Use syntax for folding.

set scrolloff=1       " Dont let the curser get too close to the edge.

set textwidth=79      " Wraps a line with a break after 79 chars.
set linebreak         " Display long lines as wrapped at word boundries.

set showmatch         " Show matching brackets.
set matchtime=4       " Time to flash the brack with showmatch.

set softtabstop=4     " Smaller tabs.
set tabstop=4		  " Smaller tabs.
set shiftwidth=4      " Use 4 space indentation for each step of auto indent.

set showmode 	   	  " Show if in Insert, Visual, Replace etc.
set showcmd           " Show (partial) command in status line.
set ruler             " Use a ruler on the bottom.
set wildmenu		 " Enable wildcard menu at bottom of vim.
set wildmode=longest,list " Complete to wild on tab, show list on second tab.

set nobackup          " Don't keep a backup file.

" Suffixes that get lower priority when doing tab completion for
" filenames. These are files I am not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer


"Keyboard Mappings
"noremap <C-P> :set invpaste paste?<CR>

set pastetoggle=<C-P>

map <C-N> :set invnumber<CR>

au BufWinLeave * mkview
au BufWinEnter * silent loadview
