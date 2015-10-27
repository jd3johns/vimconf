" Good vimrc resource
" https://wiki.archlinux.org/index.php/Vim/.vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Close the preview window when finished autocompleting
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" Automatically indent appropriately and use 4 spaces as a tab
filetype plugin indent on
set tabstop=4	" counts a tab as four spaces
set shiftwidth=4	" spaces in an autoindent
set expandtab	" use appropriate num. spaces to insert tab

" Set colour scheme
"syntax enable
"if has('gui_running') 
"    set background=light 
"else 
"    set background=dark 
"endif 
syntax on
let g:solarized_termcolors=16 
"set t_Co=16
set t_Co=256
set background=dark
colorscheme solarized

" Set line numbers
set number

"" HTML Settings
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Set paste
set pastetoggle=<F2>

" Custom vim configuration to make life easier on my hands and brain.
" Move through lines visually
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" Move through lines with a bigger step
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" Move between screen splits without the painful ctrl + w
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" Make tabbed sessions with 'vim -p file1 file2' and move between them
" with ease (rather than using the same finger)
nmap <C-l> gt
nmap <C-h> gT

