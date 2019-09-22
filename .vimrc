" Needs to be first
set nocompatible


" Loading plugins and indentation
filetype plugin on
filetype indent on
syntax on


" --- General Settings ---
set backspace=indent,eol,start " Allows backspacing over everything in insert
set ruler                      " Show the cursor position all the time
set number                     " Show the line number
set relativenumber             " Show relative line jumps
set showcmd                    " Shows the command being typed
set incsearch                  " Complete search results as they're typed
set ignorecase                 " Case insensitive search
set smartcase                  " Unless literal upper case specified
set hlsearch                   " Highlight previous search results
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
set foldmethod=syntax          " Allow folding based on syntax highlighting
set nofoldenable               " Disable folding on startup


" --- Things to do with tabs ---
set tabstop=4                  " Tabs are 4 spaces
set shiftwidth=4               " Same as above
set smarttab                   " Replace inserted tabs with spaces
set softtabstop=0              " Disable this feature?
set expandtab                  " Actually convert tabs to spaces
set shiftround                 " Shifts always move to an indent location
set hidden                     " Allows having edited buffers open


" --- FileType specific handling ---
autocmd FileType gitcommit setlocal textwidth=72  " The proper size for commits
" au BufRead,BufNewFile *.launch set filetype=xml " Ros launch files
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 " 2 space for cpp :(


" --- Custom key remappings ---
" Remap escape to kj 
inoremap kj <Esc>
" Remap ctrl-v to paste correctly
inoremap <C-v> :set paste<Enter>+:set nopaste<Enter>

" Mappings to switch back and forth between buffers
nnoremap ] :bnext<CR>
nnoremap [ :bprevious<CR>

" Convenience things because I type too fast sometimes
:command W w
:command B b
:command Wq wq
:command Wqa wqa
:command Qa qa


" --- tpope/vim-pathogen ---
execute pathogen#infect() 
Helptags " Generate helptags every time, in case new plugins are installed


" --- vim-airline/vim-airline ---
let g:airline_powerline_fonts=1 " Fancy powerline symbols, needs patched font
let g:airline_detect_paste=1 " Detect paste mode
set laststatus=2 " Always show statusbar
let g:airline_theme='bubblegum' " Requires vim-airline/vim-airline-themes
let g:airline#extensions#tabline#enabled=1 " Enable tabline to show buffers
let g:airline#extensions#tabline#left_sep=' ' " Blank sep
let g:airline#extensions#tabline#left_alt_sep=' ' " Blank sep
let g:airline#extensions#tabline#formatter='unique_tail_improved' " Formatter


" --- w0rp/ale ---
let g:ale_sign_column_always=1 " Always show the sign column for sanity
let g:airline#extensions#ale#enabled=1 " Enable ALE integration in airline
let g:ale_fixers={ 'cpp': ['clang-format'], 'python': ['black'], }
let g:ale_c_clangformat_options='-style=Google'
let g:ale_c_parse_compile_commands=1
let g:ale_python_black_options='-l 80'
:command Format ALEFix

" --- christoomey/vim-tmux-navigator ---
" No settings needed.


" --- scrooloose/nerdtree ---
" No settings needed.


" --- jistr/vim-nerdtree-tabs ---
" No longer actively maintained, but good enough.

" Open / close NERDTree tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>


" --- scrooloose/nerdcommenter ---
let g:NERDSpaceDelims=1 " Add spaces after comment delimiters
let g:NERDCompactSexyComs=1 " Use compacy syntax for pretty multiline comments
let g:NERDDefaultAlign='left' " Align left instead of following code
let g:NERDCommentEmptyLines=1 " Allow commenting of empty lines


" --- ctrlpvim/ctrlp ---
let g:ctrlp_map='<c-p>' " Invoke commands with CTRL-P
let g:ctrlp_cmd='CtrlP' " Default command
let g:ctrlp_working_path_mode='ra' " Try to find the root folder.
let g:ctrlp_show_hidden=1 " Allow ctrlp to show hidden file
let g:ctrlp_by_filename=1 " Search by filename by default
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux


" --- airblade/vim-gitgutter ---
" No settings needed.


" --- Raimondi/delimitMate ---
" No settings needed.


" --- rafi/awesome-vim-colorschemes ---
" colorscheme wombat256mod
" set background=light " Use a dark background for vim

set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_bold=1
colorscheme gruvbox
set background=dark


" --- tpope/vim-fugitive ---
" No settings needed.


" --- SirVer/ultisnips ---
" let g:UltiSnipsExpandTrigger="<C-t>"
" let g:UltiSnipsJumpForwardTrigger="<C-f>"
" let g:UltiSnipsJumpBackwardTrigger="<C-g>"

" https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:ultisnips_python_style = "google"


" --- Valloric/YouCompleteMe ---
" https://clang.llvm.org/extra/clangd/Installation.html
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
