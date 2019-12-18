" Backspace functionality
set backspace=indent,eol,start

" Disable bell sound and screen flash
set noerrorbells
set vb t_vb=
set belloff=all

" Syntax Highlighting
syntax on

" Color Scheme
color evening

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

" Set the command window height to X lines
set cmdheight=3

" Display line numbers on the left
set number

" Indentation setting for using X spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

if has('gui_running')
    set guifont=Consolas:h11
endif

" Key remaps
" Set leader prefix <leader>
let mapleader="-"
" Set local leader prefix <localleader>
let maplocalleader="\\"
" Open vimrc for edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source(reload) vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Exit insert
inoremap jj <esc>
" Select a word
nnoremap <space> viw
" Move line down
nnoremap _ ddp
" Move line up
nnoremap + ddkP
" Surround word with [] in normal mode
nnoremap <leader>[ bhr[<esc>lea]<esc>
" Surround word with () in normal mode
nnoremap <leader>( bhr(<esc>lea)<esc>
" Surround word with {} in normal mode
nnoremap <leader>{ bhr{<esc>lea}<esc>
" Uppercase current word in insert mode
inoremap <c-u> <esc>viwUea
" Uppercase current word in normal mode
nnoremap <c-u> viwUe
" Running the lmake command
nnoremap <leader>b :wa<cr>:lmake<cr>:lopen<cr>
" Cycle through auto complete
inoremap <c-f> <c-p>
" Close the location list window
nnoremap <leader>l :lclose<cr>
" Indent/Unindent text in visual mode
vnoremap <TAB> >
vnoremap <S-TAB> <
" Indent/Unindent text in normal mode
nnoremap <TAB> >>
nnoremap <S-TAB> <<

"Insert-mode Abbreviations
iabbrev ifelse if ()<cr>{<cr><cr>}<cr>else<cr>{<cr><cr>}

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Set up make command
set makeprg=build

" Tab will show buffer list with :b 
"Special commands for finding files
":args vehicle.c vehicle.h car.c car.h jet.c jet.h jetcar.c jetcar.h
":b <Tab>       " offers all buffers in a menu
":b car<Tab>    " offers car.c car.h
":b *car<Tab>   " offers car.c jetcar.c car.h jetcar.h
":b .h<Tab>     " offers the *.h buffers
":b .c<Tab>     " offers the *.c buffers
":b ar.c<Tab>   " offers car.c jetcar.c
":b j*c<Tab>    " offers jet.c jetcar.c jetcar.h
"
set wildchar=<Tab> wildmenu wildmode=full
