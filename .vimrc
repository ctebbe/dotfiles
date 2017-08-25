set nocompatible "use vim defaults
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'wincent/command-t'

call vundle#end()
filetype plugin indent on

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" syntastic
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_go_checkers = ['golint']

"general
set encoding=utf-8
set backspace=2 "full backspace capabilities
set history=100 "100 lines of command history
set cmdheight=1 "command line height
set number "show line numbers
set showmatch "show matching brackets
set nowrap "do not wrap text
set cc=120 "highlight the col at 80
set modelines=0 "prevents some security exploits
set timeout timeoutlen=1000 ttimeoutlen=100 " removes delay between switching modes 
set lz "do not re-draw while running macros for more speed
"set paste
set wildmenu
set wildmode=list:longest "use lists when completing
set hidden "allow movement between buffers without saving
set showmatch
set tabpagemax=100 " # open tabs
"set linebreak "wrap text when it hits screen edge
""set textwidth=120 "text formatted with a \n 

"coloschemes
set background=dark
"colorscheme kolor
"colorscheme sonoma
"colorscheme zenburn
" DEFAULTS "
"colorscheme torte
"colorscheme desert 
"colorscheme evening
"colorscheme calmar256
"colorscheme slate
"colorscheme twilight
"colorscheme elflord
syntax on "use syntax highlighting

set list lcs=tab:\|\ 

"searching
set hlsearch "highlight search results
set incsearch "increment search
set ignorecase "case-insensitive search
set smartcase "upper-case sensitive search

" tabbing -> spacing
set expandtab "insert spaces instead of tabs
set tabstop=2 " tab indent stops
set shiftwidth=2 "indent
set shiftround "use multiple of shiftwidth when indenting with '>'
set smarttab "insert tabs on start of line using shiftwidth, not tabstop
set softtabstop=2 "indent
set autoindent "auto indents based on previous lines indent
set copyindent "copy prev indent on auto-indenting
set scrolloff=5 "scroll buffer

autocmd Filetype go setlocal ts=8 sw=8 sts=0 expandtab

"status line & cursor customizations
set visualbell "sweet colors instead of annoying sounds
set cursorline "show line under cursor
set ruler "show cursor coords in status bar
set laststatus=2 "show status line on every window
set showcmd "display incomplete commands
set showmode "show mode in status bar

"backup handling
"set backup "enable backups
"set backupdir=~/.vim/backup "save backups here
set nobackup
set nowritebackup

" turn mouse on
"set mouse=a

"   ***keyboard shortcuts***
" can now just use ; for vim commands
nnoremap ; :
set pastetoggle=<F2>
let mapleader=" " "change mapleader from \ to ,
",ev to edit .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR> 
"clear search register
nnoremap <silent> <leader>/ :nohlsearch<CR> 

"quick yank to end of line
nnoremap Y y$

" yank/paste to/from OS clipboard with ,y and ,p
nnoremap <leader>y "+y
nnoremap <leader>Y "+yy
nnoremap <leader>p "+p
nnoremap <leader>P "+P

"tab movement
map <S-h> gT 
map <S-l> gt 
map <left> :tabp<CR>
map <right> :tabn<CR>
map <F12> :tabnew %<CR>

"use ,d to delete without putting into yank buffer
nnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>d "_d

"movement; dont use arrow keys in insert mode
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

"bracket matching/highlighting
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap [ []<Left>
inoremap { {}<Left>

"comments matching
inoremap /*<SPACE> /*<Space><Space>*/<Left><Left><Left>
inoremap /*<CR> /*<CR>*/<Esc>O

let g:netrw_liststyle=3
map <leader>j :Explore<cr>
