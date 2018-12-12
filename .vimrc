" Use Case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Stop certain movements from always going to the first character of a line
set nostartofline
 
"Display the cursor position on the last line of the screen or in the status line of a window
set ruler

" Raise a dialogue asking if you wish to save changed files
set confirm

" Enable use of a mouse for all modes
set mouse=a

" Set the command window height to 2 lines
set cmdheight=2

" Display line numbers on the left
set number

" Indentation setting for using X spaces instead of tabs
set shiftwidth=3
set softtabstop=3
set expandtab

" Key remaps
" Exit insert
inoremap jj <ESC>
