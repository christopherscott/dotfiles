filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                " plugin manager
Plugin 'tpope/vim-fugitive'               " git
Plugin 'mileszs/ack.vim'                  " faster than grep
Plugin 'terryma/vim-multiple-cursors'     " Sublime-like multiple cursors

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

set t_Co=256                    " use 256 colors
set background=dark
colorscheme itg_flat
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE

" Basics
set nocompatible                " Use vim, no vi defaults
set number                      " line numbers
set ruler                       " show line and column number
syntax enable                   " turn on syntax highlighting
set encoding=utf-8              " set default encoding
" set mouse=a                   " use a mouse for all the things
set mouse=nicr                  " use a nicer mouse?

" Formatting
set nowrap                      " don't wrap lines
set tabstop=2                   " tab is 2 spaces
set shiftwidth=2                " tab movement
set expandtab                   " use spaces, not tabs
set list                        " show invisibles
set backspace=indent,eol,start  " backspace through everything in insert mode

" Listchars
" ==============================================================================
set listchars=""                " reset listchars
set listchars=tab:▸\            " a tab should display as "▸"
set listchars+=trail:·          " show trailing spaces as "·"
set listchars+=extends:◄        " The character to show in the last column when wrap is off and the line continues beyond the right of the screen when there is, like, a lot of text
set listchars+=precedes:►       " The character to show in the last column when wrap is off and the line continues beyond the right of the screen

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental seraching
set ignorecase                  " searches are case insensitive
set smartcase                   " ...unless they contain one capital letter

" Backup and swap files
set backupdir^=~/.vim/_backup// " where to put backup files
set directory^=~/.vim/_temp//   " where to put swap files

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee % > /dev/null

" Change cursor shape in different modes;
"
" for iTerm2 on OSX (or if using tmux integration)
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" for tmux running in iTerm2 on OSX.
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" vim.ack, use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

