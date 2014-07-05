"Set space as leader
let mapleader=" "

"Custom commands"
"Makes W save as root"
command W :w !sudo tee %

"save and commit"
command C :!git commit -a

"perform pdflatex in command line"
command Comp :!pdflatex %

"set spell check on and default spell check language to British English"
set spell
let dialect='UK'

"settings for tab - turns tab in to four spaces"
set expandtab
set shiftwidth=4
set tabstop=4

"Turn on autoindent and smartindent
set autoindent
set smartindent


"search things"
"highlight search matches"
set hlsearch
"make searches consider case if it is included"
set smartcase
"case insensitive search by default"
set ignorecase
"set incremental search on"
set incsearch

"set color scheme"
syntax enable
set background=dark
colorscheme solarized

"set hybrid linenumbers"
set relativenumber
set number

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

"Set highlight to colour item under cursor differently from other matches
highlight CurSearch ctermbg=red
nnoremap <silent> N N:silent! call HighlightCurrentMatch()<CR>
nnoremap <silent> n n:silent! call HighlightCurrentMatch()<CR>

function! HighlightCurrentMatch()
    let col = col(".") - 1
    let endCol = searchpos(getreg("/"), "cne")[1] + 1
    let line = line(".")
    let matchPat = '/\%' . line . 'l\%>' . col . 'c\%<' . endCol . 'c/'
    echomsg matchPat

    3match none
    exe ':3match CurSearch ' . matchPat
endfunction

"Remove ex mode 
nnoremap Q <nop>

"remap to make it easier to turn search highlighting on and off
nnoremap <silent> <Leader>/ :nohlsearch<CR>

"Add full colour options for gnome-terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

"map zz to turn scroll on and off
nnoremap <leader>zz :let &scrolloff=999-&scrolloff<CR>

"Set Y to do what I would expect it to (i.e. yank till end of line)
nnoremap Y y$

"Set leader space to clear last search
nnoremap <leader> <space> = :let @/ = "" <CR>
 
"Set global flag as default for search and replace (i.e. replace all occurrences on the line by default
set gdefault

" maps leader b to insert \left and \right before matching pairs of braces
nmap <Leader>b i\left<Esc>%i\right<Esc>

" Shows incomplete commands in the lower right corner of screen
set showcmd
