"
" a .vimrc by Kai Conragan (kai.conragan@gmail.com) 
"   

" Break out of vi-compatible mode 
set nocompatible

" Map Leader
let mapleader = ","

" Vundle Settings *********************************************************

filetype off     " Automatically choose filetype
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage itself
Bundle 'gmarik/vundle'

" Github repositories
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'itspriddle/vim-jquery'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'leshill/vim-json'
Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'vim-scripts/snipmate-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'sjl/gundo.vim'
Bundle 'docunext/closetag.vim'
Bundle 'skammer/vim-css-color'
Bundle 'vim-scripts/Better-CSS-Syntax-for-Vim'

" vimrc *******************************************************************

map <leader>e :e! ~/.vim/vimrc<cr>             " Fast editing of the vimrc
autocmd! bufwritepost vimrc source ~/.vim/vimrc " Reload vimrc when saved 

" Visuals *****************************************************************

colorscheme solarized
if has('gui_running')
  set background=light
else
  set background=dark
endif
call togglebg#map("<F5>") " Easily toggle between light/dark
set guifont=DroidSansMonoSlashed:h13

set title           " Set window title
set scrolloff=5     " Number of lines visible above/below cursor
set sidescrolloff=2 " Preserve characters at right/left edges
set ruler           " Display current position of cursor
set cursorline      " Highlight current line
set nu              " Line Numbers"
set numberwidth=4   " Gutter width for line numbers
set shortmess=atI   " Abbreviate status messages
set cmdheight=2     " The commandbar height
set showmatch       " Show matching brackets/parenthesis


" Messaging & Sound *******************************************************
set shortmess=asToOWAI
set showcmd
set vb t_vb=   " No bell of any kind
set visualbell " Turn off audible bell

" Basic Syntax & Filetype Behavior *************************************** 
syntax on          " Enable syntax highlighting
filetype plugin on " Load plugins based on filetype
filetype indent on " Follow filetype indent rules

" Highlight unwanted characters
set listchars=tab:>-,trail:·,eol:$ 
nmap <silent> <leader>s :set nolist!<CR>

" Tabs & Line Spacing ****************************************************

"Set softtabstop to control how many columns vim uses when you hit Tab
"in insert mode. If softtabstop is less than tabstop and expandtab is
"not set, vim will use a combination of tabs and spaces to make up the
"desired spacing. If softtabstop equals tabstop and expandtab is not set, 
"vim will always use tabs. When expandtab is set, vim will always use the
"appropriate number of spaces.

set nowrap        "Don't wrap lines"
set autoindent    "Indent at the same level of the previous line"
set copyindent    "Use indentation from previous line
set expandtab     "Tab key in insert mode produces needed # of spaces
set tabstop=2     "Base column-count for tabs
set softtabstop=2 "Tab length in insert mode
set shiftwidth=2  "Number of columns text is indented with reindent ops

" History & Backups ******************************************************
set autoread     " Read a file changed from outside Vim
set hidden       " Allow unsaved buffers to be hidden
set history=1000 " Remember 100 lines of history
set undolevels=1000 "Many levels of undo
set nobackup     " Don't create backup files (already in Git, etc.)
set nowb         " Prevent automatic write backup
set noswapfile   " Don't leave swap files

" Searching & Browsing ***************************************************
set incsearch     "find as you type"
set ignorecase    "case insensitive search"
set smartcase     "case sensitive search when UC present"
set hlsearch      "Highlight search terms
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " Clear searches with the space key
noremap <F4> :set hlsearch! hlsearch?<CR> " Toggle search highlighting (but don't clear)

" Status Line ************************************************************
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [LINE=%04l/%L]\ [COL=%04v]\ [%p%%]
set laststatus=2

" Shorcuts ***************************************************************
nmap <leader>w :w!<cr> " Shortcut for saving files
map <S-Enter> O<ESC>   " Insert newline above current 
map <Enter> o<ESC>     " Insert newline below current

" Move a line of text using Comamnd+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
nmap <D-j> <M-j>
nmap <D-k> <M-k>
vmap <D-j> <M-j>
vmap <D-k> <M-k>

" map Ctrl-A and Ctrl-E *all* modes.
map  <C-A> <Home>
map  <C-E> <End>
map! <C-A> <Home>
map! <C-E> <End>
 
" Invisible characters ***************************************************
set listchars=trail:.,tab:>-,eol:$
set nolist
:noremap <Leader>i :set list!<CR> " Toggle invisible chars
:nnoremap <silent> <Leader>ii :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

set backspace=indent,eol,start " Intuitive backspacing in insert mode

" Custom Filetypes *******************************************************
au BufRead,BufNewFile *.md setfiletype markdown
au BufRead,BufNewFile *.less setfiletype css
au BufRead,BufNewFile *.mjt setfiletype html
au BufRead,BufNewFile *.page setfiletype html
au BufRead,BufNewFile *.template setfiletype html
au BufRead,BufNewFile *.sjs setfiletype javascript
au BufRead,BufNewFile *.controller setfiletype javascript
au BufRead,BufNewFile *.ajax set ft javascript
au! BufRead,BufNewFile *.json set filetype=json foldmethod=syntax
"
"Set softwrap for text files"
autocmd FileType text setlocal wrap linebreak textwidth=0
autocmd FileType markdown setlocal wrap linebreak textwidth=0

" Omni Completion ********************************************************
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

let g:SuperTabDefaultCompletionType = "context"

" Custom Functions *******************************************************


" Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS() " Call on save
