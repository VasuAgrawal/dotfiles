" Needs to be first
set nocompatible


" Loading plugins and indentation
filetype plugin on
filetype indent on
syntax on


" --- General Settings ---
set backspace=indent,eol,start " Allows backspacing over everything in insert
set ruler                      " Show the cursor position all the timeA
set number                     " Show the line number
set relativenumber             " Show relative line jumps
set showcmd                    " Shows the command being typed
set incsearch                  " Complete search results as they're typed
set ignorecase                 " Case insensitive search
set smartcase                  " Unless literal upper case specified
" set hlsearch                   " Highlight previous search results
set textwidth=80               " Text width forced to 80
set colorcolumn=+1             " Color the column after textwidth
set autoindent                 " Automatic indentation
" set complete-=i                " Don't search included files, only current
set showmatch                  " Show matching parens
set showmode                   " Shows the mode on the last line
set ttimeout                   " Timeout between adjacent keystrokes
set ttimeoutlen=50             " Timeout between adjacent keystrokes
set wildmenu                   " Enhanced command line completion
set autoread                   " Automatically read when file is changed
set autowrite                  " Automatically write when buffer changes
set encoding=utf-8             " Set encoding to utf8
set mouse=a                    " Enable the mouse in all modes
set t_Co=256                   " Number of terminal colors
" set background=dark            " Use a dark background for vim

" Things to do with tabs
set tabstop=4                  " Tabs are 4 spaces
set shiftwidth=4               " Same as above
set smarttab                   " Replace inserted tabs with spaces
set softtabstop=0              " Disable this feature?
set expandtab                  " Actually convert tabs to spaces
set shiftround                 " Shifts always move to an indent location


" --- Pathogen Plugin ---
execute pathogen#infect()
Helptags
