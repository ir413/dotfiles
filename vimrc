"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent style
set shiftwidth=2                " two spaces per indent
set tabstop=2                   " number of spaces per tab in display
set softtabstop=2               " number of spaces per tab when inserting
set expandtab                   " substitute spaces for tabs

" Filetype
filetype indent on
syntax enable

" Display
set ruler                       " show cursor position
set nonumber                    " hide line numbers
set nolist                      " hide tabs and EOL chars
set showcmd                     " show normal mode commands as they are entered
set showmode                    " show editing mode in status (-- INSERT --)
set showmatch                   " flash matching delimiters

" Scrolling
set scrolljump=5                " scroll five lines at a time vertically
set sidescroll=10               " minumum columns to scroll horizontally

" Search
set nohlsearch                  " don't persist search highlighting
set incsearch                   " search with typeahead

" Indent
set autoindent                  " carry indent over to new lines

" Other
set noerrorbells                " no bells in terminal

set backspace=indent,eol,start  " enable backspace
set tags=tags;/                 " search up the directory tree for tags

set undolevels=1000             " number of undos stored
set viminfo='50,"50             " '=marks for x files, "=registers for x files

set modelines=0                 " disable modelines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Additional settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Splits navigation
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Line numbers
set nu

" New line at the end of files
set eol

" Refresh
set autoread
