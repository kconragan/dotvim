"
" a .vimrc by Kai Conragan (kai.conragan@gmail.com) 
"   
"

" Map Leader
let mapleader = ","

" vimrc *******************************************************************

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Visuals *****************************************************************

set title           "Set window title
set scrolloff=5     "Number of lines visible above/below cursor
set sidescrolloff=2 "Preserve characters at right/left edges
set ruler           "Display current position of cursor
set cursorline      "Highlight current line
set nu              "Line Numbers"
set numberwidth=4   "Gutter width for line numbers
set shortmess=atI   "Abbreviate status messages
set cmdheight=2     "The commandbar height

"set guifont=DroidSansMonoDotted:h13

" Messaging & Sound *******************************************************
set shortmess=asToOWAI
set showcmd
set vb t_vb=   " no bell of any kind

