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

"search things"
"highlight search matches"
set hlsearch
"make searches consider case if it is included"
set smartcase
"case insensitive search by default"
set ignorecase
"set incremental search on"
set incsearch

"set colorscheme"
colorscheme evening

"set hybrid linenumbers"
set relativenumber
set number

"set clipboard so that I can copy and paste from and to other programs"
set clipboard=unnamed
