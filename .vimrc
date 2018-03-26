"====================
"General
"====================
syntax enable							" enable syntax highlighting
set autochdir                           " auto chdir to working directory
set backspace=indent,eol,start          " allow backspacing 
set magic                               " allow regular expressions

set ffs=unix,mac,dos                    " give preference to unix file format
set confirm                             " prompt if try to close unsaved buffer
set title                               " change default terminal's title
set visualbell                          " use visual bell instead of beep
set history=1000                        " save last 1000 commands
set undolevels=1000                     " allow upto 1000 undoes


"====================
"TABS & SPACES
"====================
set expandtab                           " <TAB> are replaces with <SP>
set tabstop=4                           " number of visual <SP> per <TAB>
set softtabstop=4                       " number of <SP> that replaces a <TAB>
set shiftwidth=4                        " number of spaces used for autoindent
set autoindent                          " handles automatically indenting
set shiftround                          " use multiples of shiftwidth for indent



"====================
"SEARCHING
"====================
set hlsearch                            " highlight searches
set incsearch                           " show searches as they are typed
set ignorecase                          " ignore case for searches
set smartcase                           " smart case search

" Remove highlight on searches
nnoremap ,<CR> :nohlsearch<cr>



"====================
"INTERFACE
"====================
set number                              " show line numbers
set relativenumber                      " Show relative line numbers
set cursorcolumn
set colorcolumn=82                      " mark the end of the 80 character mark
set showcmd                             " show last command in bottom bar

" Highlight current line number
highlight CursorLineNR ctermbg=white ctermfg=black

filetype indent on                      " load filetype-specific indent files
set wildmenu                            " visual autocomplete for cmd menu
set lazyredraw                          " redraw only when necessary
set showmatch                           " highlight matching [{()}]

set laststatus=2                        " make the status 2 lines long
set hid                                 " hide abandoned buffers
set mouse=a                             " enable mouse

set list                                " allow bol, eol, etc marking
set listchars=tab:»·,trail:·,eol:¬
set wrap
set textwidth=80



"====================
"FOLDING
"====================
set foldmethod=indent                   " fold based on indent level
set foldnestmax=10                      " max fold deapth of 10
set foldenable                          " enable folding
set foldlevelstart=10                   " start with fold level 10

" Use <space> to toggle folds
nnoremap <space> za



"====================
"Misc Mappings - Normal Mode
"====================

" Map <;> to <:> to reduce key presses
nnoremap ; :

" Display Directory Explorer
nnoremap ,d :vsplit<CR>:E<CR>:set colorcolumn=0<CR>:set nolist<CR>

" Fix indentation
nnoremap ,g gg=G

" Resize the Horizaonal Windows
nnoremap ,[ :resize -5<enter>
nnoremap ,] :resize +5<enter>

" Resize the vertical Windows
nnoremap ,{ :vertical resize -5<enter>
nnoremap ,} :vertical resize +5<enter>

" Save the buffer
nnoremap ,s :w<CR>

" Save and close Buffer
nnoremap ,q :x!<enter>

" Close buffer without saving
nnoremap ,Q :q!<enter>

" Horizantal Split
nnoremap ,h :sp<enter>
nnoremap ,H :sp 

" Vertical Split
nnoremap ,v :vsp<enter>
nnoremap ,V :vsp 

" Equalize all splits
nnoremap ,= <C-W>=<CR>

" Open up file for editing
nnoremap ,e :e 

" Move to the split to the left
nnoremap <C-h> <C-W>h

" Move to the split to the right
nnoremap <C-l> <C-W>l

" Move to the split above
nnoremap <C-j> <C-W>j

" Move to the split below
nnoremap <C-k> <C-W>k

" Jump to last edit
nnoremap ,l `.

" Jump to last edit and enter insert Mode
nnoremap ,L `.i

" Save a custom S<F6>ession
nnoremap ,M :mks 

" Save Session as Current filename
nnoremap ,m :mks <C-R>=expand("%:t:r")<CR>.session<CR>

" Enter Commandline Mode Easily
nnoremap ,c :!

"====================
"Misc Mappings - Insert Mode
"====================

" Autocomplete (
inoremap <silent>( ()<left>

" Autocomplete [
inoremap <silent>[ []<left>

" Autocomplete {
inoremap <silent>{ {}<left>

" Autocomplete <
abbrev <silent>< <><left>

" Autocomplete "
inoremap <silent>" ""<left>

" Autocomplete '
inoremap <silent>' ''<left>


"====================
"Abbreviations 
"====================

" Insert Date
iab xdate <c-r>=strftime("%B %d, %Y")
iab xtime <c-r>=strftime("%H:%M:%S")



"====================
"Functions
"====================

