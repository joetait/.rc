"Makes W save as root"
command W :w !sudo tee %

"save and commit"
command C :!git commit -a

"perform pdflatex in command line"
command Comp :!pdflatex %

"set default spell check language to British English"
let dialect='UK'

"settings for tab - turns tab in to four spaces"
set expandtab
set shiftwidth=4
set tabstop=4

"case insensitive search by default"
set ignorecase
